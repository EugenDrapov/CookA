unit UnitReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ComCtrls, sTreeView, ExtCtrls, sPanel,
  sSkinProvider, Generics.Collections, ToolWin, sToolBar, ImgList,
  acAlphaImageList, sFrameAdapter, sScrollBar, ActnList, xmldom, XMLIntf,
  msxmldom, XMLDoc, Menus, sMemo, sSplitter, frxVariables;

type
  TNodeKind=(nkFolder, nkReport);

  TSchemaNode=class(TPersistent)
    constructor Create(ANode:TTreeNode; xmlNode:IXMLNode; Kind:TNodeKind=nkFolder);
  private
    FNode: TTreeNode;
    FXMLNode:IXMLNode;
    procedure SetCaption(const Value: string);
    procedure SetHint(const Value: string);
    procedure SetNodeKind(const Value: TNodeKind);
    procedure SetReportFile(const Value: string);
    function GetCaption: string;
    function GetHint: string;
    function GetNodeKind: TNodeKind;
    function GetReportFile: string;
  public
    property Node:TTreeNode read FNode write FNode;
    property XMLNode:IXMLNode read FXMLNode write FXMLNode;
    property Caption:string read GetCaption write SetCaption;
    property Hint:string read GetHint write SetHint;
    property NodeKind:TNodeKind read GetNodeKind write SetNodeKind;
    property ReportFile:string read GetReportFile write SetReportFile;
  end;

  TFrameReports = class(TFrame)
    sPanel2: TsPanel;
    ReportsTree: TsTreeView;
    sToolBar1: TsToolBar;
    sAlphaImageList1: TsAlphaImageList;
    ActionList1: TActionList;
    ActionRepAddNode: TAction;
    ActionRepDelNode: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ActionRepEdit: TAction;
    ActionRepCancelRefresh: TAction;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    XMLDocument1: TXMLDocument;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ActionAddNodeGrp: TAction;
    ActionAddNodeRep: TAction;
    sPanel1: TsPanel;
    HintMemo: TsMemo;
    sFrameAdapter2: TsFrameAdapter;
    procedure ReportsTreeGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure ActionRepEditExecute(Sender: TObject);
    procedure ActionRepAddNodeGrpExecute(Sender: TObject);
    procedure ActionRepDelNodeExecute(Sender: TObject);
    procedure ActionRepCancelRefreshExecute(Sender: TObject);
    procedure ActionRepApplyExecute(Sender: TObject);
    constructor Create(AOwner:TComponent);override;
    procedure ActionAddNodeRepExecute(Sender: TObject);
    procedure ReportsTreeClick(Sender: TObject);
    procedure ReportsTreeDblClick(Sender: TObject);
  private
    FExtVariable: TfrxVariables;
    procedure SetExtVariable(const Value: TfrxVariables);
    { Private declarations }
  public
    { Public declarations }
    procedure Load;
    procedure Save;
  published
    property ExtVariables:TfrxVariables read FExtVariable write SetExtVariable;
  end;

const
  ConfFileName='Config\ReportsConfig.xml';

var
  FrameReports: TFrameReports;
  ConfFilePath:string;

implementation

uses UnitFormRepNodeEdit, UnitDM, MainUnit;

{$R *.dfm}

{ TSchemaNode }

constructor TSchemaNode.Create(ANode:TTreeNode; xmlNode:IXMLNode; Kind:TNodeKind=nkFolder);
var
  nd:IXMLNode;
