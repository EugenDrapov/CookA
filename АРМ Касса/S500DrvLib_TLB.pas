unit S500DrvLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 04.03.2016 10:19:25 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\ШТРИХ-М\Драйверы\Драйвер Штрих-500\S500Drv.dll (1)
// LIBID: {6C27A1F6-AFAE-4204-9DED-73F42D6C05BE}
// LCID: 0
// Helpfile: 
// HelpString: �����-�: ������� "�����-500"
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleCtrls, Vcl.OleServer, Winapi.ActiveX;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  S500DrvLibMajorVersion = 1;
  S500DrvLibMinorVersion = 3;

  LIBID_S500DrvLib: TGUID = '{6C27A1F6-AFAE-4204-9DED-73F42D6C05BE}';

  IID_IS500Drv: TGUID = '{E13BB866-DD3F-481E-9092-40C533503844}';
  IID_IS500Srv: TGUID = '{F0AAAB09-E36E-4ECD-8D9E-B4F961A98F42}';
  IID_IS500Drv2: TGUID = '{0FA5E5B9-8B9E-410A-BD9D-825E2F734FA8}';
  IID_IS500Drv3: TGUID = '{2DFBF0B4-D23A-4632-BB00-3885F1CBED1F}';
  IID_IS500Drv4: TGUID = '{7162EE36-6DE2-445D-BA92-085BC6213996}';
  CLASS_S500Drv: TGUID = '{4D959331-0703-402F-95D8-D3BE00EEF8BA}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IS500Drv = interface;
  IS500DrvDisp = dispinterface;
  IS500Srv = interface;
  IS500SrvDisp = dispinterface;
  IS500Drv2 = interface;
  IS500Drv2Disp = dispinterface;
  IS500Drv3 = interface;
  IS500Drv3Disp = dispinterface;
  IS500Drv4 = interface;
  IS500Drv4Disp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  S500Drv = IS500Drv4;


