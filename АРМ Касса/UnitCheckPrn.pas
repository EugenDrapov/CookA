unit UnitCheckPrn;

interface

uses System.Classes, uPrinterDriver;

type

   TCheckPrn=class(TObject)
    private
      FCheckDate: TDateTime;
      FErrCode: Integer;
      FErrCommand: string;
      FCheckNumber: Integer;
      FErrDescr: string;
      procedure SetCheckDate(const Value: TDateTime);
      procedure SetCheckNumber(const Value: Integer);
      procedure SetErrCode(const Value: Integer);
      procedure SetErrCommand(const Value: string);

      function GetErrDescr: string;
      function WaitForCloseCheck:boolean;
      procedure Print;
    public
      function  CheckErr(R:Boolean; Command:string):boolean;
      procedure OutString(OutStr:string; Alignment:TAlignment=taLeftJustify; Bold:boolean=False; Qty:Real=0; Price:Real=0; Summa:Real=0);
      function OpenPrn:boolean;
      procedure ClosePrn;
      function PrintCheck(CheckId:Integer; Cash:Currency):boolean;
      function CloseSession:boolean;
      function PrintReport:boolean;
      function PrintReportBySections:boolean;
      function ContinuePrint:boolean;
      function Reprint:boolean;

      property ErrCode:Integer read FErrCode write SetErrCode;
      property ErrCommand:string read FErrCommand write SetErrCommand;
      property CheckNumber:Integer read FCheckNumber write SetCheckNumber;
      property CheckDate:TDateTime read FCheckDate write SetCheckDate;
      property ErrDescr:string read GetErrDescr;
    end;



implementation

uses SysUtils, UnitDM, DB, StrUtils, DateUtils, UnitMain, Dialogs, Math,
  uSettings;

const
  //MAX_STR_WIDE=32;
  PRICE_FIELD_WIDE=5;
  QTY_FIELD_WIDE=4;  //цена
  SUM_FIELD_WIDE=8;
  SPACE_CNT=1;



function TCheckPrn.CheckErr(R:Boolean; Command:string):boolean;
var
  OnChk:boolean;
  Param:string;
begin
  Param:='Check'+Command;
//  if not FormMain.IniFile.ValueExists('Settings', Param) then
//     FormMain.IniFile.WriteBool('Settings', Param, True);
//  OnChk:=FormMain.IniFile.ReadBool('Settings', Param, True);
//  if not OnChk then
//    begin
//    Result:=false;
//    Exit;
//    end;
  Result:=not R;
  //FErrCode:=Driver.ResultCode;

  FErrDescr:=Driver.GetErrorDescr;
  if Result then
    if Command<>'CloseCheck' then
      begin
      FErrCommand:=Command;
//      Driver.CancelCheck;
      MessageDlg(FErrDescr, mtWarning, [mbClose], 0);
      end
    else
      begin
      //Result:=WaitForCloseCheck;
      end
  else
     Result:=false;
end;

function TCheckPrn.OpenPrn: boolean;
begin
  Result := Driver.Open(Settings.PrinterConnection.PrinterName);
end;

procedure TCheckPrn.OutString(OutStr: string;
  Alignment: TAlignment = taLeftJustify; Bold: boolean = False; Qty: Real = 0;
  Price: Real = 0; Summa: Real = 0);
var
  s, ps: string;
  AppWide, QtyWide, SumWide: Integer;
  MaxWide: Integer;
  LFS: TFormatSettings;
  LSQty, LSSumma:string;

  procedure PrintLocal(PrnStr: string);
  var
    LS: string;
    L: Integer;
  begin
    LS := PrnStr;
    case Alignment of
      taLeftJustify:
        ;
      taRightJustify:
        LS := LS.PadLeft(MaxWide);
      taCenter:
        begin
          L := (MaxWide - Length(LS)) div 2;
          LS := StringOfChar(' ', L) + LS + StringOfChar(' ', L);
        end;
    end;
    Driver.SetWideMode(Bold);
    Driver.WriteLn(LS);
  end;

