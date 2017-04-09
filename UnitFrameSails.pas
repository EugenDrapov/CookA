unit UnitFrameSails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, sBitBtn, sFrameAdapter;

type
  TFrameSails = class(TFrame)
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sFrameAdapter1: TsFrameAdapter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