// *********************************************************************//
// Interface: IS500Drv
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E13BB866-DD3F-481E-9092-40C533503844}
// *********************************************************************//
  IS500Drv = interface(IDispatch)
    ['{E13BB866-DD3F-481E-9092-40C533503844}']
    function ShowProperties: Integer; safecall;
    function Connect: Integer; safecall;
    function Disconnect: Integer; safecall;
    function GetShortECRStatus: Integer; safecall;
    function GetECRStatus: Integer; safecall;
    function PrintWideString: Integer; safecall;
    function Beep: Integer; safecall;
    function SetExchangeParam: Integer; safecall;
    function GetExchangeParam: Integer; safecall;
    function PrintString: Integer; safecall;
    function Test: Integer; safecall;
    function WriteTable: Integer; safecall;
    function ReadTable: Integer; safecall;
    function InitTable: Integer; safecall;
    function OpenDrawer: Integer; safecall;
    function FeedDocument: Integer; safecall;
    function InterruptTest: Integer; safecall;
    function GetTableStruct: Integer; safecall;
    function GetFieldStruct: Integer; safecall;
    function PrintStringWithFont: Integer; safecall;
    function LoadLineData: Integer; safecall;
    function LoadLineDataEx: Integer; safecall;
    function WideLoadLineData: Integer; safecall;
    function Draw: Integer; safecall;
    function DrawEx: Integer; safecall;
    function PrintBarCode: Integer; safecall;
    function GetDeviceMetrics: Integer; safecall;
    function GetFontMetrics: Integer; safecall;
    function ServerConnect: Integer; safecall;
    function ServerDisconnect: Integer; safecall;
    function LockPort: Integer; safecall;
    function UnlockPort: Integer; safecall;
    function AdminUnlockPort: Integer; safecall;
    function AdminUnlockPorts: Integer; safecall;
    function ExchangeBytes: Integer; safecall;
    function AddLD: Integer; safecall;
    function EnumLD: Integer; safecall;
    function DeleteLD: Integer; safecall;
    function GetParamLD: Integer; safecall;
    function SetParamLD: Integer; safecall;
    function GetCountLD: Integer; safecall;
    function GetActiveLD: Integer; safecall;
    function SetActiveLD: Integer; safecall;
    function GetFreeLDNumber: Integer; safecall;
    function Get_ECRInput: WideString; safecall;
    function Get_ECROutput: WideString; safecall;
    function Get_BarCode: WideString; safecall;
    procedure Set_BarCode(const Value: WideString); safecall;
    function Get_BaudRate: Integer; safecall;
    procedure Set_BaudRate(Value: Integer); safecall;
    function Get_ComNumber: Integer; safecall;
    procedure Set_ComNumber(Value: Integer); safecall;
    function Get_DrawerNumber: Integer; safecall;
    procedure Set_DrawerNumber(Value: Integer); safecall;
    function Get_ECRBuild: Integer; safecall;
    function Get_ECRFlags: Integer; safecall;
    function Get_ECRMode: Integer; safecall;
    function Get_ECRModeDescription: WideString; safecall;
    function Get_ECRSoftDate: TDateTime; safecall;
    function Get_ECRSoftVersion: WideString; safecall;
    function Get_FieldName: WideString; safecall;
    function Get_FieldNumber: Integer; safecall;
    procedure Set_FieldNumber(Value: Integer); safecall;
    function Get_FieldSize: Integer; safecall;
    procedure Set_FieldSize(Value: Integer); safecall;
    function Get_FieldType: WordBool; safecall;
    procedure Set_FieldType(Value: WordBool); safecall;
    function Get_FirstLineNumber: Integer; safecall;
    procedure Set_FirstLineNumber(Value: Integer); safecall;
    function Get_IsDrawerOpen: WordBool; safecall;
    function Get_LastLineNumber: Integer; safecall;
    procedure Set_LastLineNumber(Value: Integer); safecall;
    function Get_LineData: WideString; safecall;
    procedure Set_LineData(const Value: WideString); safecall;
    function Get_LineNumber: Integer; safecall;
    procedure Set_LineNumber(Value: Integer); safecall;
    function Get_LogicalNumber: Integer; safecall;
    function Get_MAXValueOfField: Integer; safecall;
    function Get_MINValueOfField: Integer; safecall;
    function Get_PortNumber: Integer; safecall;
    procedure Set_PortNumber(Value: Integer); safecall;
    function Get_ReceiptRibbonLever: WordBool; safecall;
    function Get_ReceiptRibbonOpticalSensor: WordBool; safecall;
    function Get_ResultCode: Integer; safecall;
    function Get_ResultCodeDescription: WideString; safecall;
    function Get_RowNumber: Integer; safecall;
    procedure Set_RowNumber(Value: Integer); safecall;
    function Get_StringForPrinting: WideString; safecall;
    procedure Set_StringForPrinting(const Value: WideString); safecall;
    function Get_StringQuantity: Integer; safecall;
    procedure Set_StringQuantity(Value: Integer); safecall;
    function Get_TableName: WideString; safecall;
    function Get_TableNumber: Integer; safecall;
    procedure Set_TableNumber(Value: Integer); safecall;
    function Get_Timeout: Integer; safecall;
    procedure Set_Timeout(Value: Integer); safecall;
    function Get_UCodePage: Integer; safecall;
    function Get_UDescription: WideString; safecall;
    function Get_UMajorProtocolVersion: Integer; safecall;
    function Get_UMajorType: Integer; safecall;
    function Get_UMinorProtocolVersion: Integer; safecall;
    function Get_UMinorType: Integer; safecall;
    function Get_UModel: Integer; safecall;
    function Get_ValueOfFieldInteger: Integer; safecall;
    procedure Set_ValueOfFieldInteger(Value: Integer); safecall;
    function Get_ValueOfFieldString: WideString; safecall;
    procedure Set_ValueOfFieldString(const Value: WideString); safecall;
    function Get_FontType: Integer; safecall;
    procedure Set_FontType(Value: Integer); safecall;
    function Get_LDBaudrate: Integer; safecall;
    procedure Set_LDBaudrate(Value: Integer); safecall;
    function Get_LDComNumber: Integer; safecall;
    procedure Set_LDComNumber(Value: Integer); safecall;
    function Get_LDCount: Integer; safecall;
    function Get_LDIndex: Integer; safecall;
    procedure Set_LDIndex(Value: Integer); safecall;
    function Get_LDName: WideString; safecall;
    procedure Set_LDName(const Value: WideString); safecall;
    function Get_LDNumber: Integer; safecall;
    procedure Set_LDNumber(Value: Integer); safecall;
    function Get_FileVersionMS: Integer; safecall;
    function Get_FileVersionLS: Integer; safecall;
    function Get_ServerVersion: WideString; safecall;
    function Get_LDComputerName: WideString; safecall;
    procedure Set_LDComputerName(const Value: WideString); safecall;
    function Get_LDTimeout: Integer; safecall;
    procedure Set_LDTimeout(Value: Integer); safecall;
    function Get_ComputerName: WideString; safecall;
    procedure Set_ComputerName(const Value: WideString); safecall;
    function Get_ServerConnected: WordBool; safecall;
    function Get_PortLocked: WordBool; safecall;
    function Get_RunningPeriod: Integer; safecall;
    procedure Set_RunningPeriod(Value: Integer); safecall;
    function Get_TransferBytes: WideString; safecall;
    procedure Set_TransferBytes(const Value: WideString); safecall;
    function Get_PowerSourceVoltage: Double; safecall;
    function Get_PrintWidth: Integer; safecall;
    function Get_CharWidth: Integer; safecall;
    function Get_CharHeight: Integer; safecall;
    function Get_FontCount: Integer; safecall;
    function Get_ConnectionType: Integer; safecall;
    procedure Set_ConnectionType(Value: Integer); safecall;
    function Get_LDConnectionType: Integer; safecall;
    procedure Set_LDConnectionType(Value: Integer); safecall;
    function Get_TCPPort: Integer; safecall;
    procedure Set_TCPPort(Value: Integer); safecall;
    function Get_LDTCPPort: Integer; safecall;
    procedure Set_LDTCPPort(Value: Integer); safecall;
    function Get_IPAddress: WideString; safecall;
    procedure Set_IPAddress(const Value: WideString); safecall;
    function Get_LDIPAddress: WideString; safecall;
    procedure Set_LDIPAddress(const Value: WideString); safecall;
    function Get_UseIPAddress: WordBool; safecall;
    procedure Set_UseIPAddress(Value: WordBool); safecall;
    function Get_LDUseIPAddress: WordBool; safecall;
    procedure Set_LDUseIPAddress(Value: WordBool); safecall;
    function SaveLDParams: Integer; safecall;
    function ReadTable2: Integer; safecall;
    function WriteTable2: Integer; safecall;
    function LoadBitmap(const FileName: WideString): Integer; safecall;
    function LoadBitmapEx(const FileName: WideString): Integer; safecall;
    function Get_FileVersion: WideString; safecall;
    property ECRInput: WideString read Get_ECRInput;
    property ECROutput: WideString read Get_ECROutput;
    property BarCode: WideString read Get_BarCode write Set_BarCode;
    property BaudRate: Integer read Get_BaudRate write Set_BaudRate;
    property ComNumber: Integer read Get_ComNumber write Set_ComNumber;
    property DrawerNumber: Integer read Get_DrawerNumber write Set_DrawerNumber;
    property ECRBuild: Integer read Get_ECRBuild;
    property ECRFlags: Integer read Get_ECRFlags;
    property ECRMode: Integer read Get_ECRMode;
    property ECRModeDescription: WideString read Get_ECRModeDescription;
    property ECRSoftDate: TDateTime read Get_ECRSoftDate;
    property ECRSoftVersion: WideString read Get_ECRSoftVersion;
    property FieldName: WideString read Get_FieldName;
    property FieldNumber: Integer read Get_FieldNumber write Set_FieldNumber;
    property FieldSize: Integer read Get_FieldSize write Set_FieldSize;
    property FieldType: WordBool read Get_FieldType write Set_FieldType;
    property FirstLineNumber: Integer read Get_FirstLineNumber write Set_FirstLineNumber;
    property IsDrawerOpen: WordBool read Get_IsDrawerOpen;
    property LastLineNumber: Integer read Get_LastLineNumber write Set_LastLineNumber;
    property LineData: WideString read Get_LineData write Set_LineData;
    property LineNumber: Integer read Get_LineNumber write Set_LineNumber;
    property LogicalNumber: Integer read Get_LogicalNumber;
    property MAXValueOfField: Integer read Get_MAXValueOfField;
    property MINValueOfField: Integer read Get_MINValueOfField;
    property PortNumber: Integer read Get_PortNumber write Set_PortNumber;
    property ReceiptRibbonLever: WordBool read Get_ReceiptRibbonLever;
    property ReceiptRibbonOpticalSensor: WordBool read Get_ReceiptRibbonOpticalSensor;
    property ResultCode: Integer read Get_ResultCode;
    property ResultCodeDescription: WideString read Get_ResultCodeDescription;
    property RowNumber: Integer read Get_RowNumber write Set_RowNumber;
    property StringForPrinting: WideString read Get_StringForPrinting write Set_StringForPrinting;
    property StringQuantity: Integer read Get_StringQuantity write Set_StringQuantity;
    property TableName: WideString read Get_TableName;
    property TableNumber: Integer read Get_TableNumber write Set_TableNumber;
    property Timeout: Integer read Get_Timeout write Set_Timeout;
    property UCodePage: Integer read Get_UCodePage;
    property UDescription: WideString read Get_UDescription;
    property UMajorProtocolVersion: Integer read Get_UMajorProtocolVersion;
    property UMajorType: Integer read Get_UMajorType;
    property UMinorProtocolVersion: Integer read Get_UMinorProtocolVersion;
    property UMinorType: Integer read Get_UMinorType;
    property UModel: Integer read Get_UModel;
    property ValueOfFieldInteger: Integer read Get_ValueOfFieldInteger write Set_ValueOfFieldInteger;
    property ValueOfFieldString: WideString read Get_ValueOfFieldString write Set_ValueOfFieldString;
    property FontType: Integer read Get_FontType write Set_FontType;
    property LDBaudrate: Integer read Get_LDBaudrate write Set_LDBaudrate;
    property LDComNumber: Integer read Get_LDComNumber write Set_LDComNumber;
    property LDCount: Integer read Get_LDCount;
    property LDIndex: Integer read Get_LDIndex write Set_LDIndex;
    property LDName: WideString read Get_LDName write Set_LDName;
    property LDNumber: Integer read Get_LDNumber write Set_LDNumber;
    property FileVersionMS: Integer read Get_FileVersionMS;
    property FileVersionLS: Integer read Get_FileVersionLS;
    property ServerVersion: WideString read Get_ServerVersion;
    property LDComputerName: WideString read Get_LDComputerName write Set_LDComputerName;
    property LDTimeout: Integer read Get_LDTimeout write Set_LDTimeout;
    property ComputerName: WideString read Get_ComputerName write Set_ComputerName;
    property ServerConnected: WordBool read Get_ServerConnected;
    property PortLocked: WordBool read Get_PortLocked;
    property RunningPeriod: Integer read Get_RunningPeriod write Set_RunningPeriod;
    property TransferBytes: WideString read Get_TransferBytes write Set_TransferBytes;
    property PowerSourceVoltage: Double read Get_PowerSourceVoltage;
    property PrintWidth: Integer read Get_PrintWidth;
    property CharWidth: Integer read Get_CharWidth;
    property CharHeight: Integer read Get_CharHeight;
    property FontCount: Integer read Get_FontCount;
    property ConnectionType: Integer read Get_ConnectionType write Set_ConnectionType;
    property LDConnectionType: Integer read Get_LDConnectionType write Set_LDConnectionType;
    property TCPPort: Integer read Get_TCPPort write Set_TCPPort;
    property LDTCPPort: Integer read Get_LDTCPPort write Set_LDTCPPort;
    property IPAddress: WideString read Get_IPAddress write Set_IPAddress;
    property LDIPAddress: WideString read Get_LDIPAddress write Set_LDIPAddress;
    property UseIPAddress: WordBool read Get_UseIPAddress write Set_UseIPAddress;
    property LDUseIPAddress: WordBool read Get_LDUseIPAddress write Set_LDUseIPAddress;
    property FileVersion: WideString read Get_FileVersion;
  end;