begin
  LFS := TFormatSettings.Create('en-US');
  if Bold then
    MaxWide := Driver.GetLineWidth div 2
  else
    MaxWide := Driver.GetLineWidth;
  AppWide := 0;
  LSQty := '';
  LSSumma := '';
  QtyWide := 0;
  SumWide := 0;
  if Qty > 0 then
  begin
    LSQty := Format('%' + IntToStr(PRICE_FIELD_WIDE) + '.1f*%' +
      IntToStr(QTY_FIELD_WIDE) + '.1f', [Price, Qty], LFS);
    QtyWide := PRICE_FIELD_WIDE + QTY_FIELD_WIDE + SPACE_CNT;
    LSQty := LSQty.PadLeft(QtyWide);
  end;
  if Summa > 0 then
  begin
    LSSumma := Format('%' + IntToStr(SUM_FIELD_WIDE) + '.2f', [Summa], LFS);
    SumWide := SUM_FIELD_WIDE;
    LSSumma := LSSumma.PadLeft(SumWide);
  end;
  AppWide := QtyWide + SumWide;
  s := OutStr;
  repeat
    ps := LeftStr(s, MaxWide);
    s := MidStr(s, MaxWide + 1, Length(s) - MaxWide);
    if (Length(s) = 0) and ((Qty > 0) or (Summa > 0)) then
    // выводим строку с кол-вом и суммой
    begin
      if (Length(ps) + AppWide) > MaxWide then // разбиваем
      begin
        PrintLocal(ps);
        ps := '';
      end;
      ps := ps.PadRight(MaxWide - AppWide);
      ps := ps + LSQty + LSSumma;
    end;
    PrintLocal(ps);
  until Length(s) = 0;
end;

procedure TCheckPrn.ClosePrn;
begin
  Driver.Feed(Settings.PrinterConnection.FinishFeedLinesCnt);
  Driver.Close;
end;

function TCheckPrn.CloseSession:boolean;
begin
  Result:=false;
//  Driver.Password:=FormMain.Password;
//  if not Driver.Connected then
//     if (Driver.FindDevice<>0) or (Driver.Connect<>0) then Exit;
//  Driver.Password:=FormMain.Password;
//  Driver.PrintReportWithCleaning ;
//  Result:=Driver.ResultCode<>0;
end;

function TCheckPrn.ContinuePrint: boolean;
begin
  Result:=false;
//  Driver.Password:=FormMain.Password;
//  if not Driver.Connected then
//     if (Driver.FindDevice<>0) or (Driver.Connect<>0) then Exit;
//  Driver.Password:=FormMain.Password;
//  Driver.ContinuePrint ;
//  Result:=Driver.ResultCode<>0;
end;

function TCheckPrn.GetErrDescr: string;
begin
  Result:=FErrDescr;
end;

procedure TCheckPrn.Print;
var
  FS: TFormatSettings;
  SS, SQ, SSum: string;
  Total: Real;
  LQty, LPrice, LSumma, LDiscountPercent, LDiscount: Real;
  Cnt: Integer;
  MaxWidth: Integer;
begin

  //Driver.Timeout := 100;
  if not CheckErr(OpenPrn, '') then
  begin
    MaxWidth := Driver.GetLineWidth;
    FS := TFormatSettings.Create('ru-RU');
    // Заголовок
 //   Driver.SetBoldMode(True);
    OutString('---------', taCenter);
    OutString('WASABI', taCenter, True);
