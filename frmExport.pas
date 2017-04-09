unit frmExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, Buttons, sBitBtn, ExtCtrls, sSplitter, sListBox,
  sCheckListBox, sGauge, sGroupBox, sPanel, ComCtrls, sStatusBar,
  XMLIntf, XMLDoc, ImgList, acAlphaImageList, xmldom, msxmldom, sTreeView,
  ExportClasses, UnitExportEngine;

type
  TFormExport = class(TForm)
    sStatusBar1: TsStatusBar;
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    sSplitter1: TsSplitter;
    sPanel2: TsPanel;
    sBitBtn1: TsBitBtn;
    edtDir: TsEdit;
    sGroupBox4: TsGroupBox;
    sBitBtn2: TsBitBtn;
    sTreeView1: TsTreeView;
    ImageList1: TImageList;
    ImageList2: TImageList;
    sGauge1: TsGauge;
    procedure LoadNode(Item:TBaseItem; aParentNode:TTreeNode; aTreeNodes:TTreeNodes);
    procedure sTreeView1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FExport:TExport;
    FPacketList:TPacketsList;
    procedure DoCheckedChange(aNode:TTreeNode; aChecked:boolean);
    procedure ToggleCheck(Node:TTreeNode; aUncheck, aCheck:integer);
  public
    { Public declarations }
    procedure Load(aTreeNodes:TTreeNodes);
    procedure DoExport;
  end;

const
  icUncheck=1;
  icCheck=2;

var
  FormExport: TFormExport;

implementation

uses UnitDM, MainUnit, StrUtil;

{$R *.dfm}

{ TBaseItem }


{ TFormExport }

procedure TFormExport.DoCheckedChange(aNode: TTreeNode; aChecked: boolean);
var
  item:TBaseItem;
  i:integer;
begin
  item:=TBaseItem(aNode.Data);
  if Assigned(item) then
    begin
    item.Checked:=aChecked;
    end;
  for i := 0 to aNode.Count-1 do
    begin
    if aChecked then
      aNode.Item[i].StateIndex:=icCheck
    else
      aNode.Item[i].StateIndex:=icUncheck;
    DoCheckedChange(aNode.Item[i], aChecked);
    end;
end;

procedure TFormExport.DoExport;
var
  Packet:TPacket;
begin

  for Packet in FPacketList do
    begin
      FExport.Packet:=Packet;
    end;
end;

procedure TFormExport.FormCreate(Sender: TObject);
begin
  FPacketList:=TPacketsList.Create(DM.ExePath+'\config\export');
  sTreeView1.Items.Clear;
  Load(sTreeView1.Items);
  FExport:=TExport.Create;
  with FExport.QryParams do
    begin
    ParamByName('StartDate').Value:='';
    end;
end;

procedure TFormExport.Load(aTreeNodes: TTreeNodes);
var
  Packet:TPacket;
  Node:TTreeNode;
begin
  Node:=aTreeNodes.AddChildFirst(nil, 'Пакеты');
  Node.StateIndex:=-1;
  Node.ImageIndex:=-1;
  Node.SelectedIndex:=-1;
  for Packet in FPacketList do
    LoadNode(Packet, Node, aTreeNodes);
end;

procedure TFormExport.LoadNode(Item: TBaseItem; aParentNode: TTreeNode; aTreeNodes:TTreeNodes);
var
  Node:TTreeNode;
  Packet:TPacket;
  Block:TBlock;
  Par:TPar;
begin
  Node:=aTreeNodes.AddChildObject(aParentNode, '', Item);
  if Item.Checked then
    Node.StateIndex:=icCheck
  else
    Node.StateIndex:=icUncheck;

  if Item is TPacket then
    begin
    Packet:=Item as TPacket;
    Node.Text:=Packet.Descr;
    Node.ImageIndex:=0;
    for Block in Packet.Blocks do
      LoadNode(Block, Node, aTreeNodes);
    end
  else if Item is TBlock then
    begin
    Block:=Item as TBlock;
    Node.Text:=Block.Descr;
    Node.ImageIndex:=1;
  {  for Par in Block.Parameters do
      LoadNode(Par, Node, aTreeNodes);
    end;
  else if Item is TPar then
    begin
    Par:=Item as TPar;
    Node.Text:=Par.XMLNode.NodeValue;
    Node.ImageIndex:=-1;
    end;}
    end;
    Node.SelectedIndex := Node.ImageIndex;
end;

procedure TFormExport.sTreeView1Click(Sender: TObject);
var
  P:TPoint;
begin
  GetCursorPos(P);
  with Sender as TTreeView do
    begin
    P := ScreenToClient(P);
    if (htOnStateIcon in GetHitTestInfoAt(P.X,P.Y)) then
      ToggleCheck(Selected, icUncheck, icCheck);
    end;

end;

procedure TFormExport.ToggleCheck(Node: TTreeNode; aUncheck, aCheck: integer);
var
  Chk:boolean;
  Child:TTreeNode;
  i:integer;
begin
  if Assigned(Node) then
    begin
    if Node.StateIndex = aUncheck then
      begin
      Node.StateIndex := aCheck;
      Chk:=true;
      end
    else if Node.StateIndex = aCheck then
      begin
      Node.StateIndex := aUnCheck;
      Chk:=false;
      end;
    DoCheckedChange(Node, Chk);
    end;
end;

end.