// *********************************************************************//
// DispIntf:  IS500DrvDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E13BB866-DD3F-481E-9092-40C533503844}
// *********************************************************************//
  IS500DrvDisp = dispinterface
    ['{E13BB866-DD3F-481E-9092-40C533503844}']
    function ShowProperties: Integer; dispid 1;
    function Connect: Integer; dispid 2;
    function Disconnect: Integer; dispid 3;
    function GetShortECRStatus: Integer; dispid 4;
    function GetECRStatus: Integer; dispid 5;
    function PrintWideString: Integer; dispid 6;
    function Beep: Integer; dispid 7;
    function SetExchangeParam: Integer; dispid 8;
    function GetExchangeParam: Integer; dispid 9;
    function PrintString: Integer; dispid 10;
    function Test: Integer; dispid 11;
    function WriteTable: Integer; dispid 12;
    function ReadTable: Integer; dispid 13;
    function InitTable: Integer; dispid 14;
    function OpenDrawer: Integer; dispid 15;
    function FeedDocument: Integer; dispid 16;
    function InterruptTest: Integer; dispid 17;
    function GetTableStruct: Integer; dispid 18;
    function GetFieldStruct: Integer; dispid 19;
    function PrintStringWithFont: Integer; dispid 20;
    function LoadLineData: Integer; dispid 21;
    function LoadLineDataEx: Integer; dispid 22;
    function WideLoadLineData: Integer; dispid 23;
    function Draw: Integer; dispid 24;
    function DrawEx: Integer; dispid 25;
    function PrintBarCode: Integer; dispid 26;
    function GetDeviceMetrics: Integer; dispid 27;
    function GetFontMetrics: Integer; dispid 28;
    function ServerConnect: Integer; dispid 29;
    function ServerDisconnect: Integer; dispid 30;
    function LockPort: Integer; dispid 31;
    function UnlockPort: Integer; dispid 32;
    function AdminUnlockPort: Integer; dispid 33;
    function AdminUnlockPorts: Integer; dispid 34;
    function ExchangeBytes: Integer; dispid 35;
    function AddLD: Integer; dispid 36;
    function EnumLD: Integer; dispid 37;
    function DeleteLD: Integer; dispid 38;
    function GetParamLD: Integer; dispid 39;
    function SetParamLD: Integer; dispid 40;
    function GetCountLD: Integer; dispid 41;
    function GetActiveLD: Integer; dispid 42;
    function SetActiveLD: Integer; dispid 43;
    function GetFreeLDNumber: Integer; dispid 44;
    property ECRInput: WideString readonly dispid 45;
    property ECROutput: WideString readonly dispid 46;
    property BarCode: WideString dispid 47;
    property BaudRate: Integer dispid 48;
    property ComNumber: Integer dispid 49;
    property DrawerNumber: Integer dispid 50;
    property ECRBuild: Integer readonly dispid 51;
    property ECRFlags: Integer readonly dispid 52;
    property ECRMode: Integer readonly dispid 53;
    property ECRModeDescription: WideString readonly dispid 54;
    property ECRSoftDate: TDateTime readonly dispid 55;
    property ECRSoftVersion: WideString readonly dispid 56;
    property FieldName: WideString readonly dispid 57;
    property FieldNumber: Integer dispid 58;
    property FieldSize: Integer dispid 59;
    property FieldType: WordBool dispid 60;
    property FirstLineNumber: Integer dispid 61;
    property IsDrawerOpen: WordBool readonly dispid 62;
    property LastLineNumber: Integer dispid 63;
    property LineData: WideString dispid 64;
    property LineNumber: Integer dispid 65;
    property LogicalNumber: Integer readonly dispid 66;
    property MAXValueOfField: Integer readonly dispid 67;
    property MINValueOfField: Integer readonly dispid 68;
    property PortNumber: Integer dispid 69;
    property ReceiptRibbonLever: WordBool readonly dispid 70;
    property ReceiptRibbonOpticalSensor: WordBool readonly dispid 71;
    property ResultCode: Integer readonly dispid 72;
    property ResultCodeDescription: WideString readonly dispid 73;
    property RowNumber: Integer dispid 74;
    property StringForPrinting: WideString dispid 75;
    property StringQuantity: Integer dispid 76;
    property TableName: WideString readonly dispid 77;
    property TableNumber: Integer dispid 78;
    property Timeout: Integer dispid 79;
    property UCodePage: Integer readonly dispid 80;
    property UDescription: WideString readonly dispid 81;
    property UMajorProtocolVersion: Integer readonly dispid 82;
    property UMajorType: Integer readonly dispid 83;
    property UMinorProtocolVersion: Integer readonly dispid 84;
    property UMinorType: Integer readonly dispid 85;
    property UModel: Integer readonly dispid 86;
    property ValueOfFieldInteger: Integer dispid 87;
    property ValueOfFieldString: WideString dispid 88;
    property FontType: Integer dispid 89;
    property LDBaudrate: Integer dispid 90;
    property LDComNumber: Integer dispid 91;
    property LDCount: Integer readonly dispid 92;
    property LDIndex: Integer dispid 93;
    property LDName: WideString dispid 94;
    property LDNumber: Integer dispid 95;
    property FileVersionMS: Integer readonly dispid 96;
    property FileVersionLS: Integer readonly dispid 97;
    property ServerVersion: WideString readonly dispid 98;
    property LDComputerName: WideString dispid 99;
    property LDTimeout: Integer dispid 100;
    property ComputerName: WideString dispid 101;
    property ServerConnected: WordBool readonly dispid 102;
    property PortLocked: WordBool readonly dispid 103;
    property RunningPeriod: Integer dispid 104;
    property TransferBytes: WideString dispid 105;
    property PowerSourceVoltage: Double readonly dispid 106;
    property PrintWidth: Integer readonly dispid 107;
    property CharWidth: Integer readonly dispid 108;
    property CharHeight: Integer readonly dispid 109;
    property FontCount: Integer readonly dispid 110;
    property ConnectionType: Integer dispid 111;
    property LDConnectionType: Integer dispid 112;
    property TCPPort: Integer dispid 113;
    property LDTCPPort: Integer dispid 114;
    property IPAddress: WideString dispid 115;
    property LDIPAddress: WideString dispid 116;
    property UseIPAddress: WordBool dispid 117;
    property LDUseIPAddress: WordBool dispid 118;
    function SaveLDParams: Integer; dispid 119;
    function ReadTable2: Integer; dispid 120;
    function WriteTable2: Integer; dispid 121;
    function LoadBitmap(const FileName: WideString): Integer; dispid 122;
    function LoadBitmapEx(const FileName: WideString): Integer; dispid 123;
    property FileVersion: WideString readonly dispid 124;
  end;

