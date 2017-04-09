unit fmScriptLauncher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ToolWin, ActnMan, ActnCtrls, StdActns, ExtActns,
  ActnList, PlatformDefaultStyleActnCtrls, fs_iinterpreter,  ComCtrls, sStatusBar, acCoolBar, fs_idbrtti,
  fs_iclassesrtti, fs_iformsrtti, fs_ipascal, fs_iibxrtti, fs_iextctrlsrtti,
  StdCtrls, sMemo, System.Actions;

type
  TFormScriptLauncher = class(TForm)
    ActionManager1: TActionManager;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    sCoolBar1: TsCoolBar;
    ActionToolBar1: TActionToolBar;
    sStatusBar1: TsStatusBar;
    ActionExe: TAction;
    procedure ActionExeExecute(Sender: TObject);
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1BeforeExecute(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
  private
    { Private declarations }
    procedure ErrCompile;
  public
    { Public declarations }
  end;

var
  FormScriptLauncher: TFormScriptLauncher;

implementation

uses UnitDM, MainUnit, pFIBQuery, pFIBDataSet;

{$R *.dfm}

procedure TFormScriptLauncher.ActionExeExecute(Sender: TObject);
begin
 ;
end;

procedure TFormScriptLauncher.ErrCompile;
begin
  //ShowMessage(fsScript1.ErrorMsg);
end;

procedure TFormScriptLauncher.FileOpen1Accept(Sender: TObject);
begin
//  fsScript1.Lines.LoadFromFile(FileOpen1.Dialog.FileName);
//  SynEditor.Lines.Assign(fsScript1.Lines);
end;

procedure TFormScriptLauncher.FileSaveAs1Accept(Sender: TObject);
begin
//  fsScript1.Lines.Assign(SynEditor.Lines);
//  fsScript1.Lines.SaveToFile(FileSaveAs1.Dialog.FileName);
end;

procedure TFormScriptLauncher.FileSaveAs1BeforeExecute(Sender: TObject);
begin
  FileSaveAs1.Dialog.InitialDir:=ExtractFileDir(Application.ExeName)+'\scripts';
end;

end.
