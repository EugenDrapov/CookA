unit frmExportSetup;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Forms, Dialogs, Controls, StdCtrls, 
  Buttons, sSkinProvider, sBitBtn, sGroupBox, ExtCtrls, sSplitter, sPanel, XMLIntf,
  ComCtrls, sRichEdit, sPageControl, sLabel, sListBox,  Ribbon, ToolWin, ActnMan, ActnCtrls, StdActns,
  ActnList, RibbonLunaStyleActnCtrls, sEdit, PlatformDefaultStyleActnCtrls,
  FIBQuery, pFIBQuery, sComboBox, System.Actions;

type
  TIXMLNodeWrap=class
  public
    Node:IXMLNode;
    constructor Create(aNode:IXMLNode);
    destructor Destroy; override;
  end;

  TFormExportSetup = class(TForm)
    SrcList: TListBox;
    DstList: TListBox;
    SrcLabel: TLabel;
    DstLabel: TLabel;
    IncludeBtn: TSpeedButton;
    IncAllBtn: TSpeedButton;
    ExcludeBtn: TSpeedButton;
    ExAllBtn: TSpeedButton;
    sPanel1: TsPanel;
    sSplitter1: TsSplitter;
    sPanel2: TsPanel;
    sGroupBox1: TsGroupBox;
    sPanel3: TsPanel;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sPanel4: TsPanel;
    sGroupBox2: TsGroupBox;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    Параметры: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sPanel5: TsPanel;
    BlocksListBox: TsListBox;
    ActionManager1: TActionManager;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    SearchReplace1: TSearchReplace;
    SearchFindFirst1: TSearchFindFirst;
    edtTemplate: TsEdit;
    ActionNew: TAction;
    ActionDelete: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Q1: TpFIBQuery;
    sPanel6: TsPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    cbPackets: TsComboBox;
    sPanel7: TsPanel;
    sPanel8: TsPanel;
    sLabel1: TsLabel;
    lblUid: TsLabel;
    ActionNewPacket: TAction;
    procedure IncludeBtnClick(Sender: TObject);
    procedure ExcludeBtnClick(Sender: TObject);
    procedure IncAllBtnClick(Sender: TObject);
    procedure ExcAllBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BlocksListBoxClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure ActionNewExecute(Sender: TObject);
    procedure ActionDeleteExecute(Sender: TObject);
    procedure cbPacketsCloseUp(Sender: TObject);
    procedure ActionNewPacketExecute(Sender: TObject);
  private
    FDoc: IXMLDocument;
    FSQLParams:TStringList;
    oldBlockIndex:integer;
    Tables:TStringList;
    procedure SetUID(aNode:IXMLNode);
  protected
    procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
    function GetBlock(Index:Integer):IXMLNode;
    procedure LoadControlsFromXML;
    procedure LoadBlock(Index:Integer);
    procedure ApplyBlock(Index:Integer);
    { Private declarations }
  public
    { Public declarations }

    procedure MoveSelected(List: TCustomListBox; Items: TStrings);
    procedure SetItem(List: TListBox; Index: Integer);
    function GetFirstSelection(List: TCustomListBox): Integer;
    procedure SetButtons;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  end;

var
  FormExportSetup: TFormExportSetup;

implementation

uses UnitDM, MainUnit, XMLDoc, Variants, StrUtils, FireDAC.Phys.Intf;

{$R *.dfm}

resourcestring
    txtSQLfields='';

procedure TFormExportSetup.IncludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(SrcList);
  MoveSelected(SrcList, DstList.Items);
  SetItem(SrcList, Index);
end;

procedure TFormExportSetup.LoadBlock(Index: Integer);
var
  block:IXMLNode;
  i,n:integer;
  s:string;
  Params:IXMLNode;
  ParList:IXMLNodeList;
  par:IXMLNode;
  sl:TStringList;
begin
  block:=GetBlock(Index);
  SetUID(block.ChildNodes['head']);
  s:=block.ChildValues['sql'];
  sl:=TStringList.Create;
  sl.Text:=s;
  //SynEdit1.Lines.Assign(sl);
  sl.Free;
  SrcList.Items.Assign(FSQLParams);
  Params:=block.ChildNodes['parameters'];
  if Assigned(Params) then
    begin
    ParList:=Params.ChildNodes;
    Par:=ParList.First;
    DstList.Clear;
    while Assigned(Par) do
      begin
        s:=Par.NodeValue;
        DstList.AddItem(s, nil);
        n:=SrcList.Items.IndexOf(s);
        if n>(-1) then
          SrcList.Items.Delete(n);
        Par:=Par.NextSibling;
      end;
    end;
  SetButtons;
  edtTemplate.Text:=block.ChildNodes['template'].NodeValue;
end;

