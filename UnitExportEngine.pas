unit UnitExportEngine;

interface

uses pFIBDatabase, FIBQuery, pFIBQuery, Classes, XMLIntf, XMLDoc, ExportClasses;

type

  TExport=class(TObject)
  private
    FQry:TpFIBQuery;
    FDoc:IXMLDocument;
    Fxml:IXMLDocument;
    FDataBase: TpFIBDatabase;
    FQryParams: TFIBXSQLDA;
    FPacket: TPacket;
    function MakeDatasetDOM:IXMLDocument;
    function Transform(srcNode, dstRoot:IXMLNode; trFile:string):IXMLNode;
    procedure SetDataBase(const Value: TpFIBDatabase);
    function GetResultXML: IXMLDocument;
    function CloneNodeToDoc(const SourceNode: IXMLNode; const TargetDoc: IXMLDocument;
                            Deep: Boolean = True): IXMLNode;
    procedure SetPacket(const Value: TPacket);
  public
    property DataBase:TpFIBDatabase read FDataBase write SetDataBase;
    property ResultXMLDoc:IXMLDocument  read GetResultXML;
    property QryParams:TFIBXSQLDA read FQryParams;
    property Packet:TPacket read FPacket write SetPacket;
    //property ProgressBar:tcustomprogressbar;
    constructor Create; virtual;
    procedure Generate;
  end;

implementation

uses SysUtils, ComObj, ActiveX, Variants, VarUtils, VariantRtn, msxml;

{ TExport }

function TExport.CloneNodeToDoc(const SourceNode: IXMLNode;
  const TargetDoc: IXMLDocument; Deep: Boolean): IXMLNode;
var
  I: Integer;
begin
  with SourceNode do
    case nodeType of
      ntElement:
        begin
          Result := TargetDoc.CreateElement(NodeName, NamespaceURI);
          for I := 0 to AttributeNodes.Count - 1 do
            Result.AttributeNodes.Add(CloneNodeToDoc(AttributeNodes[I], TargetDoc, False));
          if Deep then
            for I := 0 to ChildNodes.Count - 1 do
              Result.ChildNodes.Add(CloneNodeToDoc(ChildNodes[I], TargetDoc, Deep));
        end;
      ntAttribute:
        begin
          Result := TargetDoc.CreateNode(NodeName, ntAttribute, NamespaceURI);
          Result.NodeValue := NodeValue;
        end;
      ntText, ntCData, ntComment:
          Result := TargetDoc.CreateNode(NodeValue, NodeType);
      ntEntityRef:
          Result := TargetDoc.createNode(nodeName, NodeType);
      ntProcessingInstr:
          Result := TargetDoc.CreateNode(NodeName, ntProcessingInstr, NodeValue);
      ntDocFragment:
        begin
          Result := TargetDoc.CreateNode('', ntDocFragment);
          if Deep then
            for I := 0 to ChildNodes.Count - 1 do
              Result.ChildNodes.Add(CloneNodeToDoc(ChildNodes[I], TargetDoc, Deep));
        end;
      else
       {ntReserved, ntEntity, ntDocument, ntDocType:}
        XMLDocError('Invalid node type');
    end;

end;

constructor TExport.Create;
var
  xmlStr:TStringStream;
begin
  inherited Create;
  FQry:=nil;
  FQryParams:=TFIBXSQLDA.Create(true);
end;

procedure TExport.Generate;
var
  i,j:Integer;
  Block:TBlock;
  Par:TPar;
  TmpDoc:IXMLDocument;
  nm:string;
  TemplateFile:string;
begin
  FDoc:=NewXMLDocument;
  FDoc.AddChild('export');
  for Block in Packet.Blocks do
    if Block.Checked then
    begin
      FQry:=TpFIBQuery.Create(nil);
      FQry.Database:=FDataBase;
      FQry.SQL.Text:=Block.Sql;
      TemplateFile:=ExtractFileDir(Packet.XMLDoc.FileName)+'\'+Block.TemplateFile;
      //<< transformation
      if Assigned(FQry) and FileExists(TemplateFile) then
        begin
        FQry.Prepare;
        //assign params
        FQry.Params.AssignValues(FQryParams);
        FQry.ExecQuery;
        TmpDoc:=MakeDatasetDOM;
        FQry.Free;
        Transform(TmpDoc.documentElement, FDoc.documentElement, TemplateFile);
        FDoc.LoadFromXML(FormatXMLData(FDoc.XML.Text));
        end; //>> transform
    end;
end;


function TExport.GetResultXML: IXMLDocument;
begin
  Result:=FDoc;
end;

function TExport.MakeDatasetDOM: IXMLDocument;
var
  Root, Row, body:IXMLNode;
  i:Integer;
  v:Variant;
begin
  Result:=NewXMLDocument;
  Root:=Result.AddChild('root');
  body:=Root.AddChild('dataset');
  with FQry do
  while not Eof do
    begin
    Row:=body.AddChild('row');
    for i := 0 to FieldCount - 1 do
      begin
        Row.Attributes[FieldName(i)]:=VarToStr(FieldValue(i, false));
      end;
    Next;
    end;
end;

procedure TExport.SetDataBase(const Value: TpFIBDatabase);
begin
  FDataBase := Value;
end;

procedure TExport.SetPacket(const Value: TPacket);
begin
  FPacket := Value;
end;

function TExport.Transform(srcNode, dstRoot: IXMLNode;
  trFile: string): IXMLNode;
var
  xslDoc:IXMLDocument;
  res:IXMLDocument;
  xml:WideString;
begin
  xslDoc:=LoadXMLDocument(trFile);
  srcNode.ParentNode.transformNode(xslDoc.DocumentElement, xml);
  res:=LoadXMLData(xml);
  Result:=CloneNodeToDoc(res.DocumentElement, dstRoot.OwnerDocument, true);
  dstRoot.ChildNodes.Add(Result);
end;

end.
