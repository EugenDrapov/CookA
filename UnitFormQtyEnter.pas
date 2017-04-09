unit UnitFormQtyEnter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ValEdit;

type
  TFormInputQty = class(TForm)
    ValueListEditor1: TValueListEditor;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInputQty: TFormInputQty;

implementation

{$R *.dfm}

end.