procedure TFormExportSetup.LoadControlsFromXML;
var
  Root:IXMLNode;
  Node, Block:IXMLNode;
  i:Integer;
  s:string;
  os:OleVariant;
  guid:TGUID;
begin
  BlocksListBox.Items.Clear;
  Root:=FDoc.DocumentElement;
  for i:=0 to Root.ChildNodes.Count-1 do
    if Root.ChildNodes[i].NodeName='head' then
        begin
        SetUID(Root.ChildNodes[i]);
        os:=Root.ChildNodes[i].ChildValues['uid'];
        s:=VarToStr(os);
        lblUid.Caption:=s;
        end
    else if Root.ChildNodes[i].NodeName='blocks' then
        begin
        Node:=Root.ChildNodes[i];
        Block:=Node.ChildNodes.First;
        while Assigned(Block) do
          begin
          Node:=Block.ChildNodes.FindNode('head');
          if Assigned(Node) then
            begin
            s:=VarToStrDef(Node.ChildValues['descr'], '');
            end
          else
            begin
            s:='<No name>';
            Node:=Block.AddChild('head');
            Node.AddChild('descr').NodeValue:=s;
            SetUID(Node);
            end;
          BlocksListBox.Items.Append(s);
          Block:=Block.NextSibling;
          end;
        end;

  BlocksListBox.ItemIndex:=BlocksListBox.Count-1;
  LoadBlock(BlocksListBox.ItemIndex);
end;

procedure TFormExportSetup.ExcludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(DstList);
  MoveSelected(DstList, SrcList.Items);
  SetItem(DstList, Index);
end;

procedure TFormExportSetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caHide;
end;

procedure TFormExportSetup.IncAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to SrcList.Items.Count - 1 do
    DstList.Items.AddObject(SrcList.Items[I], 
      SrcList.Items.Objects[I]);
  SrcList.Items.Clear;
  SetItem(SrcList, 0);
end;

procedure TFormExportSetup.ActionChange(Sender: TObject;
  CheckDefaults: Boolean);
begin
  inherited;

end;