// *********************************************************************//
// Interface: IS500Srv
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F0AAAB09-E36E-4ECD-8D9E-B4F961A98F42}
// *********************************************************************//
  IS500Srv = interface(IDispatch)
    ['{F0AAAB09-E36E-4ECD-8D9E-B4F961A98F42}']
    function OpenPort(PortNumber: Integer; BaudRate: Integer; Timeout: Integer): Integer; safecall;
    function ClosePort: Integer; safecall;
    function LockPort(PortNumber: Integer): Integer; safecall;
    function UnlockPort: Integer; safecall;
    function SendData(const TxData: WideString): Integer; safecall;
    function Get_RxData: WideString; safecall;
    function Get_FileVersion: WideString; safecall;
    function Get_ResultDescription: WideString; safecall;
    function Get_PortOpened: WordBool; safecall;
    function Get_PortLocked: WordBool; safecall;
    function AdminUnlockPort(PortNumber: Integer): Integer; safecall;
    function AdminUnlockPorts: Integer; safecall;
    function Connect(AAppPID: Integer; const AAppName: WideString; const ACompName: WideString): Integer; safecall;
    function Get_Input: WideString; safecall;
    function Get_Output: WideString; safecall;
    property RxData: WideString read Get_RxData;
    property FileVersion: WideString read Get_FileVersion;
    property ResultDescription: WideString read Get_ResultDescription;
    property PortOpened: WordBool read Get_PortOpened;
    property PortLocked: WordBool read Get_PortLocked;
    property Input: WideString read Get_Input;
    property Output: WideString read Get_Output;
  end;

// *********************************************************************//
// DispIntf:  IS500SrvDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F0AAAB09-E36E-4ECD-8D9E-B4F961A98F42}
// *********************************************************************//
  IS500SrvDisp = dispinterface
    ['{F0AAAB09-E36E-4ECD-8D9E-B4F961A98F42}']
    function OpenPort(PortNumber: Integer; BaudRate: Integer; Timeout: Integer): Integer; dispid 1;
    function ClosePort: Integer; dispid 2;
    function LockPort(PortNumber: Integer): Integer; dispid 3;
    function UnlockPort: Integer; dispid 4;
    function SendData(const TxData: WideString): Integer; dispid 5;
    property RxData: WideString readonly dispid 6;
    property FileVersion: WideString readonly dispid 7;
    property ResultDescription: WideString readonly dispid 8;
    property PortOpened: WordBool readonly dispid 9;
    property PortLocked: WordBool readonly dispid 10;
    function AdminUnlockPort(PortNumber: Integer): Integer; dispid 11;
    function AdminUnlockPorts: Integer; dispid 12;
    function Connect(AAppPID: Integer; const AAppName: WideString; const ACompName: WideString): Integer; dispid 15;
    property Input: WideString readonly dispid 19;
    property Output: WideString readonly dispid 20;
  end;

// *********************************************************************//
// Interface: IS500Drv2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0FA5E5B9-8B9E-410A-BD9D-825E2F734FA8}
// *********************************************************************//
  IS500Drv2 = interface(IS500Drv)
    ['{0FA5E5B9-8B9E-410A-BD9D-825E2F734FA8}']
    function Get_LogFileName: WideString; safecall;
    procedure Set_LogFileName(const Value: WideString); safecall;
    function Get_LogEnabled: WordBool; safecall;
    procedure Set_LogEnabled(Value: WordBool); safecall;
    property LogFileName: WideString read Get_LogFileName write Set_LogFileName;
    property LogEnabled: WordBool read Get_LogEnabled write Set_LogEnabled;
  end;

// *********************************************************************//
// DispIntf:  IS500Drv2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0FA5E5B9-8B9E-410A-BD9D-825E2F734FA8}
// *********************************************************************//
  IS500Drv2Disp = dispinterface
    ['{0FA5E5B9-8B9E-410A-BD9D-825E2F734FA8}']
    property LogFileName: WideString dispid 125;
    property LogEnabled: WordBool dispid 126;
    function ShowProperties: Integer; dispid 1;
    function Connect: Integer; dispid 2;
    function Disconnect: Integer; dispid 3;
    function GetShortECRStatus: Integer; dispid 4;
    function GetECRStatus: Integer; dispid 5;
    function PrintWideString: Integer; dispid 6;
    function Beep: Integer; dispid 7;
    function SetExchangeParam: Integer; dispid 8;
    function GetExchangeParam: Integer; dispid 9;
    function PrintString: Integer; dispid 10;
    function Test: Integer; dispid 11;
    function WriteTable: Integer; dispid 12;
    function ReadTable: Integer; dispid 13;
    function InitTable: Integer; dispid 14;
    function OpenDrawer: Integer; dispid 15;
    function FeedDocument: Integer; dispid 16;
    function InterruptTest: Integer; dispid 17;
    function GetTableStruct: Integer; dispid 18;
    function GetFieldStruct: Integer; dispid 19;
    function PrintStringWithFont: Integer; dispid 20;
    function LoadLineData: Integer; dispid 21;
    function LoadLineDataEx: Integer; dispid 22;
    function WideLoadLineData: Integer; dispid 23;
    function Draw: Integer; dispid 24;
    function DrawEx: Integer; dispid 25;
    function PrintBarCode: Integer; dispid 26;
    function GetDeviceMetrics: Integer; dispid 27;
    function GetFontMetrics: Integer; dispid 28;
    function ServerConnect: Integer; dispid 29;
    function ServerDisconnect: Integer; dispid 30;
    function LockPort: Integer; dispid 31;
    function UnlockPort: Integer; dispid 32;
    function AdminUnlockPort: Integer; dispid 33;
    function AdminUnlockPorts: Integer; dispid 34;
    function ExchangeBytes: Integer; dispid 35;
    function AddLD: Integer; dispid 36;
    function EnumLD: Integer; dispid 37;
    function DeleteLD: Integer; dispid 38;
    function GetParamLD: Integer; dispid 39;
    function SetParamLD: Integer; dispid 40;
    function GetCountLD: Integer; dispid 41;
    function GetActiveLD: Integer; dispid 42;
    function SetActiveLD: Integer; dispid 43;
    function GetFreeLDNumber: Integer; dispid 44;
    property ECRInput: WideString readonly dispid 45;
    property ECROutput: WideString readonly dispid 46;
    property BarCode: WideString dispid 47;
    property BaudRate: Integer dispid 48;
    property ComNumber: Integer dispid 49;
    property DrawerNumber: Integer dispid 50;
    property ECRBuild: Integer readonly dispid 51;
    property ECRFlags: Integer readonly dispid 52;
    property ECRMode: Integer readonly dispid 53;
    property ECRModeDescription: WideString readonly dispid 54;
    property ECRSoftDate: TDateTime readonly dispid 55;
    property ECRSoftVersion: WideString readonly dispid 56;
    property FieldName: WideString readonly dispid 57;
    property FieldNumber: Integer dispid 58;
    property FieldSize: Integer dispid 59;
    property FieldType: WordBool dispid 60;
    property FirstLineNumber: Integer dispid 61;
    property IsDrawerOpen: WordBool readonly dispid 62;
    property LastLineNumber: Integer dispid 63;
    property LineData: WideString dispid 64;
    property LineNumber: Integer dispid 65;
    property LogicalNumber: Integer readonly dispid 66;
    property MAXValueOfField: Integer readonly dispid 67;
    property MINValueOfField: Integer readonly dispid 68;
    property PortNumber: Integer dispid 69;
    property ReceiptRibbonLever: WordBool readonly dispid 70;
    property ReceiptRibbonOpticalSensor: WordBool readonly dispid 71;
    property ResultCode: Integer readonly dispid 72;
    property ResultCodeDescription: WideString readonly dispid 73;
    property RowNumber: Integer dispid 74;
    property StringForPrinting: WideString dispid 75;
    property StringQuantity: Integer dispid 76;
    property TableName: WideString readonly dispid 77;
    property TableNumber: Integer dispid 78;
    property Timeout: Integer dispid 79;
    property UCodePage: Integer readonly dispid 80;
    property UDescription: WideString readonly dispid 81;
    property UMajorProtocolVersion: Integer readonly dispid 82;
    property UMajorType: Integer readonly dispid 83;
    property UMinorProtocolVersion: Integer readonly dispid 84;
    property UMinorType: Integer readonly dispid 85;
    property UModel: Integer readonly dispid 86;
    property ValueOfFieldInteger: Integer dispid 87;
    property ValueOfFieldString: WideString dispid 88;
    property FontType: Integer dispid 89;
    property LDBaudrate: Integer dispid 90;
    property LDComNumber: Integer dispid 91;
    property LDCount: Integer readonly dispid 92;
    property LDIndex: Integer dispid 93;
    property LDName: WideString dispid 94;
    property LDNumber: Integer dispid 95;
    property FileVersionMS: Integer readonly dispid 96;
    property FileVersionLS: Integer readonly dispid 97;
    property ServerVersion: WideString readonly dispid 98;
    property LDComputerName: WideString dispid 99;
    property LDTimeout: Integer dispid 100;
    property ComputerName: WideString dispid 101;
    property ServerConnected: WordBool readonly dispid 102;
    property PortLocked: WordBool readonly dispid 103;
    property RunningPeriod: Integer dispid 104;
    property TransferBytes: WideString dispid 105;
    property PowerSourceVoltage: Double readonly dispid 106;
    property PrintWidth: Integer readonly dispid 107;
    property CharWidth: Integer readonly dispid 108;
    property CharHeight: Integer readonly dispid 109;
    property FontCount: Integer readonly dispid 110;
    property ConnectionType: Integer dispid 111;
    property LDConnectionType: Integer dispid 112;
    property TCPPort: Integer dispid 113;
    property LDTCPPort: Integer dispid 114;
    property IPAddress: WideString dispid 115;
    property LDIPAddress: WideString dispid 116;
    property UseIPAddress: WordBool dispid 117;
    property LDUseIPAddress: WordBool dispid 118;
    function SaveLDParams: Integer; dispid 119;
    function ReadTable2: Integer; dispid 120;
    function WriteTable2: Integer; dispid 121;
    function LoadBitmap(const FileName: WideString): Integer; dispid 122;
    function LoadBitmapEx(const FileName: WideString): Integer; dispid 123;
    property FileVersion: WideString readonly dispid 124;
  end;

