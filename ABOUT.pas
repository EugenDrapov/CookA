unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, jpeg, sGauge;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    sGauge1: TsGauge;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

end.
 