//  Driver.StringQuantity := 1;
//  Driver.FeedDocument;
    Driver.Feed(1);
    OutString('ИП Мазитова В.А.');
    OutString('Адрес: '+Settings.PrinterConnection.Address);
    OutString('ИНН: 741302078264', taCenter);
    OutString('Чек №' + DM.DSDocs.DataSet.FieldByName('CODE').AsString);
    OutString(DateTimeToStr(Now, FS));
    SS := 'Блюдо';
    SS := SS.PadRight(MaxWidth - QTY_FIELD_WIDE - SUM_FIELD_WIDE -
      PRICE_FIELD_WIDE - SPACE_CNT);
    SQ := 'Кол-во';
    SQ := SQ.PadLeft(QTY_FIELD_WIDE + PRICE_FIELD_WIDE);
    SSum := 'Сумма';
    SSum := SSum.PadLeft(SUM_FIELD_WIDE + SPACE_CNT);
    OutString(SS + SQ + SSum);
    Total := 0;
    Cnt := 1;
    with DM.CheckDetail do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        LQty := FieldByName('qty').AsFloat;
        LPrice := FieldByName('PRICE_SELL').AsFloat;
        LSumma := LQty * LPrice;
        OutString(IntToStr(Cnt) + '.' + FieldByName('food').AsString,
          taLeftJustify, False, LQty, LPrice, LSumma);
        Total := Total + LSumma;
        Inc(Cnt);
        Next;
      end;
      EnableControls;
    end;
    LDiscountPercent := DM.DSCheck.DataSet.FieldByName('DISCOUNT').AsFloat;
  //  Driver.SetBoldMode(True);

    if LDiscountPercent <> 0 then
    begin
      LDiscount := RoundTo(Total * LDiscountPercent / 100, -Settings.CalcRules.RoundDiscountTo);

      OutString('ВСЕГО:', taLeftJustify, False, 0, 0, Total);
      OutString('Скидка:' + FloatToStr(LDiscountPercent) + '%',
        taLeftJustify, False, 0, 0, LDiscount);
      OutString('ИТОГО:', taLeftJustify, True, 0, 0, Total - LDiscount);
    end
    else
      begin
      OutString('ИТОГО:', taLeftJustify, True, 0, 0, Total);
      end;
//    Driver.StringQuantity := 2;
//    Driver.FeedDocument;
    Driver.SetBoldMode(False);
    Driver.SetWideMode(False);
    ClosePrn;
  end;
end;

function TCheckPrn.PrintCheck(CheckId: Integer; Cash: Currency)
  : boolean;
var
  s: string;
  ps: string;
  i: Integer;
  ChkOn:Boolean;
begin
  Result:=false;
//  if DM.Check.Locate('id', CheckId, []) then
//  begin
//  DM.DSDocs.DataSet.Edit;
//  DM.DSDocs.DataSet.FieldByName('DocDate').AsDateTime := Now;
//  DM.DSDocs.DataSet.Post;
  Print;

{

      with DM.TempQuery1 do
      begin
  //      if not Driver.Connected then
  //        if (Driver.Connect<>0) then
  //          begin
  //          Exit;
  //          FErrDescr:='Не удалось подключиться к ККМ';
  //          end;
        DM.TempQuery1.ParamByName('checkid').Value:=CheckId;
        DM.TempQuery1.Open;
        i:=0;
  //          Driver.CheckType:=0;
  //          Driver.Password:=FormMain.Password;
            //OpenCheck;
            while not Eof do
              begin
              Inc(i);
  //            Driver.Summ1:=0;
  //            Driver.Quantity:=FieldByName('qty').AsFloat;
  //            Driver.Price:=FieldByName('price_sell').AsCurrency;
  //            Driver.Tax1 := 0;
  //            Driver.Tax2 := 0;
  //            Driver.Tax3 := 0;
  //            Driver.Tax4 := 0;
              s:=Trim(FieldByName('food').AsString);
              if Length(s)>36 then
                repeat
                  ps:=LeftStr(s, 36);
                  s:=MidStr(s, 37, Length(s)-36);
                  Driver.StringForPrinting:=ps;
                  if CheckErr(Driver.PrintString, 'PrintString') then Exit;
                until Length(s)<37;
              Driver.StringForPrinting:=s;
  //            Driver.Password:=FormMain.Password;
  //            Driver.Department:=FieldByName('section').AsInteger;
  //            if CheckErr(Driver.Sale, 'Sale') then Exit;
              if CheckErr(Driver.PrintString, 'Sale') then Exit;
              Next;
              end;
            DM.TempQuery1.Close;
  //          Driver.Summ1:=Cash;
  //          Driver.Tax1 := 0;
  //          Driver.Tax2 := 0;
  //          Driver.Tax3 := 0;
  //          Driver.Tax4 := 0;
  //          Driver.Password:=FormMain.Password;
            Driver.StringForPrinting:='';
            if i=0 then ShowMessage('Чек пустой!');
  //          if CheckErr(Driver.CloseCheck, 'CloseCheck') then  Exit;
  //          CheckNumber:=Driver.OpenDocumentNumber;
  //          CheckDate:=Driver.Date+Driver.Time;
            CheckDate:=Now;
            Result:=true;
} //  DM.TempQuery1.Close;
    Result := true;
end;