// *********************************************************************//
// Interface: IS500Drv3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2DFBF0B4-D23A-4632-BB00-3885F1CBED1F}
// *********************************************************************//
  IS500Drv3 = interface(IS500Drv2)
    ['{2DFBF0B4-D23A-4632-BB00-3885F1CBED1F}']
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const Value: WideString); safecall;
    function LoadBMP: Integer; safecall;
    property FileName: WideString read Get_FileName write Set_FileName;
  end;

// *********************************************************************//
// DispIntf:  IS500Drv3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2DFBF0B4-D23A-4632-BB00-3885F1CBED1F}
// *********************************************************************//
  IS500Drv3Disp = dispinterface
    ['{2DFBF0B4-D23A-4632-BB00-3885F1CBED1F}']
    property FileName: WideString dispid 127;
    function LoadBMP: Integer; dispid 128;
    property LogFileName: WideString dispid 125;
    property LogEnabled: WordBool dispid 126;
    function ShowProperties: Integer; dispid 1;
    function Connect: Integer; dispid 2;
    function Disconnect: Integer; dispid 3;
    function GetShortECRStatus: Integer; dispid 4;
    function GetECRStatus: Integer; dispid 5;
    function PrintWideString: Integer; dispid 6;
    function Beep: Integer; dispid 7;
    function SetExchangeParam: Integer; dispid 8;
    function GetExchangeParam: Integer; dispid 9;
    function PrintString: Integer; dispid 10;
    function Test: Integer; dispid 11;
    function WriteTable: Integer; dispid 12;
    function ReadTable: Integer; dispid 13;
    function InitTable: Integer; dispid 14;
    function OpenDrawer: Integer; dispid 15;
    function FeedDocument: Integer; dispid 16;
    function InterruptTest: Integer; dispid 17;
    function GetTableStruct: Integer; dispid 18;
    function GetFieldStruct: Integer; dispid 19;
    function PrintStringWithFont: Integer; dispid 20;
    function LoadLineData: Integer; dispid 21;
    function LoadLineDataEx: Integer; dispid 22;
    function WideLoadLineData: Integer; dispid 23;
    function Draw: Integer; dispid 24;
    function DrawEx: Integer; dispid 25;
    function PrintBarCode: Integer; dispid 26;
    function GetDeviceMetrics: Integer; dispid 27;
    function GetFontMetrics: Integer; dispid 28;
    function ServerConnect: Integer; dispid 29;
    function ServerDisconnect: Integer; dispid 30;
    function LockPort: Integer; dispid 31;
    function UnlockPort: Integer; dispid 32;
    function AdminUnlockPort: Integer; dispid 33;
    function AdminUnlockPorts: Integer; dispid 34;
    function ExchangeBytes: Integer; dispid 35;
    function AddLD: Integer; dispid 36;
    function EnumLD: Integer; dispid 37;
    function DeleteLD: Integer; dispid 38;
    function GetParamLD: Integer; dispid 39;
    function SetParamLD: Integer; dispid 40;
    function GetCountLD: Integer; dispid 41;
    function GetActiveLD: Integer; dispid 42;
    function SetActiveLD: Integer; dispid 43;
    function GetFreeLDNumber: Integer; dispid 44;
    property ECRInput: WideString readonly dispid 45;
    property ECROutput: WideString readonly dispid 46;
    property BarCode: WideString dispid 47;
    property BaudRate: Integer dispid 48;
    property ComNumber: Integer dispid 49;
    property DrawerNumber: Integer dispid 50;
    property ECRBuild: Integer readonly dispid 51;
    property ECRFlags: Integer readonly dispid 52;
    property ECRMode: Integer readonly dispid 53;
    property ECRModeDescription: WideString readonly dispid 54;
    property ECRSoftDate: TDateTime readonly dispid 55;
    property ECRSoftVersion: WideString readonly dispid 56;
    property FieldName: WideString readonly dispid 57;
    property FieldNumber: Integer dispid 58;
    property FieldSize: Integer dispid 59;
    property FieldType: WordBool dispid 60;
    property FirstLineNumber: Integer dispid 61;
    property IsDrawerOpen: WordBool readonly dispid 62;
    property LastLineNumber: Integer dispid 63;
    property LineData: WideString dispid 64;
    property LineNumber: Integer dispid 65;
    property LogicalNumber: Integer readonly dispid 66;
    property MAXValueOfField: Integer readonly dispid 67;
    property MINValueOfField: Integer readonly dispid 68;
    property PortNumber: Integer dispid 69;
    property ReceiptRibbonLever: WordBool readonly dispid 70;
    property ReceiptRibbonOpticalSensor: WordBool readonly dispid 71;
    property ResultCode: Integer readonly dispid 72;
    property ResultCodeDescription: WideString readonly dispid 73;
    property RowNumber: Integer dispid 74;
    property StringForPrinting: WideString dispid 75;
    property StringQuantity: Integer dispid 76;
    property TableName: WideString readonly dispid 77;
    property TableNumber: Integer dispid 78;
    property Timeout: Integer dispid 79;
    property UCodePage: Integer readonly dispid 80;
    property UDescription: WideString readonly dispid 81;
    property UMajorProtocolVersion: Integer readonly dispid 82;
    property UMajorType: Integer readonly dispid 83;
    property UMinorProtocolVersion: Integer readonly dispid 84;
    property UMinorType: Integer readonly dispid 85;
    property UModel: Integer readonly dispid 86;
    property ValueOfFieldInteger: Integer dispid 87;
    property ValueOfFieldString: WideString dispid 88;
    property FontType: Integer dispid 89;
    property LDBaudrate: Integer dispid 90;
    property LDComNumber: Integer dispid 91;
    property LDCount: Integer readonly dispid 92;
    property LDIndex: Integer dispid 93;
    property LDName: WideString dispid 94;
    property LDNumber: Integer dispid 95;
    property FileVersionMS: Integer readonly dispid 96;
    property FileVersionLS: Integer readonly dispid 97;
    property ServerVersion: WideString readonly dispid 98;
    property LDComputerName: WideString dispid 99;
    property LDTimeout: Integer dispid 100;
    property ComputerName: WideString dispid 101;
    property ServerConnected: WordBool readonly dispid 102;
    property PortLocked: WordBool readonly dispid 103;
    property RunningPeriod: Integer dispid 104;
    property TransferBytes: WideString dispid 105;
    property PowerSourceVoltage: Double readonly dispid 106;
    property PrintWidth: Integer readonly dispid 107;
    property CharWidth: Integer readonly dispid 108;
    property CharHeight: Integer readonly dispid 109;
    property FontCount: Integer readonly dispid 110;
    property ConnectionType: Integer dispid 111;
    property LDConnectionType: Integer dispid 112;
    property TCPPort: Integer dispid 113;
    property LDTCPPort: Integer dispid 114;
    property IPAddress: WideString dispid 115;
    property LDIPAddress: WideString dispid 116;
    property UseIPAddress: WordBool dispid 117;
    property LDUseIPAddress: WordBool dispid 118;
    function SaveLDParams: Integer; dispid 119;
    function ReadTable2: Integer; dispid 120;
    function WriteTable2: Integer; dispid 121;
    function LoadBitmap(const FileName: WideString): Integer; dispid 122;
    function LoadBitmapEx(const FileName: WideString): Integer; dispid 123;
    property FileVersion: WideString readonly dispid 124;
  end;

