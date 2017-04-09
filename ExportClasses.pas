unit ExportClasses;

interface

uses XMLIntf, XMLDoc, Generics.Collections, Generics.Defaults, dbxjson;

type

  TBaseItem = class(TObject)
  private
    FChecked: boolean;
    FXMLNode: IXMLNode;
  protected
    procedure SetXMLNode(const Value: IXMLNode); virtual;
    function GetXMLNode: IXMLNode; virtual;
    procedure AddOrReplace(NodeName: string; NodeValue: OleVariant); virtual;
    function GetOrAdd(NodeName: string): OleVariant; virtual;
  public
    constructor Create; overload; virtual;
    constructor Create(ANode: IXMLNode); overload; virtual;
    constructor Create(aNodeName: string; OwnerDocument: IXMLDocument);
      overload; virtual;
    procedure RemoveSelf;
    property XMLNode: IXMLNode read GetXMLNode write SetXMLNode;
    property Checked: boolean read FChecked write FChecked;
  end;

  TPar = class(TBaseItem)
  public
    constructor Create; overload; override;
    constructor Create(ANode: IXMLNode); overload; override;
    constructor Create(OwnerDocument: IXMLDocument); overload; virtual;
  end;

  TBaseEnum<T: TBaseItem, constructor> = class(TObjectList<T>)
  private
    FEnableNodeSync: boolean;
    FXMLNode: IXMLNode;
    FChildNodesName: string;
  protected
    procedure Notify(const Value: T; Action: TCollectionNotification); override;
    procedure AddOrReplace(NodeName: string; NodeValue: OleVariant); virtual;
  public
    constructor Create(ANode: IXMLNode; aChildNodesName: string;
      aNodeName: string = ''); virtual;
    procedure ReloadList; virtual;
    property EnableNodeSync: boolean read FEnableNodeSync write FEnableNodeSync;
    property XMLNode: IXMLNode read FXMLNode;
  end;

  TParList = TBaseEnum<TPar>;

  TBlock = class(TBaseItem)
  private
    FParameters: TParList;
  protected
    function GetDescr: string; virtual;
    function GetTemplateFile: string; virtual;
    procedure SetDescr(const Value: string); virtual;
    procedure SetSql(const Value: string); virtual;
    procedure SetTemplateFile(const Value: string); virtual;
    function GetSql: string; virtual;
    procedure SetXMLNode(const Value: IXMLNode); override;
  public
    constructor Create(ANode: IXMLNode); overload; override;
    constructor Create(OwnerDocument: IXMLDocument); overload; virtual;
    constructor Create; overload; override;
    property Descr: string read GetDescr write SetDescr;
    property Sql: string read GetSql write SetSql;
    property Parameters: TParList read FParameters;
    property TemplateFile: string read GetTemplateFile write SetTemplateFile;
  end;

  TBlockList = TBaseEnum<TBlock>;

  TPacket = class(TBaseItem)
  private
    FBlocks: TBlockList;
    FXMLDoc: IXMLDocument;
  protected
    function GetDescr: string; virtual;
    procedure SetDescr(const Value: string); virtual;
    procedure SetXMLNode(const Value: IXMLNode); override;
  public
    constructor Create(ANode: IXMLNode); overload; override;
    constructor Create(aFileName: string); overload; virtual;
    property XMLDoc: IXMLDocument read FXMLDoc;
    property Descr: string read GetDescr write SetDescr;
    property Blocks: TBlockList read FBlocks;
  end;

  TPacketsList = class(TBaseEnum<TPacket>)
  public
    constructor Create(aDir: string); overload; virtual;
    procedure ReloadList; override;
  end;

  function FindOrAddNode(aNodeName: string; ANode: IXMLNode): IXMLNode;

implementation

uses SysUtils, StrUtil;

function FindOrAddNode(aNodeName: string; ANode: IXMLNode): IXMLNode;
begin
  Result := ANode.ChildNodes.FindNode(aNodeName);
  if not Assigned(Result) then
    Result := ANode.AddChild(aNodeName);
end;

constructor TBaseItem.Create(aNodeName: string; OwnerDocument: IXMLDocument);
begin
  FXMLNode := OwnerDocument.CreateElement(aNodeName, '');
end;

constructor TBaseItem.Create;
begin
  inherited;
  FXMLNode := nil;
end;

function TBaseItem.GetOrAdd(NodeName: string): OleVariant;
begin
  Result := FindOrAddNode(NodeName, FXMLNode).NodeValue;
end;

function TBaseItem.GetXMLNode: IXMLNode;
begin
  Result := FXMLNode;
end;

procedure TBaseItem.RemoveSelf;
begin
  if Assigned(FXMLNode.ParentNode) then
  begin
    FXMLNode.ParentNode.ChildNodes.Remove(FXMLNode);
  end;
  Free;
end;

procedure TBaseItem.SetXMLNode(const Value: IXMLNode);
begin
  FXMLNode := Value;
end;

procedure TBaseItem.AddOrReplace(NodeName: string; NodeValue: OleVariant);
begin
  FindOrAddNode(NodeName, FXMLNode).NodeValue := NodeValue;
end;

constructor TBaseItem.Create(ANode: IXMLNode);
begin
  Create;
  FChecked := true;
  FXMLNode := ANode;
end;

{ TPacket }

constructor TPacket.Create(ANode: IXMLNode);
begin
  inherited Create(ANode);
  FXMLDoc := ANode.OwnerDocument;
  FBlocks := TBlockList.Create(ANode, 'block', 'blocks');
end;

constructor TPacket.Create(aFileName: string);
var
  Doc: IXMLDocument;