function TCheckPrn.PrintReport: boolean;
var
  FS: TFormatSettings;
  SS, SQ, SSum: string;
  Total, Discount: Real;
  LQty, LPrice, LSumma, LDiscountPercent, LDiscount: Real;
  Cnt: Integer;
begin
  Result := False;
  with DM.FDQueryReportByPayments do
  begin
    ParamByName('date1').AsDateTime := StartOfTheDay(Now);
    ParamByName('date2').AsDateTime := EndOfTheDay(Now);
    Open;
//    Driver.Timeout := 100;
    if not CheckErr(OpenPrn, '') then
    begin
      FS := TFormatSettings.Create('ru-RU');
      // Заголовок
      OutString('ОТЧЕТ ЗА СМЕНУ', taCenter, False);
      SS := '';
      SS := SS + DateTimeToStr(ParamByName('date1').AsDateTime, FS);
      SS := SS + ' -- ';
      SS := SS + DateTimeToStr(ParamByName('date2').AsDateTime, FS);
      OutString(SS);
//      Driver.StringQuantity := 1;
//      Driver.FeedDocument;
      SS := 'Тип оплаты';
      SS := SS.PadRight(Driver.GetLineWidth - SUM_FIELD_WIDE);
      SS := SS + ('Сумма').PadLeft(SUM_FIELD_WIDE);
      OutString(SS);
      Total := 0;
      Discount := 0;
      First;
      while not Eof do
      begin
        SS := FieldByName('payment_type').AsString;
        LSumma := FieldByName('summa').AsCurrency;
        OutString(SS, taLeftJustify, False, 0, 0, LSumma);
        Total := Total + LSumma;
        Discount := Discount + FieldByName('discount').AsCurrency;
        Next;
      end;
      OutString('В т. ч. скидка:', taLeftJustify, False, 0, 0, Discount);
      OutString('ВСЕГО:', taLeftJustify, True, 0, 0, Total);
//      Driver.StringQuantity := 5;
//      Driver.FeedDocument;
      ClosePrn;
      Close;
    end;
  end;
end;

function TCheckPrn.PrintReportBySections: boolean;
begin
  Result := False;
  // Driver.Password:=FormMain.Password;
  // if not Driver.Connected then
  // if (Driver.FindDevice<>0) or (Driver.Connect<>0) then Exit;
//  Driver.Password:=FormMain.Password;
//  Driver.PrintDepartmentReport;
//  Result:=Driver.ResultCode<>0;
end;

function TCheckPrn.Reprint: boolean;
begin
  Result:=false;
  DM.pFIBDocs.DisableControls;
  try
    DM.pFIBDocs.Last;
    Print;
    Result := true;
  finally
    DM.pFIBDocs.EnableControls;
  end;
//  Driver.Password:=FormMain.Password;
//  if not Driver.Connected then
//     if (Driver.FindDevice<>0) or (Driver.Connect<>0) then Exit;
//  Driver.Password:=FormMain.Password;
//  Driver.RepeatDocument;
//  Result:=Driver.ResultCode<>0;
end;

{ TCheckPrn }

procedure TCheckPrn.SetCheckDate(const Value: TDateTime);
begin
  FCheckDate := Value;
end;

procedure TCheckPrn.SetCheckNumber(const Value: Integer);
begin
  FCheckNumber := Value;
end;

procedure TCheckPrn.SetErrCode(const Value: Integer);
begin
  FErrCode := Value;
end;

procedure TCheckPrn.SetErrCommand(const Value: string);
begin
  FErrCommand := Value;
end;


function TCheckPrn.WaitForCloseCheck: boolean;
var
 res:integer;
 mode:Integer;
begin
//  Driver.GetShortECRStatus;
//  while not Driver.ReceiptRibbonOpticalSensor or not Driver.ReceiptRibbonLever do //бумага
//    begin
////    repeat
//      MessageDlg('Ошибка подачи ленты!'#13#10'После устранения проблемы нажмите ОК.'
//                 , mtError, [mbOK], 0);
//      Driver.GetShortECRStatus;
////    until Driver.ECRMode in [0,3];
////      if Driver.ECRMode=3 then
////        Driver.ContinuePrint;
//    end;
//  Driver.GetShortECRStatus;
  Result:=false;
end;

end.