// *********************************************************************//
// Interface: IS500Drv4
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7162EE36-6DE2-445D-BA92-085BC6213996}
// *********************************************************************//
  IS500Drv4 = interface(IS500Drv3)
    ['{7162EE36-6DE2-445D-BA92-085BC6213996}']
    function SaveParams: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IS500Drv4Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7162EE36-6DE2-445D-BA92-085BC6213996}
// *********************************************************************//
  IS500Drv4Disp = dispinterface
    ['{7162EE36-6DE2-445D-BA92-085BC6213996}']
    function SaveParams: Integer; dispid 129;
    property FileName: WideString dispid 127;
    function LoadBMP: Integer; dispid 128;
    property LogFileName: WideString dispid 125;
    property LogEnabled: WordBool dispid 126;
    function ShowProperties: Integer; dispid 1;
    function Connect: Integer; dispid 2;
    function Disconnect: Integer; dispid 3;
    function GetShortECRStatus: Integer; dispid 4;
    function GetECRStatus: Integer; dispid 5;
    function PrintWideString: Integer; dispid 6;
    function Beep: Integer; dispid 7;
    function SetExchangeParam: Integer; dispid 8;
    function GetExchangeParam: Integer; dispid 9;
    function PrintString: Integer; dispid 10;
    function Test: Integer; dispid 11;
    function WriteTable: Integer; dispid 12;
    function ReadTable: Integer; dispid 13;
    function InitTable: Integer; dispid 14;
    function OpenDrawer: Integer; dispid 15;
    function FeedDocument: Integer; dispid 16;
    function InterruptTest: Integer; dispid 17;
    function GetTableStruct: Integer; dispid 18;
    function GetFieldStruct: Integer; dispid 19;
    function PrintStringWithFont: Integer; dispid 20;
    function LoadLineData: Integer; dispid 21;
    function LoadLineDataEx: Integer; dispid 22;
    function WideLoadLineData: Integer; dispid 23;
    function Draw: Integer; dispid 24;
    function DrawEx: Integer; dispid 25;
    function PrintBarCode: Integer; dispid 26;
    function GetDeviceMetrics: Integer; dispid 27;
    function GetFontMetrics: Integer; dispid 28;
    function ServerConnect: Integer; dispid 29;
    function ServerDisconnect: Integer; dispid 30;
    function LockPort: Integer; dispid 31;
    function UnlockPort: Integer; dispid 32;
    function AdminUnlockPort: Integer; dispid 33;
    function AdminUnlockPorts: Integer; dispid 34;
    function ExchangeBytes: Integer; dispid 35;
    function AddLD: Integer; dispid 36;
    function EnumLD: Integer; dispid 37;
    function DeleteLD: Integer; dispid 38;
    function GetParamLD: Integer; dispid 39;
    function SetParamLD: Integer; dispid 40;
    function GetCountLD: Integer; dispid 41;
    function GetActiveLD: Integer; dispid 42;
    function SetActiveLD: Integer; dispid 43;
    function GetFreeLDNumber: Integer; dispid 44;
    property ECRInput: WideString readonly dispid 45;
    property ECROutput: WideString readonly dispid 46;
    property BarCode: WideString dispid 47;
    property BaudRate: Integer dispid 48;
    property ComNumber: Integer dispid 49;
    property DrawerNumber: Integer dispid 50;
    property ECRBuild: Integer readonly dispid 51;
    property ECRFlags: Integer readonly dispid 52;
    property ECRMode: Integer readonly dispid 53;
    property ECRModeDescription: WideString readonly dispid 54;
    property ECRSoftDate: TDateTime readonly dispid 55;
    property ECRSoftVersion: WideString readonly dispid 56;
    property FieldName: WideString readonly dispid 57;
    property FieldNumber: Integer dispid 58;
    property FieldSize: Integer dispid 59;
    property FieldType: WordBool dispid 60;
    property FirstLineNumber: Integer dispid 61;
    property IsDrawerOpen: WordBool readonly dispid 62;
    property LastLineNumber: Integer dispid 63;
    property LineData: WideString dispid 64;
    property LineNumber: Integer dispid 65;
    property LogicalNumber: Integer readonly dispid 66;
    property MAXValueOfField: Integer readonly dispid 67;
    property MINValueOfField: Integer readonly dispid 68;
    property PortNumber: Integer dispid 69;
    property ReceiptRibbonLever: WordBool readonly dispid 70;
    property ReceiptRibbonOpticalSensor: WordBool readonly dispid 71;
    property ResultCode: Integer readonly dispid 72;
    property ResultCodeDescription: WideString readonly dispid 73;
    property RowNumber: Integer dispid 74;
    property StringForPrinting: WideString dispid 75;
    property StringQuantity: Integer dispid 76;
    property TableName: WideString readonly dispid 77;
    property TableNumber: Integer dispid 78;
    property Timeout: Integer dispid 79;
    property UCodePage: Integer readonly dispid 80;
    property UDescription: WideString readonly dispid 81;
    property UMajorProtocolVersion: Integer readonly dispid 82;
    property UMajorType: Integer readonly dispid 83;
    property UMinorProtocolVersion: Integer readonly dispid 84;
    property UMinorType: Integer readonly dispid 85;
    property UModel: Integer readonly dispid 86;
    property ValueOfFieldInteger: Integer dispid 87;
    property ValueOfFieldString: WideString dispid 88;
    property FontType: Integer dispid 89;
    property LDBaudrate: Integer dispid 90;
    property LDComNumber: Integer dispid 91;
    property LDCount: Integer readonly dispid 92;
    property LDIndex: Integer dispid 93;
    property LDName: WideString dispid 94;
    property LDNumber: Integer dispid 95;
    property FileVersionMS: Integer readonly dispid 96;
    property FileVersionLS: Integer readonly dispid 97;
    property ServerVersion: WideString readonly dispid 98;
    property LDComputerName: WideString dispid 99;
    property LDTimeout: Integer dispid 100;
    property ComputerName: WideString dispid 101;
    property ServerConnected: WordBool readonly dispid 102;
    property PortLocked: WordBool readonly dispid 103;
    property RunningPeriod: Integer dispid 104;
    property TransferBytes: WideString dispid 105;
    property PowerSourceVoltage: Double readonly dispid 106;
    property PrintWidth: Integer readonly dispid 107;
    property CharWidth: Integer readonly dispid 108;
    property CharHeight: Integer readonly dispid 109;
    property FontCount: Integer readonly dispid 110;
    property ConnectionType: Integer dispid 111;
    property LDConnectionType: Integer dispid 112;
    property TCPPort: Integer dispid 113;
    property LDTCPPort: Integer dispid 114;
    property IPAddress: WideString dispid 115;
    property LDIPAddress: WideString dispid 116;
    property UseIPAddress: WordBool dispid 117;
    property LDUseIPAddress: WordBool dispid 118;
    function SaveLDParams: Integer; dispid 119;
    function ReadTable2: Integer; dispid 120;
    function WriteTable2: Integer; dispid 121;
    function LoadBitmap(const FileName: WideString): Integer; dispid 122;
    function LoadBitmapEx(const FileName: WideString): Integer; dispid 123;
    property FileVersion: WideString readonly dispid 124;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TS500Drv
