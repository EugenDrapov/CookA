unit untShtrih500Driver;

{$DEFINE S500}

interface

uses
  // VCL
  Classes, SysUtils, Forms, ActiveX, ComObj
  // This
{$IFDEF  S500}
  ,S500DrvLib_TLB
{$ELSE}
  ,DrvFRLib_TLB
{$ENDIF}
  ;

type
  { TDriver }
{$IFDEF  S500}
  TDriver = class(TS500Drv)
{$ELSE}
  Driver = class(TDrvFR)
{$ENDIF}
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  end;

procedure FreeDriver;
function Driver: TDriver;

implementation

uses
  Windows;

var
  FDriver: TDriver = nil;

procedure FreeDriver;
begin
  FDriver.Free;
  FDriver := nil;
end;

function Driver: TDriver;
begin
  if FDriver = nil then
  try
    FDriver := TDriver.Create(nil);

  except
    on E: Exception do
    begin
      E.Message := 'Ошибка создания объекта драйвера "Штрих М500": ' + E.Message;
      raise;
    end;
  end;
  Result := FDriver;
end;

function DriverIsNil: Boolean;
begin
  Result := FDriver = nil;
end;

{ TDriver }

constructor TDriver.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TDriver.Destroy;
begin
  inherited Destroy;
end;


end.