begin
  inherited Create;
  FNode := ANode;
  FXMLNode := xmlNode;
  if ANode <> nil then
    ANode.Data := Self;
  if not Assigned(FXMLNode) then
    if Assigned(ANode.Parent) then
    begin
      nd := TSchemaNode(ANode.Parent.Data).XMLNode;
      if Kind = nkFolder then
        FXMLNode := nd.AddChild('Folder')
      else
        FXMLNode := nd.AddChild('Report');
      FXMLNode.AttributeNodes.Add(FXMLNode.OwnerDocument.CreateNode
          ('Caption', ntAttribute, ''));
      FXMLNode.AttributeNodes.Add(FXMLNode.OwnerDocument.CreateNode
          ('Hint', ntAttribute, ''));
    end;
  FNode.Text := FXMLNode.Attributes['Caption'];
  if (FXMLNode.NodeName = 'Folder') or (FXMLNode.NodeName = 'ReportsTree') then
  begin
    FNode.ImageIndex := 0;
    FNode.ExpandedImageIndex := 1;
    FNode.SelectedIndex := 0;
  end
  else
  begin
    FNode.ImageIndex := 2;
    FNode.SelectedIndex := 3;
    FNode.ExpandedImageIndex := 2;
  end;

end;


{ TFormRegisterReports }

procedure TFrameReports.ActionAddNodeRepExecute(Sender: TObject);
var node:TTreeNode;
    sch:TSchemaNode;
begin
  node:=ReportsTree.Items.AddChildObject(ReportsTree.Selected,'Новый отчет', nil);
  sch:=TSchemaNode.Create(node, nil, nkReport);
  ReportsTree.Select(node);
  ActionRepEdit.Execute;
end;

procedure TFrameReports.ActionRepAddNodeGrpExecute(Sender: TObject);
var node:TTreeNode;
    sch:TSchemaNode;
begin
  node:=ReportsTree.Items.AddChildObject(ReportsTree.Selected,'Новый отчет', nil);
  sch:=TSchemaNode.Create(node, nil, nkFolder);
  ReportsTree.Select(node);
  ActionRepEdit.Execute;
end;

procedure TFrameReports.ActionRepApplyExecute(Sender: TObject);
begin
  Save;
end;

procedure TFrameReports.ActionRepCancelRefreshExecute(Sender: TObject);
begin
  Load;
end;

procedure TFrameReports.ActionRepDelNodeExecute(Sender: TObject);
var
  node:TTreeNode;
  sch:TSchemaNode;
  nd:IXMLNode;
begin
  node:=ReportsTree.Selected;
  if MessageDlg('Вы действительно хотите удалить отчет?',
                 mtConfirmation, [mbNo,mbYes], 0)=mrNo then
      Exit;
  if node <> nil then
    begin
    if node.Data <> nil then
      begin
      sch:=TSchemaNode(node.Data);
      nd:=sch.FXMLNode.ParentNode;
      nd.ChildNodes.Remove(sch.FXMLNode);
      sch.Free;
      end;
    ReportsTree.Items.Delete(node);
    end;
end;

procedure TFrameReports.ActionRepEditExecute(Sender: TObject);
var EF:TFormRepNodeEdit;
    node:TTreeNode;
begin
  node:=ReportsTree.Selected;
  if node.Data=nil then
      node.Data:=TSchemaNode.Create(node, nil);
  EF:=TFormRepNodeEdit.Create(Self);
  EF.Node:=TSchemaNode(node.Data);
  EF.ShowModal;
  ReportsTree.Invalidate;
end;

constructor TFrameReports.Create(AOwner: TComponent);
begin
  inherited;
  XMLDocument1.FileName:=ConfFilePath;
  XMLDocument1.Active:=True;
end;

procedure TFrameReports.Load;
var
    xmlRoot:IXMLNode;
    procedure LoadLevel(xmlRoot:IXMLNode; ParentNode:TTreeNode);
    var
      CurNode:TTreeNode;
      sch:TSchemaNode;
      i:integer;
      xmlNode:IXMLNode;
    begin
      sch:=TSchemaNode.Create(ParentNode, xmlRoot);
      for i := 0 to  xmlRoot.ChildNodes.Count- 1 do
        begin
        xmlNode:=xmlRoot.ChildNodes[i];
        if xmlNode.NodeType=ntElement then
          begin
          CurNode:=ParentNode.Owner.AddChild(ParentNode, '');
          LoadLevel(xmlNode,CurNode);
          end;
        end;
    end;
