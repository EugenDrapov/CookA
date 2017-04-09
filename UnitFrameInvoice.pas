unit UnitFrameInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, sBitBtn, sFrameAdapter;

type
  TFrameInvoice = class(TFrame)
    sFrameAdapter1: TsFrameAdapter;
    sBitBtn1: TsBitBtn;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