procedure TFormExportSetup.BlocksListBoxClick(Sender: TObject);
begin
  if (oldBlockIndex<>BlocksListBox.ItemIndex) and (oldBlockIndex > -1) then
    if MessageDlg('Применить изменения?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
      ApplyBlock(oldBlockIndex);
  LoadBlock(BlocksListBox.ItemIndex);
  oldBlockIndex:=BlocksListBox.ItemIndex;
end;

procedure TFormExportSetup.cbPacketsCloseUp(Sender: TObject);
begin
  FDoc:=TIXMLNodeWrap(cbPackets.Items.Objects[cbPackets.ItemIndex]).Node.OwnerDocument;
  LoadControlsFromXML;
end;

constructor TFormExportSetup.Create(AOwner: TComponent);
var
  FilePath:string;
  ndList:IXMLNodeCollection;
  node, head:IXMLNode;
  sr:TSearchRec;
begin
  inherited Create(AOwner);
  FilePath:=ExtractFileDir(Application.ExeName)+'\config\export';
  Tables:=TStringList.Create;
  //DM.pFIBDatabase1.GetTableNames(Tables, true);
  DM.FDConnection1.GetTableNames('','','', Tables,[osMy],[tkTable],true);
  //SynSQLSyn1.TableNames.Assign(Tables);
  FSQLParams:=TStringList.Create;
  oldBlockIndex:=-1;
  with FSQLParams do
  begin
  Add('StartDate');
  Add('FinalDate');
  Add('Departments.ID');
  Add('Warehouse.ID');
  end;
  cbPackets.Clear;
  if FindFirst(FilePath+'\*.xml', 0, sr)=0 then
    repeat
      try
        node:=LoadXMLDocument(FilePath+'\'+sr.Name).DocumentElement;
        if node.NodeName='packet' then
          begin
           // head:=node.ChildNodes.FindNode('head');
            cbPackets.Items.AddObject(node.ChildValues['descr'],
                TIXMLNodeWrap.Create(node));
          end;
      except

      end;
    until FindNext(sr)<>0;
    FindClose(sr);
    
end;

destructor TFormExportSetup.Destroy;
begin
  FreeAndNil(FSQLParams);
  FreeAndNil(Tables);
  inherited;
end;

procedure TFormExportSetup.ExcAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to DstList.Items.Count - 1 do
    SrcList.Items.AddObject(DstList.Items[I], DstList.Items.Objects[I]);
  DstList.Items.Clear;
  SetItem(DstList, 0);
end;

procedure TFormExportSetup.MoveSelected(List: TCustomListBox; Items: TStrings);
var
  I: Integer;
begin
  for I := List.Items.Count - 1 downto 0 do
    if List.Selected[I] then
    begin
      Items.AddObject(List.Items[I], List.Items.Objects[I]);
      List.Items.Delete(I);
    end;
end;

procedure TFormExportSetup.sBitBtn1Click(Sender: TObject);
begin
  ApplyBlock(BlocksListBox.ItemIndex);
  FDoc.SaveToFile(FDoc.FileName);
end;

procedure TFormExportSetup.ActionDeleteExecute(Sender: TObject);
var
   block:IXMLNode;
   parentlist:IXMLNodeList;
begin
  block:=GetBlock(BlocksListBox.ItemIndex);
  block.ParentNode.ChildNodes.Delete(block.ParentNode.ChildNodes.IndexOf(block));
  LoadControlsFromXML;
end;

procedure TFormExportSetup.ActionNewExecute(Sender: TObject);
var
  node, head:IXMLNode;
  guid:TGUID;
begin
  BlocksListBoxClick(nil);
  node:=FDoc.DocumentElement.ChildNodes['blocks'].AddChild('block');
  head:=node.AddChild('head');
  head.AddChild('descr').NodeValue:='New block';
  SetUID(head);
  node.AddChild('sql');
  node.AddChild('parameters');
  node.AddChild('template');
  LoadControlsFromXML;
end;

procedure TFormExportSetup.ActionNewPacketExecute(Sender: TObject);
var
  Root, Node, head:IXMLNode;
  descr:string;
begin
  sBitBtn1Click(nil);
  FDoc:=NewXMLDocument;
  FDoc.Encoding:='windows-1251';
  Root:=FDoc.CreateElement('packet', '');
  FDoc.DocumentElement:=Root;
  head:=Root.AddChild('head');
  SetUID(head);
  descr:=InputBox('Новый пакет', 'Название пакета','Untitled');
  head.AddChild('descr').NodeValue:=descr;
  Root.AddChild('blocks');
  FDoc.FileName:=DM.ExePath+'\config\export\'+Trim(descr)+'.xml';
  FDoc.Active;
end;

procedure TFormExportSetup.ApplyBlock(Index: Integer);
var
  block, head:IXMLNode;
  i:integer;
  s:string;
  Params:IXMLNode;
  par:IXMLNode;
begin
  block:=GetBlock(Index);
  //head
  head:=block.ChildNodes['head'];
  head.ChildNodes['descr'].NodeValue:=BlocksListBox.Items[Index];
  //sql
 // s:=SynEdit1.Text;
  block.ChildNodes['sql'].NodeValue:=s;
  //parameters
  Params:=block.ChildNodes['parameters'];
  if not Assigned(Params) then
    Params:=block.AddChild('parameters');
  Params.ChildNodes.Clear;
  for i := 0 to DstList.Count - 1 do
    begin
    Par:=Params.AddChild('par');
    Par.NodeValue:=DstList.Items[i];
    end;
  //template
  block.ChildNodes['template'].NodeValue:=edtTemplate.Text;
end;

procedure TFormExportSetup.SetButtons;
var
  SrcEmpty, DstEmpty: Boolean;
begin
  SrcEmpty := SrcList.Items.Count = 0;
  DstEmpty := DstList.Items.Count = 0;
  IncludeBtn.Enabled := not SrcEmpty;
  IncAllBtn.Enabled := not SrcEmpty;
  ExcludeBtn.Enabled := not DstEmpty;
  ExAllBtn.Enabled := not DstEmpty;
end;

function TFormExportSetup.GetFirstSelection(List: TCustomListBox): Integer;
begin
  for Result := 0 to List.Items.Count - 1 do
    if List.Selected[Result] then Exit;
  Result := LB_ERR;
end;

function TFormExportSetup.GetBlock(Index: Integer): IXMLNode;
begin
  Result:=FDoc.DocumentElement.ChildNodes['blocks'].ChildNodes[Index];
end;

procedure TFormExportSetup.SetItem(List: TListBox; Index: Integer);
var
  MaxIndex: Integer;
begin
  with List do
  begin
    SetFocus;
    MaxIndex := List.Items.Count - 1;
    if Index = LB_ERR then Index := 0
    else if Index > MaxIndex then Index := MaxIndex;
    Selected[Index] := True;
  end;
  SetButtons;
end;

procedure TFormExportSetup.SetUID(aNode: IXMLNode);
var
  guid:TGUID;
  nd:IXMLNode;
begin

  nd:=aNode.ChildNodes.FindNode('uid');
  if not Assigned(nd) then
    nd:=aNode.AddChild('uid');
  if VarToStrDef(nd.NodeValue, '')='' then
    begin
    CreateGUID(guid);
    nd.NodeValue:=GUIDToString(guid);
    end;
end;

{ TIXMLNodeWrap }

constructor TIXMLNodeWrap.Create(aNode: IXMLNode);
begin
  inherited Create;
  Node:=aNode;
end;

destructor TIXMLNodeWrap.Destroy;
begin
  Node:=nil;
  inherited;
end;

end.