//main body
begin
  with ReportsTree do
  begin
    Items.Clear;
    xmlRoot:=XMLDocument1.DocumentElement;
    LoadLevel(xmlRoot, Items.AddChild(nil, ''));
  end;
end;

procedure TFrameReports.Save;
begin

end;

procedure TFrameReports.SetExtVariable(const Value: TfrxVariables);
begin
  FExtVariable := Value;
end;

procedure TFrameReports.ReportsTreeClick(Sender: TObject);
begin
  HintMemo.Clear;
  HintMemo.Lines.Text:=TSchemaNode(ReportsTree.Selected.Data).Hint;
end;

procedure TFrameReports.ReportsTreeDblClick(Sender: TObject);
var
  Report:string;
  sch:TSchemaNode;
begin
  sch:=TSchemaNode(ReportsTree.Selected.Data);
  if sch<>nil then
  begin
    Report:=sch.ReportFile;
    if FileExists(Report) then
      with DM do
      begin
      frxReport1.Clear;
      frxReport1.FileName:=Report;
      frxReport1.LoadFromFile(Report);
      if frxReport1.Script.FindClass('TFrameReports')=nil then
        frxReport1.Script.AddClass(TFrameReports,'TFrame');
      frxReport1.Script.AddObject('FrameReports', Self);
      with frxReport1.Variables do
      begin
        AddVariable('V','BeginPeriod', QuotedStr(DateToStr(FormMain.DateTimePicker1.Date)));
        AddVariable('V','EndPeriod', QuotedStr(DateToStr(FormMain.DateTimePicker2.Date)));
        AddVariable('V','dep_id', DM.Departments.FieldValues['id']);
      end;
      frxReport1.EngineOptions.DestroyForms:=false;
      frxReport1.ShowReport;
      end;
  end;
end;

procedure TFrameReports.ReportsTreeGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  if Node.Expanded then
    Node.SelectedIndex:=Node.ExpandedImageIndex
  else
    Node.SelectedIndex:=Node.SelectedIndex;
end;

function TSchemaNode.GetCaption: string;
begin
  Result:=FXMLNode.Attributes['Caption'];
end;

function TSchemaNode.GetHint: string;
begin
  Result:=FXMLNode.Attributes['Hint'];
end;

function TSchemaNode.GetNodeKind: TNodeKind;
var S:string;
begin
  S:=FXMLNode.NodeName;
  if (S='ReportsTree') or (S='Folder') then
    Result:=nkFolder
  else if S='Report' then
    Result:=nkReport
  else
    Result:=nkFolder;
end;

function TSchemaNode.GetReportFile: string;
begin
  if FXMLNode.HasAttribute('ReportFile') then
    Result:=FXMLNode.Attributes['ReportFile'];
end;

procedure TSchemaNode.SetCaption(const Value: string);
begin
  XMLNode.Attributes['Caption']:=Value;
  Node.Text:=Value;
end;

procedure TSchemaNode.SetHint(const Value: string);
begin
  XMLNode.Attributes['Hint']:=Value;
end;

procedure TSchemaNode.SetNodeKind(const Value: TNodeKind);
var
  nd:IXMLNode;
begin
    {
    if FXMLNode.NodeName<>'ReportsTree' then
        case Value of
          nkFolder:
              begin
              nd:=XMLNode.AttributeNodes.FindNode('ReportFile');
              XMLNode.AttributeNodes.Remove(nd);
              XMLNode.NodeName:='Folder';
              Node.ImageIndex:=0;
              end;
          nkReport:
              begin
              if not XMLNode.HasAttribute('ReportFile') then
                begin
                nd:=XMLNode.OwnerDocument.CreateNode('ReportFile', ntAttribute);
                XMLNode.AttributeNodes.Add(nd);
                XMLNode.NodeName:='Report';
                Node.ImageIndex:=2;
                end;
              end;
        end;
  }
end;

procedure TSchemaNode.SetReportFile(const Value: string);
begin
  XMLNode.Attributes['ReportFile']:=Value;
end;

begin
  ConfFilePath:=ExtractFilePath(Application.ExeName)+ConfFileName;
end.
