unit UnitIntervalWiz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, StdCtrls, Buttons, sBitBtn, sGroupBox, Mask,
  sMaskEdit, sCustomComboEdit, sTooledit, sComboBox;

type
  TFormInervalWiz = class(TForm)
    Date1: TsDateEdit;
    Date2: TsDateEdit;
    CommandRadioGroup: TsRadioGroup;
    sBitBtn1: TsBitBtn;
    sSkinProvider1: TsSkinProvider;
    sBitBtn2: TsBitBtn;
    SelectCombo: TsComboBox;
    DateEdit: TsDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure CommandRadioGroupClick(Sender: TObject);
    procedure SelectYear(Sender:TObject);
    procedure SelectQuarter(Sender:TObject);
    procedure SelectMonth(Sender:TObject);
    procedure DateEditAcceptDate(Sender: TObject; var aDate: TDateTime;
      var CanAccept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormInervalWiz: TFormInervalWiz;

implementation

{$R *.dfm}
uses DateUtils;
{ TFormInervalWiz }
const
  MonthNames:array [1..12] of string =('Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август'
              ,'Сентябрь','Октябрь','Ноябрь','Декабрь');

procedure TFormInervalWiz.CommandRadioGroupClick(Sender: TObject);
var i,m:integer;
begin
  case CommandRadioGroup.ItemIndex of
    0: begin
      SelectCombo.Hide;
      DateEdit.Hide;
    end;

    1:with SelectCombo do
    begin
      Items.Clear;
      for i := 2009 to 2020 do
        Items.Add(IntToStr(i));
      ItemIndex:=Items.IndexOf(IntToStr(YearOf(Date2.Date)));
      SelectCombo.OnSelect:=SelectYear;
      DateEdit.Hide;
      SelectCombo.Show;
    end;

    2:with SelectCombo do
    begin
      Items.Clear;
      for i := 1 to 4 do
        Items.Add(IntToStr(i)+' Квартал');
      ItemIndex:=MonthOf(Date2.Date) div 4;
      SelectCombo.OnSelect:=SelectQuarter;
      DateEdit.Hide;
      SelectCombo.Show;
    end;

    3:with SelectCombo do
    begin
      Items.Clear;
      for i := 1 to 12 do
        Items.Add(MonthNames[i]);
      ItemIndex:=MonthOf(Date2.Date)-1;
      SelectCombo.OnSelect:=SelectMonth;
      DateEdit.Hide;
      SelectCombo.Show;
      SelectMonth(nil);
    end;

    4:  //day
    begin
      SelectCombo.Hide;
      DateEdit.Date:=Now;
      DateEdit.Show;
    end;

    5:begin
      SelectCombo.Hide;
      DateEdit.Hide;
      Date1.Date:=StartOfTheMonth(Date2.Date);
    end;

    6:begin
      SelectCombo.Hide;
      DateEdit.Hide;
      m:= MonthOf(Date2.Date);
      i:=m mod 4;
      m:=m-i+1;
      Date1.Date:=EncodeDateTime(YearOf(Date2.Date), m, 1, 0, 0, 0,0);
    end;

    7:begin
      SelectCombo.Hide;
      DateEdit.Hide;
      Date1.Date:=StartOfTheYear(Date2.Date);
    end;
  end;
end;

procedure TFormInervalWiz.DateEditAcceptDate(Sender: TObject;
  var aDate: TDateTime; var CanAccept: Boolean);
begin
  Date1.Date:=DateEdit.Date;
  Date2.Date:=DateEdit.Date;
end;

procedure TFormInervalWiz.FormCreate(Sender: TObject);
begin
  Date2.Date:=Now;
  Date1.Date:=StartOfTheMonth(Now);
  CommandRadioGroupClick(nil);
end;

procedure TFormInervalWiz.SelectMonth(Sender: TObject);
var m:integer;
  year:integer;
begin
  year:=YearOf(Date2.Date);
  m:=SelectCombo.ItemIndex+1;
  Date1.Date:=EncodeDateTime(year,m,1,0,0,0,0);
  Date2.Date:=EndOfTheMonth(Date1.Date);
end;

procedure TFormInervalWiz.SelectQuarter(Sender: TObject);
var
  q:integer;
  year:integer;
begin
  year:=YearOf(Date2.Date);
  q:=SelectCombo.ItemIndex;
  Date1.Date:=EncodeDateTime(Year, q*3+1,1,0,0,0,0);
  Date2.Date:=EndOfTheMonth(EncodeDateTime(year, q*3+3,1,0,0,0,0));
end;

procedure TFormInervalWiz.SelectYear(Sender: TObject);
var
  Year:Integer;
begin
  Year:=StrToInt(SelectCombo.Text);
  Date1.Date:=EncodeDateTime(Year,1,1,0,0,0,0);
  Date2.Date:=EndOfTheYear(Date1.Date);
end;

end.