// Help String      : �����-�: ������� "�����-500"
// Default Interface: IS500Drv4
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (38) CanCreate Licensed Control
// *********************************************************************//
  TS500Drv = class(TOleControl)
  private
    FIntf: IS500Drv4;
    function  GetControlInterface: IS500Drv4;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function ShowProperties: Integer;
    function Connect: Integer;
    function Disconnect: Integer;
    function GetShortECRStatus: Integer;
    function GetECRStatus: Integer;
    function PrintWideString: Integer;
    function Beep: Integer;
    function SetExchangeParam: Integer;
    function GetExchangeParam: Integer;
    function PrintString: Integer;
    function Test: Integer;
    function WriteTable: Integer;
    function ReadTable: Integer;
    function InitTable: Integer;
    function OpenDrawer: Integer;
    function FeedDocument: Integer;
    function InterruptTest: Integer;
    function GetTableStruct: Integer;
    function GetFieldStruct: Integer;
    function PrintStringWithFont: Integer;
    function LoadLineData: Integer;
    function LoadLineDataEx: Integer;
    function WideLoadLineData: Integer;
    function Draw: Integer;
    function DrawEx: Integer;
    function PrintBarCode: Integer;
    function GetDeviceMetrics: Integer;
    function GetFontMetrics: Integer;
    function ServerConnect: Integer;
    function ServerDisconnect: Integer;
    function LockPort: Integer;
    function UnlockPort: Integer;
    function AdminUnlockPort: Integer;
    function AdminUnlockPorts: Integer;
    function ExchangeBytes: Integer;
    function AddLD: Integer;
    function EnumLD: Integer;
    function DeleteLD: Integer;
    function GetParamLD: Integer;
    function SetParamLD: Integer;
    function GetCountLD: Integer;
    function GetActiveLD: Integer;
    function SetActiveLD: Integer;
    function GetFreeLDNumber: Integer;
    function SaveLDParams: Integer;
    function ReadTable2: Integer;
    function WriteTable2: Integer;
    function LoadBitmap(const FileName: WideString): Integer;
    function LoadBitmapEx(const FileName: WideString): Integer;
    function LoadBMP: Integer;
    function SaveParams: Integer;
    property  ControlInterface: IS500Drv4 read GetControlInterface;
    property  DefaultInterface: IS500Drv4 read GetControlInterface;
    property ECRInput: WideString index 45 read GetWideStringProp;
    property ECROutput: WideString index 46 read GetWideStringProp;
    property ECRBuild: Integer index 51 read GetIntegerProp;
    property ECRFlags: Integer index 52 read GetIntegerProp;
    property ECRMode: Integer index 53 read GetIntegerProp;
    property ECRModeDescription: WideString index 54 read GetWideStringProp;
    property ECRSoftDate: TDateTime index 55 read GetTDateTimeProp;
    property ECRSoftVersion: WideString index 56 read GetWideStringProp;
    property FieldName: WideString index 57 read GetWideStringProp;
    property IsDrawerOpen: WordBool index 62 read GetWordBoolProp;
    property LogicalNumber: Integer index 66 read GetIntegerProp;
    property MAXValueOfField: Integer index 67 read GetIntegerProp;
    property MINValueOfField: Integer index 68 read GetIntegerProp;
    property ReceiptRibbonLever: WordBool index 70 read GetWordBoolProp;
    property ReceiptRibbonOpticalSensor: WordBool index 71 read GetWordBoolProp;
    property ResultCode: Integer index 72 read GetIntegerProp;
    property ResultCodeDescription: WideString index 73 read GetWideStringProp;
    property TableName: WideString index 77 read GetWideStringProp;
    property UCodePage: Integer index 80 read GetIntegerProp;
    property UDescription: WideString index 81 read GetWideStringProp;
    property UMajorProtocolVersion: Integer index 82 read GetIntegerProp;
    property UMajorType: Integer index 83 read GetIntegerProp;
    property UMinorProtocolVersion: Integer index 84 read GetIntegerProp;
    property UMinorType: Integer index 85 read GetIntegerProp;
    property UModel: Integer index 86 read GetIntegerProp;
    property LDCount: Integer index 92 read GetIntegerProp;
    property FileVersionMS: Integer index 96 read GetIntegerProp;
    property FileVersionLS: Integer index 97 read GetIntegerProp;
    property ServerVersion: WideString index 98 read GetWideStringProp;
    property ServerConnected: WordBool index 102 read GetWordBoolProp;
    property PortLocked: WordBool index 103 read GetWordBoolProp;
    property PowerSourceVoltage: Double index 106 read GetDoubleProp;
    property PrintWidth: Integer index 107 read GetIntegerProp;
    property CharWidth: Integer index 108 read GetIntegerProp;
    property CharHeight: Integer index 109 read GetIntegerProp;
    property FontCount: Integer index 110 read GetIntegerProp;
    property FileVersion: WideString index 124 read GetWideStringProp;
  published
    property Anchors;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property BarCode: WideString index 47 read GetWideStringProp write SetWideStringProp stored False;
    property BaudRate: Integer index 48 read GetIntegerProp write SetIntegerProp stored False;
    property ComNumber: Integer index 49 read GetIntegerProp write SetIntegerProp stored False;
    property DrawerNumber: Integer index 50 read GetIntegerProp write SetIntegerProp stored False;
    property FieldNumber: Integer index 58 read GetIntegerProp write SetIntegerProp stored False;
    property FieldSize: Integer index 59 read GetIntegerProp write SetIntegerProp stored False;
    property FieldType: WordBool index 60 read GetWordBoolProp write SetWordBoolProp stored False;
    property FirstLineNumber: Integer index 61 read GetIntegerProp write SetIntegerProp stored False;
    property LastLineNumber: Integer index 63 read GetIntegerProp write SetIntegerProp stored False;
    property LineData: WideString index 64 read GetWideStringProp write SetWideStringProp stored False;
    property LineNumber: Integer index 65 read GetIntegerProp write SetIntegerProp stored False;
    property PortNumber: Integer index 69 read GetIntegerProp write SetIntegerProp stored False;
    property RowNumber: Integer index 74 read GetIntegerProp write SetIntegerProp stored False;
    property StringForPrinting: WideString index 75 read GetWideStringProp write SetWideStringProp stored False;
    property StringQuantity: Integer index 76 read GetIntegerProp write SetIntegerProp stored False;
    property TableNumber: Integer index 78 read GetIntegerProp write SetIntegerProp stored False;
    property Timeout: Integer index 79 read GetIntegerProp write SetIntegerProp stored False;
    property ValueOfFieldInteger: Integer index 87 read GetIntegerProp write SetIntegerProp stored False;
    property ValueOfFieldString: WideString index 88 read GetWideStringProp write SetWideStringProp stored False;
    property FontType: Integer index 89 read GetIntegerProp write SetIntegerProp stored False;
    property LDBaudrate: Integer index 90 read GetIntegerProp write SetIntegerProp stored False;
    property LDComNumber: Integer index 91 read GetIntegerProp write SetIntegerProp stored False;
    property LDIndex: Integer index 93 read GetIntegerProp write SetIntegerProp stored False;
    property LDName: WideString index 94 read GetWideStringProp write SetWideStringProp stored False;
    property LDNumber: Integer index 95 read GetIntegerProp write SetIntegerProp stored False;
    property LDComputerName: WideString index 99 read GetWideStringProp write SetWideStringProp stored False;
    property LDTimeout: Integer index 100 read GetIntegerProp write SetIntegerProp stored False;
    property ComputerName: WideString index 101 read GetWideStringProp write SetWideStringProp stored False;
    property RunningPeriod: Integer index 104 read GetIntegerProp write SetIntegerProp stored False;
    property TransferBytes: WideString index 105 read GetWideStringProp write SetWideStringProp stored False;
    property ConnectionType: Integer index 111 read GetIntegerProp write SetIntegerProp stored False;
    property LDConnectionType: Integer index 112 read GetIntegerProp write SetIntegerProp stored False;
    property TCPPort: Integer index 113 read GetIntegerProp write SetIntegerProp stored False;
    property LDTCPPort: Integer index 114 read GetIntegerProp write SetIntegerProp stored False;
    property IPAddress: WideString index 115 read GetWideStringProp write SetWideStringProp stored False;
    property LDIPAddress: WideString index 116 read GetWideStringProp write SetWideStringProp stored False;
    property UseIPAddress: WordBool index 117 read GetWordBoolProp write SetWordBoolProp stored False;
    property LDUseIPAddress: WordBool index 118 read GetWordBoolProp write SetWordBoolProp stored False;
    property LogFileName: WideString index 125 read GetWideStringProp write SetWideStringProp stored False;
    property LogEnabled: WordBool index 126 read GetWordBoolProp write SetWordBoolProp stored False;
    property FileName: WideString index 127 read GetWideStringProp write SetWideStringProp stored False;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