begin
  if FileExists(aFileName) then
    Doc := LoadXMLDocument(aFileName)
  else
  begin
    Doc := NewXMLDocument;
    Doc.DocumentElement := Doc.CreateElement('packet', '');
    Doc.DocumentElement.AddChild('descr');
    Doc.FileName := aFileName;
  end;
  Create(Doc.DocumentElement);
end;

function TPacket.GetDescr: string;
begin
  Result := GetOrAdd('descr');
end;

procedure TPacket.SetDescr(const Value: string);
begin
  AddOrReplace('descr', Value);
end;

procedure TPacket.SetXMLNode(const Value: IXMLNode);
begin
  inherited;
  if Assigned(FBlocks) then
    begin
    FBlocks.FEnableNodeSync:=false;
    FBlocks.Free;
    end;
  FBlocks:=TBlockList.Create(FXMLNode, 'block', 'blocks');
end;

{ TPacketsList }

constructor TPacketsList.Create(aDir: string);
var
  sr: TSearchRec;
  packet: IXMLNode;
  PackItem:TPacket;
begin
  inherited Create(nil, '', '');
  FEnableNodeSync:=false;
  if FindFirst(aDir + '\*.xml', 0, sr) = 0 then
    repeat
      packet := LoadXMLDocument(aDir + '\'+sr.Name).DocumentElement;
      if packet.NodeName='packet' then
        begin
        PackItem:=TPacket.Create(packet);
        Add(PackItem);
        end;
    until FindNext(sr) <> 0;
    FindClose(sr);
  FEnableNodeSync:=true;
end;

{ TBaseEnum }

procedure TBaseEnum<T>.AddOrReplace(NodeName: string; NodeValue: OleVariant);
var
  Node: IXMLNode;
begin
  Node := FXMLNode.ChildNodes.FindNode(NodeName);
  if not Assigned(Node) then
    Node := FXMLNode.AddChild(NodeName);
  Node.NodeValue := NodeValue;
end;

constructor TBaseEnum<T>.Create(ANode: IXMLNode; aChildNodesName: string;
  aNodeName: string = '');
begin
  inherited Create;
  FXMLNode := ANode;
  FChildNodesName := aChildNodesName;
  FEnableNodeSync := true;
  if Assigned(ANode) then
    if ANode.NodeType = ntDocument then
      FXMLNode := (ANode as IXMLDocument).CreateElement(aNodeName, '')
    else
      begin
      FXMLNode:=FindOrAddNode(aNodeName, ANode);
      ReloadList;
      end;
end;

procedure TBaseEnum<T>.Notify(const Value: T; Action: TCollectionNotification);
begin
  if FEnableNodeSync then
    case Action of
      cnAdded:
        FXMLNode.ChildNodes.Add(Value.XMLNode);
      cnRemoved, cnExtracted:
        Value.RemoveSelf;
    end;
  inherited;
end;

procedure TBaseEnum<T>.ReloadList;
var
  Node: IXMLNode;
  rf: boolean;
  obj: T;
begin
  rf := FEnableNodeSync;
  FEnableNodeSync := false;
  Clear;
  if Assigned(FXMLNode) then
  begin
    Node := FXMLNode.ChildNodes.First;
    while Assigned(Node) do
    begin
      if IsEmptyStr(FChildNodesName) or SameStr(Node.NodeName, FChildNodesName)
        then
      begin
        obj := T.Create;
        obj.XMLNode := Node;
        Add(obj);
      end;
      Node := Node.NextSibling;
    end;
  end;
  FEnableNodeSync := rf;
end;

procedure TPacketsList.ReloadList;
begin
  inherited;
end;

{ TParameter }

constructor TPar.Create(ANode: IXMLNode);
begin
  inherited;
end;

constructor TPar.Create(OwnerDocument: IXMLDocument);
begin
  inherited Create('par', OwnerDocument);
end;

{ TBlock }

constructor TBlock.Create(ANode: IXMLNode);
var
  ParamsNode: IXMLNode;
begin
  inherited;
  FParameters := TParList.Create(FindOrAddNode('parameters',FXMLNode), 'par');
end;

constructor TBlock.Create(OwnerDocument: IXMLDocument);
var
  ParamsNode: IXMLNode;
begin
  inherited Create('block', OwnerDocument);
  FXMLNode.AddChild('descr');
  FXMLNode.AddChild('sql');
  ParamsNode := FXMLNode.AddChild('parameters');
  FXMLNode.AddChild('template');
  FParameters := TParList.Create(ParamsNode, 'par');
end;

constructor TBlock.Create;
begin
  inherited;
end;

function TBlock.GetDescr: string;
begin
  Result := FXMLNode.ChildValues['descr'];
end;

function TBlock.GetSql: string;
begin
  Result := FXMLNode.ChildValues['sql'];
end;

function TBlock.GetTemplateFile: string;
begin
  Result := FXMLNode.ChildValues['template'];
end;

procedure TBlock.SetDescr(const Value: string);
begin
  AddOrReplace('descr', Value);
end;

procedure TBlock.SetSql(const Value: string);
begin
  AddOrReplace('sql', Value);
end;

procedure TBlock.SetTemplateFile(const Value: string);
begin
  AddOrReplace('template', Value);
end;

procedure TBlock.SetXMLNode(const Value: IXMLNode);
begin
  inherited;
  if Assigned(FParameters) then
    begin
    FParameters.FEnableNodeSync:=false;
    FParameters.Free;
    end;
  FParameters:=TParList.Create(FXMLNode, 'par', 'parameters');

end;

constructor TPar.Create;
begin
  inherited Create;
end;

begin
end.
