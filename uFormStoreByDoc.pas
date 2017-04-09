unit uFormStoreByDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,
  sStatusBar, ExtCtrls, sPanel, StdCtrls, Buttons, sBitBtn, FIBDataSet,
  pFIBDataSet, DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFormStoreByDoc = class(TForm)
    sPanel1: TsPanel;
    sStatusBar1: TsStatusBar;
    sPanel2: TsPanel;
    DSDocMoves: TDataSource;
    sBitBtn1: TsBitBtn;
    DocMoves: TFDQuery;
    DocMovesEFFECT_DATE: TSQLTimeStampField;
    DocMovesFOOD: TStringField;
    DocMovesGRP: TStringField;
    DocMovesPRICE: TFloatField;
    DocMovesQTY: TBCDField;
    DocMovesDEPART: TStringField;
    DocMovesWAREHSE: TStringField;
    DocMovesPRICE_SELL: TFloatField;
    DocMovesINT_ATTR1: TIntegerField;
    DocMovesISCREDIT: TIntegerField;
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    docid:Integer;
  end;

var
  FormStoreByDoc: TFormStoreByDoc;

implementation

uses UnitDM;

{$R *.dfm}

procedure TFormStoreByDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DocMoves.Close;
  Action:=caFree;
end;

procedure TFormStoreByDoc.FormShow(Sender: TObject);
begin
  DocMoves.ParamByName('docid').Value:=docid;
  DocMoves.Open;
end;

end.