procedure TS500Drv.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID:      '{4D959331-0703-402F-95D8-D3BE00EEF8BA}';
    EventIID:     '';
    EventCount:   0;
    EventDispIDs: nil;
    LicenseKey:   nil (*HR:$00000000*);
    Flags:        $00000000;
    Version:      500);
begin
  ControlData := @CControlData;
end;

procedure TS500Drv.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IS500Drv4;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TS500Drv.GetControlInterface: IS500Drv4;
begin
  CreateControl;
  Result := FIntf;
end;

function TS500Drv.ShowProperties: Integer;
begin
  Result := DefaultInterface.ShowProperties;
end;

function TS500Drv.Connect: Integer;
begin
  Result := DefaultInterface.Connect;
end;

function TS500Drv.Disconnect: Integer;
begin
  Result := DefaultInterface.Disconnect;
end;

function TS500Drv.GetShortECRStatus: Integer;
begin
  Result := DefaultInterface.GetShortECRStatus;
end;

function TS500Drv.GetECRStatus: Integer;
begin
  Result := DefaultInterface.GetECRStatus;
end;

function TS500Drv.PrintWideString: Integer;
begin
  Result := DefaultInterface.PrintWideString;
end;

function TS500Drv.Beep: Integer;
begin
  Result := DefaultInterface.Beep;
end;

function TS500Drv.SetExchangeParam: Integer;
begin
  Result := DefaultInterface.SetExchangeParam;
end;

function TS500Drv.GetExchangeParam: Integer;
begin
  Result := DefaultInterface.GetExchangeParam;
end;

function TS500Drv.PrintString: Integer;
begin
  Result := DefaultInterface.PrintString;
end;

function TS500Drv.Test: Integer;
begin
  Result := DefaultInterface.Test;
end;

function TS500Drv.WriteTable: Integer;
begin
  Result := DefaultInterface.WriteTable;
end;

function TS500Drv.ReadTable: Integer;
begin
  Result := DefaultInterface.ReadTable;
end;

function TS500Drv.InitTable: Integer;
begin
  Result := DefaultInterface.InitTable;
end;

function TS500Drv.OpenDrawer: Integer;
begin
  Result := DefaultInterface.OpenDrawer;
end;

function TS500Drv.FeedDocument: Integer;
begin
  Result := DefaultInterface.FeedDocument;
end;

function TS500Drv.InterruptTest: Integer;
begin
  Result := DefaultInterface.InterruptTest;
end;

function TS500Drv.GetTableStruct: Integer;
begin
  Result := DefaultInterface.GetTableStruct;
end;

function TS500Drv.GetFieldStruct: Integer;
begin
  Result := DefaultInterface.GetFieldStruct;
end;

function TS500Drv.PrintStringWithFont: Integer;
begin
  Result := DefaultInterface.PrintStringWithFont;
end;

function TS500Drv.LoadLineData: Integer;
begin
  Result := DefaultInterface.LoadLineData;
end;

function TS500Drv.LoadLineDataEx: Integer;
begin
  Result := DefaultInterface.LoadLineDataEx;
end;

function TS500Drv.WideLoadLineData: Integer;
begin
  Result := DefaultInterface.WideLoadLineData;
end;

function TS500Drv.Draw: Integer;
begin
  Result := DefaultInterface.Draw;
end;

function TS500Drv.DrawEx: Integer;
begin
  Result := DefaultInterface.DrawEx;
end;

function TS500Drv.PrintBarCode: Integer;
begin
  Result := DefaultInterface.PrintBarCode;
end;

function TS500Drv.GetDeviceMetrics: Integer;
begin
  Result := DefaultInterface.GetDeviceMetrics;
end;

function TS500Drv.GetFontMetrics: Integer;
begin
  Result := DefaultInterface.GetFontMetrics;
end;

function TS500Drv.ServerConnect: Integer;
begin
  Result := DefaultInterface.ServerConnect;
end;

function TS500Drv.ServerDisconnect: Integer;
begin
  Result := DefaultInterface.ServerDisconnect;
end;

function TS500Drv.LockPort: Integer;
begin
  Result := DefaultInterface.LockPort;
end;

function TS500Drv.UnlockPort: Integer;
begin
  Result := DefaultInterface.UnlockPort;
end;

function TS500Drv.AdminUnlockPort: Integer;
begin
  Result := DefaultInterface.AdminUnlockPort;
end;

function TS500Drv.AdminUnlockPorts: Integer;
begin
  Result := DefaultInterface.AdminUnlockPorts;
end;

function TS500Drv.ExchangeBytes: Integer;
begin
  Result := DefaultInterface.ExchangeBytes;
end;

function TS500Drv.AddLD: Integer;
begin
  Result := DefaultInterface.AddLD;
end;

function TS500Drv.EnumLD: Integer;
begin
  Result := DefaultInterface.EnumLD;
end;

function TS500Drv.DeleteLD: Integer;
begin
  Result := DefaultInterface.DeleteLD;
end;

function TS500Drv.GetParamLD: Integer;
begin
  Result := DefaultInterface.GetParamLD;
end;

function TS500Drv.SetParamLD: Integer;
begin
  Result := DefaultInterface.SetParamLD;
end;

function TS500Drv.GetCountLD: Integer;
begin
  Result := DefaultInterface.GetCountLD;
end;

function TS500Drv.GetActiveLD: Integer;
begin
  Result := DefaultInterface.GetActiveLD;
end;

function TS500Drv.SetActiveLD: Integer;
begin
  Result := DefaultInterface.SetActiveLD;
end;

function TS500Drv.GetFreeLDNumber: Integer;
begin
  Result := DefaultInterface.GetFreeLDNumber;
end;

function TS500Drv.SaveLDParams: Integer;
begin
  Result := DefaultInterface.SaveLDParams;
end;

function TS500Drv.ReadTable2: Integer;
begin
  Result := DefaultInterface.ReadTable2;
end;

function TS500Drv.WriteTable2: Integer;
begin
  Result := DefaultInterface.WriteTable2;
end;

function TS500Drv.LoadBitmap(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.LoadBitmap(FileName);
end;

function TS500Drv.LoadBitmapEx(const FileName: WideString): Integer;
begin
  Result := DefaultInterface.LoadBitmapEx(FileName);
end;

function TS500Drv.LoadBMP: Integer;
begin
  Result := DefaultInterface.LoadBMP;
end;

function TS500Drv.SaveParams: Integer;
begin
  Result := DefaultInterface.SaveParams;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TS500Drv]);
end;

end.
