object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 740
  Width = 1065
  object DSBrand: TDataSource
    DataSet = Brand
    Left = 232
    Top = 72
  end
  object DSCalc: TDataSource
    AutoEdit = False
    DataSet = Calc
    OnStateChange = DSCalcStateChange
    Left = 232
    Top = 120
  end
  object DSDocs: TDataSource
    DataSet = Docs
    OnDataChange = DSDataChange
    Left = 232
    Top = 168
  end
  object DSDoctype: TDataSource
    DataSet = DocType
    Left = 232
    Top = 216
  end
  object DSFood: TDataSource
    DataSet = Food
    Left = 240
    Top = 264
  end
  object DSReceiptDetail: TDataSource
    DataSet = RecieptDetail
    OnDataChange = DSRecieptDetailChange
    Left = 232
    Top = 504
  end
  object DSClients: TDataSource
    DataSet = Clients
    Left = 465
    Top = 416
  end
  object DSMesures: TDataSource
    DataSet = Mesures
    Left = 465
    Top = 464
  end
  object DSInterchange: TDataSource
    DataSet = InterChange
    Left = 465
    Top = 568
  end
  object DSConfPrn: TDataSource
    DataSet = ConfPrn
    Left = 449
    Top = 328
  end
  object DSOperations: TDataSource
    DataSet = Operations
    Left = 232
    Top = 408
  end
  object DSFoodGroups: TDataSource
    DataSet = FoodGroups
    OnDataChange = DSDataChange
    Left = 697
    Top = 224
  end
  object DSTotalSail: TDataSource
    DataSet = TotalSail
    Left = 694
    Top = 280
  end
  object DSTotalSailDetail: TDataSource
    DataSet = TotalSaleDetail
    Left = 694
    Top = 328
  end
  object DSCompany: TDataSource
    DataSet = Company
    Left = 457
    Top = 72
  end
  object DSDepartments: TDataSource
    DataSet = Departments
    OnDataChange = DSDataChange
    Left = 457
    Top = 120
  end
  object DSWareHouse: TDataSource
    DataSet = WareHouse
    OnDataChange = DSDataChange
    Left = 694
    Top = 144
  end
  object DSkkm: TDataSource
    DataSet = KKM
    Left = 694
    Top = 392
  end
  object DSFoodAll: TDataSource
    DataSet = FoodAll
    Left = 686
    Top = 72
  end
  object DSBalances: TDataSource
    DataSet = Balances
    OnDataChange = DSBalancesDataChange
    Left = 726
    Top = 448
  end
  object DSFoodHistory: TDataSource
    DataSet = FoodHistory
    Left = 726
    Top = 504
  end
  object DSFoodHistoryValues: TDataSource
    DataSet = FoodHistoryValues
    Left = 854
    Top = 408
  end
  object DSWriteOff: TDataSource
    DataSet = WriteOff
    Left = 950
    Top = 232
  end
  object DSWriteOffDetail: TDataSource
    DataSet = WriteOffDetail
    Left = 950
    Top = 296
  end
  object DSWriteOffReasons: TDataSource
    DataSet = WriteOffReasons
    Left = 949
    Top = 352
  end
  object frxReport1: TfrxReport
    Version = '5.4.4'
    DotMatrixReport = False
    IniFile = '\Template\config'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 9
    ReportOptions.CreateDate = 40040.883840057890000000
    ReportOptions.LastChange = 42461.476892002310000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnStartReport = 'frxReport1OnStartReport'
    OnStopReport = 'frxReport1OnStopReport'
    Left = 845
    Top = 16
  end
  object DSTransfer: TDataSource
    DataSet = Transfer
    Left = 457
    Top = 168
  end
  object DSTransferDetail: TDataSource
    DataSet = TransferDetail
    Left = 457
    Top = 216
  end
  object DSFoodDep: TDataSource
    DataSet = FoodDep
    Left = 457
    Top = 272
  end
  object DSBalancesDetail: TDataSource
    DataSet = BalancesDetail
    Left = 949
    Top = 456
  end
  object DSDocsAll: TDataSource
    DataSet = DocsAll
    Left = 465
    Top = 512
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 960
    Top = 56
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 960
    Top = 8
  end
  object DSClientFoodPrice: TDataSource
    DataSet = ClientFoodPrice
    Left = 232
    Top = 664
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\WORK\CookAssistant\BASE\MAIN.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'ExtendedMetadata=True'
      'DriverID=FB'
      'CharacterSet=WIN1251'
      'PageSize=4096')
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.AutoCommitUpdates = True
    Connected = True
    LoginPrompt = False
    Transaction = TrRead
    UpdateTransaction = TrWrite
    BeforeConnect = FDConnection1BeforeConnect
    Left = 24
    Top = 136
  end
  object Docs: TFDQuery
    BeforePost = DocsBeforePost
    OnNewRecord = DocsNewRecord
    MasterSource = DSDoctype
    MasterFields = 'ID'
    DetailFields = 'DOCTYPE_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.AutoCommitUpdates = True
    UpdateObject = DocsUpdateSQL
    SQL.Strings = (
      'SELECT'
      '    docs.id,'
      '    docs.registered,'
      '    docs.doctype_id,'
      '    docs.code,'
      '    docs.docdate,'
      '    docs.client_id,'
      '    docs.dep_id,'
      '    docs.company_id,'
      '    docs.warehouse_id,'
      '    iif('
      '    Exists('
      '    SELECT'
      '        1'
      '    FROM '
      '        menudetail m0'
      '        INNER JOIN menusubdetail sm0 ON ( m0.id = sm0.detail_id)'
      '    WHERE'
      '       m0.doc_id = docs.id'
      '       and sm0.price=0'
      '    ),1 ,0 ) tag1,'
      '    iif('
      '    Exists(SELECT'
      '        1'
      '    FROM '
      '        menudetail m0'
      '        INNER JOIN menusubdetail sm0 ON ( m0.id = sm0.detail_id)'
      '    WHERE'
      '       m0.doc_id = docs.id), 0, 1) tag2,'
      '    case'
      '    when docs.doctype_id=2 then'
      
        '        (select sum(brand_price*wgt) from menudetail where menud' +
        'etail.doc_id=docs.id)'
      '    when docs.doctype_id=1 then'
      
        '        (select sum(summa) from receiptdetail where doc_id=docs.' +
        'id)'
      '    when docs.doctype_id=5 then'
      
        '        (select sum(d.summa) from totalsaildetail d inner join t' +
        'otalsail h ON d.totalsail_id=h.id where h.doc_id=docs.id)'
      '    when docs.doctype_id=6 then'
      
        '        (select sum(wd.summa) from write_off_detail wd inner joi' +
        'n write_off wh ON wd.detail_id=wh.id where wh.doc_id=docs.id)'
      '    when docs.doctype_id=7 then'
      
        '        (select sum(td.summa) from transferdetail td inner join ' +
        'transfer tr ON td.host_id=tr.id where tr.doc_id=docs.id)'
      '    when docs.doctype_id=4 then'
      
        '        (select sum(cd.price_sell*cd.qty) from checkdetail cd in' +
        'ner join "CHECK" chk on (cd.check_id=chk.id) where chk.doc_id=do' +
        'cs.id)'
      '    else'
      '        0'
      '    end summa'
      'FROM '
      '   docs'
      'where'
      '   docs.docdate between :BD AND :ED'
      '   and docs.doctype_id=:id'
      '   and docs.dep_id = :pardepid')
    Left = 88
    Top = 160
    ParamData = <
      item
        Name = 'BD'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 40179d
      end
      item
        Name = 'ED'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 42370d
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end
      item
        Name = 'PARDEPID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object DocsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_DOCS_ID'
    end
    object DocsCODE: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object DocsDOCDATE: TSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DOCDATE'
      Origin = 'DOCDATE'
    end
    object DocslkClient: TStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldKind = fkLookup
      FieldName = 'lkClient'
      LookupDataSet = Clients
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'CLIENT_ID'
      Size = 50
      Lookup = True
    end
    object DocsSUMMA: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
      Origin = 'SUMMA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object DocsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
      Origin = 'DEP_ID'
      Visible = False
    end
    object DocsCOMPANY_ID: TIntegerField
      FieldName = 'COMPANY_ID'
      Origin = 'COMPANY_ID'
      Visible = False
    end
    object DocsWAREHOUSE_ID: TIntegerField
      FieldName = 'WAREHOUSE_ID'
      Origin = 'WAREHOUSE_ID'
      Visible = False
    end
    object DocsTAG1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TAG1'
      Origin = 'TAG1'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object DocsTAG2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TAG2'
      Origin = 'TAG2'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object DocsREGISTERED: TSmallintField
      FieldName = 'REGISTERED'
      Origin = 'REGISTERED'
      Visible = False
    end
    object DocsDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
      Origin = 'DOCTYPE_ID'
      Visible = False
    end
    object DocsCLIENT_ID: TIntegerField
      FieldName = 'CLIENT_ID'
      Origin = 'CLIENT_ID'
      Visible = False
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'D:\WORK\CookAssistant\fbclient.dll'
    Left = 24
    Top = 192
  end
  object DocType: TFDQuery
    IndexesActive = False
    Connection = FDConnection1
    Transaction = TrRead
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    CODE'
      'FROM'
      '    DOCTYPE ')
    Left = 88
    Top = 208
    object DocTypeid: TIntegerField
      FieldName = 'ID'
    end
    object DocTypeDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object DocTypeCODE: TStringField
      FieldName = 'CODE'
      Origin = 'CODE'
      Required = True
      FixedChar = True
      Size = 12
    end
  end
  object TrRead: TFDTransaction
    Options.ReadOnly = True
    Options.Params.Strings = (
      'read'
      'rec_version'
      'read_committed')
    Options.AutoStop = False
    Options.EnableNested = False
    Connection = FDConnection1
    Left = 24
    Top = 248
  end
  object TrWrite: TFDTransaction
    Options.Params.Strings = (
      'write'
      'nowait'
      'concurrency')
    Connection = FDConnection1
    Left = 24
    Top = 302
  end
  object Calc: TFDQuery
    IndexesActive = False
    MasterSource = DSBrand
    MasterFields = 'ID'
    DetailFields = 'BRAND_ID'
    Connection = FDConnection1
    Transaction = TrRead
    UpdateTransaction = TrWrite
    FetchOptions.AssignedValues = [evCache, evDetailServerCascade]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.UpdateTableName = 'CALC'
    SQL.Strings = (
      'SELECT'
      '    C.ID,'
      '    C.BRAND_ID,'
      '    C.FOOD_ID,'
      '    C.QTY,'
      '    F.MES'
      'FROM'
      '    calc C left join food F on C.FOOD_ID=F.ID'
      'WHERE'
      '    BRAND_ID=:ID')
    Left = 88
    Top = 112
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 2
      end>
    object CalcID: TFDAutoIncField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_CALC_ID'
    end
    object CalcBRAND_ID: TIntegerField
      FieldName = 'BRAND_ID'
      Origin = 'BRAND_ID'
      Required = True
      Visible = False
    end
    object CalcFOOD_ID: TIntegerField
      FieldName = 'FOOD_ID'
      Origin = 'FOOD_ID'
      Required = True
      Visible = False
    end
    object CalcQTY: TBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 3
    end
    object CalclkFood: TStringField
      DisplayLabel = #1048#1085#1075#1088#1080#1076#1080#1077#1085#1090
      FieldKind = fkLookup
      FieldName = 'lkFood'
      LookupDataSet = FoodAll
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'FOOD_ID'
      Size = 100
      Lookup = True
    end
    object CalcMES: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object CalclkMES: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMES'
      LookupDataSet = Mesures
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'MES'
      Lookup = True
    end
  end
  object Brand: TFDQuery
    Active = True
    IndexesActive = False
    MasterSource = DSDepartments
    MasterFields = 'ID'
    DetailFields = 'Dep_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEInsert, uvFetchGeneratorsPoint, uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.AutoCommitUpdates = True
    UpdateObject = BrandUpdateSQL
    SQL.Strings = (
      'SELECT'
      '    f.ID,'
      '    f.DESCR,'
      '    f.MES,'
      '    f.DEP_ID,'
      '    f.EXTKEY,'
      '    f.GROUP_ID,'
      '    f.EXPIRE,'
      '    f.WGT'
      'FROM'
      '    FOOD  f'
      'where'
      '    f.ID  in('
      '     select '
      '        FOOD_ID'
      '     from PROC_FOODS_IN_GROUP(null, '#39'PRODUCT'#39')'
      '     )'
      '    and f.DEP_ID=:ID'
      '')
    Left = 88
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 4
      end>
    object BrandID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_FOOD_ID'
    end
    object BrandDESCR: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object BrandMES: TIntegerField
      DisplayLabel = #1045#1076'.'
      FieldName = 'MES'
      Origin = 'MES'
      Visible = False
    end
    object BrandEXTKEY: TStringField
      FieldName = 'EXTKEY'
      Origin = 'EXTKEY'
      Visible = False
    end
    object BrandGROUP_ID: TIntegerField
      FieldName = 'GROUP_ID'
      Origin = 'GROUP_ID'
    end
    object BrandEXPIRE: TIntegerField
      FieldName = 'EXPIRE'
      Origin = 'EXPIRE'
    end
    object BrandWGT: TBCDField
      DisplayLabel = #1042#1099#1093#1086#1076' ('#1074#1077#1089')'
      FieldName = 'WGT'
      Origin = 'WGT'
      Precision = 18
      Size = 3
    end
    object BrandDep_ID: TIntegerField
      FieldName = 'Dep_ID'
      Visible = False
    end
    object BrandlkMES: TStringField
      DisplayLabel = #1045#1076'.'
      FieldKind = fkLookup
      FieldName = 'lkMES'
      LookupDataSet = Mesures
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'MES'
      Size = 50
      Lookup = True
    end
  end
  object Departments: TFDQuery
    MasterSource = DSCompany
    MasterFields = 'ID'
    DetailFields = 'COMPANY_ID'
    Connection = FDConnection1
    Transaction = TrRead
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    KPP,'
      '    EXTKEY,'
      '    COMPANY_ID'
      'FROM'
      '    DEPARTMENTS '
      'WHERE'
      '    COMPANY_ID=:ID')
    Left = 368
    Top = 128
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object DepartmentsID: TFDAutoIncField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_DEPARTMENTS_ID'
    end
    object DepartmentsDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object DepartmentsKPP: TStringField
      FieldName = 'KPP'
      Origin = 'KPP'
      Size = 12
    end
    object DepartmentsEXTKEY: TStringField
      FieldName = 'EXTKEY'
      Origin = 'EXTKEY'
    end
    object DepartmentsCOMPANY_ID: TIntegerField
      FieldName = 'COMPANY_ID'
      Origin = 'COMPANY_ID'
    end
  end
  object Company: TFDQuery
    Connection = FDConnection1
    Transaction = TrRead
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    INN'
      'FROM'
      '    COMPANY')
    Left = 368
    Top = 80
    object CompanyID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_COMPANY_ID'
    end
    object CompanyDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object CompanyINN: TStringField
      FieldName = 'INN'
      Origin = 'INN'
      Size = 12
    end
  end
  object Food: TFDQuery
    AfterInsert = FoodAfterInsert
    OnNewRecord = FoodNewRecord
    MasterSource = DSFoodGroups
    MasterFields = 'ID'
    DetailFields = 'GROUP_ID'
    Connection = FDConnection1
    Transaction = TrRead
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FOOD_ID'
    UpdateOptions.KeyFields = 'ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    MES,'
      '    DEP_ID,'
      '    EXTKEY,'
      '    GROUP_ID,'
      '    EXPIRE'
      'FROM'
      '    FOOD '
      'WHERE'
      '    GROUP_ID=:ID'
      '    and dep_id=:pardepid'
      'order by'
      '    DESCR')
    Left = 88
    Top = 256
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 17
      end
      item
        Name = 'PARDEPID'
        DataType = ftSmallint
        ParamType = ptInput
      end>
    object FoodDESCR: TStringField
      DisplayWidth = 50
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object FoodMES: TIntegerField
      DisplayWidth = 10
      FieldName = 'MES'
      Origin = 'MES'
    end
    object FoodDEP_ID: TSmallintField
      DisplayWidth = 10
      FieldName = 'DEP_ID'
      Origin = 'DEP_ID'
    end
    object FoodEXTKEY: TStringField
      DisplayWidth = 20
      FieldName = 'EXTKEY'
      Origin = 'EXTKEY'
    end
    object FoodGROUP_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Origin = 'GROUP_ID'
    end
    object FoodEXPIRE: TIntegerField
      DisplayWidth = 10
      FieldName = 'EXPIRE'
      Origin = 'EXPIRE'
    end
    object FoodID: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_FOOD_ID'
    end
    object FoodlkMES: TStringField
      DisplayWidth = 150
      FieldKind = fkLookup
      FieldName = 'lkMES'
      LookupDataSet = Mesures
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'MES'
      Size = 150
      Lookup = True
    end
  end
  object BrandUpdateSQL: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO FOOD'
      '(ID, DESCR, MES, DEP_ID, EXTKEY, GROUP_ID, '
      '  EXPIRE, WGT)'
      
        'VALUES (:NEW_ID, :NEW_DESCR, :NEW_MES, :NEW_DEP_ID, :NEW_EXTKEY,' +
        ' '
      '   (select ID from FOODSGROUP where code='#39'PRODUCT'#39'), '
      '  :NEW_EXPIRE, :NEW_WGT)'
      'RETURNING ID')
    ModifySQL.Strings = (
      'UPDATE FOOD'
      
        'SET DESCR = :NEW_DESCR, MES = :NEW_MES, DEP_ID = :NEW_DEP_ID, EX' +
        'TKEY = :NEW_EXTKEY, '
      '  GROUP_ID = :NEW_GROUP_ID, EXPIRE = :NEW_EXPIRE, WGT = :NEW_WGT'
      'WHERE ID = :OLD_ID'
      'RETURNING ID')
    DeleteSQL.Strings = (
      'DELETE FROM FOOD'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      'SELECT ID, DESCR, MES, DEP_ID, EXTKEY, GROUP_ID, EXPIRE, WGT'
      'FROM FOOD'
      'WHERE ID = :ID')
    Left = 160
    Top = 62
  end
  object FoodGroups: TFDQuery
    Connection = FDConnection1
    Transaction = TrRead
    UpdateTransaction = TrWrite
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    CODE,'
      '    PARENT_ID,'
      '    LFT,'
      '    RGT'
      'FROM'
      '    FOODSGROUP')
    Left = 604
    Top = 224
    object FoodGroupsID: TFDAutoIncField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
      GeneratorName = 'GEN_FOODSGROUP_ID'
    end
    object FoodGroupsDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object FoodGroupsCODE: TStringField
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object FoodGroupsPARENT_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PARENT_ID'
      Origin = 'PARENT_ID'
    end
    object FoodGroupsLFT: TIntegerField
      FieldName = 'LFT'
      Origin = 'LFT'
    end
    object FoodGroupsRGT: TIntegerField
      FieldName = 'RGT'
      Origin = 'RGT'
    end
  end
  object Operations: TFDQuery
    Connection = FDConnection1
    Transaction = TrRead
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR'
      'FROM'
      '    OPERATIONS')
    Left = 96
    Top = 408
    object OperationsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OperationsDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
  end
  object RecieptDetail: TFDQuery
    BeforeInsert = BeforeInsert
    MasterSource = DSDocs
    MasterFields = 'ID'
    DetailFields = 'DOC_ID'
    Connection = FDConnection1
    Transaction = TrRead
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DOC_ID,'
      '    FOOD_ID,'
      '    PRICE,'
      '    QTY,'
      '    SUMMA'
      'FROM'
      '    RECEIPTDETAIL '
      'WHERE'
      '    DOC_ID=:ID')
    Left = 104
    Top = 504
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 7616
      end>
    object RecieptDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_RECEIPTDETAIL_ID'
    end
    object RecieptDetailDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = 'DOC_ID'
    end
    object RecieptDetailFOOD_ID: TIntegerField
      FieldName = 'FOOD_ID'
      Origin = 'FOOD_ID'
    end
    object RecieptDetailPRICE: TBCDField
      FieldName = 'PRICE'
      Origin = 'PRICE'
      Precision = 18
      Size = 2
    end
    object RecieptDetailQTY: TBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 3
    end
    object RecieptDetailSUMMA: TBCDField
      FieldName = 'SUMMA'
      Origin = 'SUMMA'
      Precision = 18
      Size = 2
    end
    object RecieptDetailfood: TStringField
      FieldKind = fkLookup
      FieldName = 'food'
      LookupDataSet = FoodAll
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'FOOD_ID'
      Size = 150
      Lookup = True
    end
  end
  object Transfer: TFDQuery
    MasterSource = DSDocs
    MasterFields = 'ID'
    DetailFields = 'DOC_ID'
    Connection = FDConnection1
    Transaction = TrRead
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DOC_ID,'
      '    TARGET_DEPARTMENT,'
      '    TARGET_WAREHOUSE'
      'FROM'
      '    TRANSFER '
      'where'
      '    DOC_ID=:ID')
    Left = 368
    Top = 176
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 7616
      end>
    object TransferID: TFDAutoIncField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_TRANSFER_ID'
    end
    object TransferDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = 'DOC_ID'
      Required = True
    end
    object TransferTARGET_DEPARTMENT: TIntegerField
      FieldName = 'TARGET_DEPARTMENT'
      Origin = 'TARGET_DEPARTMENT'
      Required = True
    end
    object TransferTARGET_WAREHOUSE: TIntegerField
      FieldName = 'TARGET_WAREHOUSE'
      Origin = 'TARGET_WAREHOUSE'
      Required = True
    end
  end
  object TransferDetail: TFDQuery
    MasterSource = DSTransfer
    MasterFields = 'ID'
    DetailFields = 'HOST_ID'
    Connection = FDConnection1
    Transaction = TrRead
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    HOST_ID,'
      '    FOOD_ID,'
      '    PRICE,'
      '    QTY,'
      '    INVOICE_ID,'
      '    SUMMA,'
      '    TARGET_FOOD_ID,'
      '    TARGET_QTY'
      'FROM'
      '    TRANSFERDETAIL '
      'WHERE'
      '   HOST_ID=:ID')
    Left = 368
    Top = 224
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object TransferDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_TRANSFERDETAIL_ID'
    end
    object TransferDetailHOST_ID: TIntegerField
      FieldName = 'HOST_ID'
      Origin = 'HOST_ID'
      Required = True
    end
    object TransferDetailFOOD_ID: TIntegerField
      FieldName = 'FOOD_ID'
      Origin = 'FOOD_ID'
    end
    object TransferDetailPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object TransferDetailQTY: TBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 3
    end
    object TransferDetailINVOICE_ID: TIntegerField
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object TransferDetailSUMMA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUMMA'
      Origin = 'SUMMA'
      ProviderFlags = []
      ReadOnly = True
    end
    object TransferDetailTARGET_FOOD_ID: TIntegerField
      FieldName = 'TARGET_FOOD_ID'
      Origin = 'TARGET_FOOD_ID'
    end
    object TransferDetailTARGET_QTY: TBCDField
      FieldName = 'TARGET_QTY'
      Origin = 'TARGET_QTY'
      Precision = 18
      Size = 3
    end
  end
  object FoodDep: TFDQuery
    MasterSource = DSTransfer
    MasterFields = 'TARGET_DEPARTMENT'
    DetailFields = 'DEP_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    MES,'
      '    DEP_ID,'
      '    EXTKEY,'
      '    GROUP_ID,'
      '    EXPIRE,'
      '    WGT'
      'FROM'
      '    FOOD '
      'WHERE'
      '    DEP_ID=:TARGET_DEPARTMENT'
      '    AND GROUP_ID=:_groupid')
    Left = 376
    Top = 272
    ParamData = <
      item
        Name = 'TARGET_DEPARTMENT'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = '_GROUPID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FoodDepID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FoodDepDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object FoodDepMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object FoodDepDEP_ID: TSmallintField
      FieldName = 'DEP_ID'
      Origin = 'DEP_ID'
    end
    object FoodDepEXTKEY: TStringField
      FieldName = 'EXTKEY'
      Origin = 'EXTKEY'
    end
    object FoodDepGROUP_ID: TIntegerField
      FieldName = 'GROUP_ID'
      Origin = 'GROUP_ID'
    end
    object FoodDepEXPIRE: TIntegerField
      FieldName = 'EXPIRE'
      Origin = 'EXPIRE'
    end
    object FoodDepWGT: TBCDField
      FieldName = 'WGT'
      Origin = 'WGT'
      Precision = 18
      Size = 3
    end
  end
  object ConfPrn: TFDQuery
    MasterSource = DSDoctype
    MasterFields = 'ID'
    DetailFields = 'DOCTYPE_ID'
    Connection = FDConnection1
    Transaction = TrRead
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DOCTYPE_ID,'
      '    REPORTFILE,'
      '    DESCR,'
      '    DFLT'
      'FROM'
      '    CONF_PRNFRM '
      'where'
      '    DOCTYPE_ID=:ID')
    Left = 376
    Top = 328
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object ConfPrnID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_CONF_PRNFRM_ID'
    end
    object ConfPrnDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
      Origin = 'DOCTYPE_ID'
    end
    object ConfPrnREPORTFILE: TStringField
      FieldName = 'REPORTFILE'
      Origin = 'REPORTFILE'
      Size = 200
    end
    object ConfPrnDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object ConfPrnDFLT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DFLT'
      Origin = 'DFLT'
    end
  end
  object Clients: TFDQuery
    Active = True
    Connection = FDConnection1
    Transaction = TrRead
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR'
      'FROM'
      '    CLIENTS')
    Left = 384
    Top = 416
    object ClientsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_CLIENTS_ID'
    end
    object ClientsDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
  end
  object Mesures: TFDQuery
    Active = True
    Connection = FDConnection1
    Transaction = TrRead
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    NAME'
      'FROM'
      '    MESURES '
      'ORDER BY DESCR')
    Left = 384
    Top = 464
    object MesuresID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_MESURES_ID'
    end
    object MesuresDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object MesuresNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
  end
  object DocsAll: TFDQuery
    Active = True
    Connection = FDConnection1
    Transaction = TrRead
    SQL.Strings = (
      'SELECT '
      '    docs.id,'
      
        '    ( TRIM(doctype.descr)||'#39' '#8470#39'||docs.code||'#39' '#1086#1090' '#39'||df( docs.doc' +
        'date, '#39#39')) DESCR'
      ''
      'FROM doctype'
      '   INNER JOIN docs ON (doctype.id = docs.doctype_id)')
    Left = 384
    Top = 512
    object DocsAllID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object DocsAllDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 167
    end
  end
  object InterChange: TFDQuery
    MasterSource = DSCalc
    MasterFields = 'ID'
    DetailFields = 'CALC_ID'
    Connection = FDConnection1
    Transaction = TrRead
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    IC.ID,'
      '    IC.FOOD_ID,'
      '    F.MES,'
      '    IC.QTY,'
      '    IC.CALC_ID'
      'FROM'
      '    interchange IC'
      '    left join food F on F.id=IC.food_id'
      'where'
      '    IC.calc_id=:ID')
    Left = 384
    Top = 568
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object InterChangeID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_INTERCHANGE_ID'
    end
    object InterChangeFOOD_ID: TIntegerField
      FieldName = 'FOOD_ID'
      Origin = 'FOOD_ID'
      Required = True
    end
    object InterChangeQTY: TBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 3
    end
    object InterChangeCALC_ID: TIntegerField
      FieldName = 'CALC_ID'
      Origin = 'CALC_ID'
      Required = True
    end
    object InterChangeMES: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object InterChangelkMes: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMes'
      LookupDataSet = Mesures
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'MES'
      Lookup = True
    end
  end
  object DocsUpdateSQL: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO DOCS'
      '(ID, REGISTERED, DOCTYPE_ID, CODE, DOCDATE, CLIENT_ID, '
      '  DEP_ID, COMPANY_ID, WAREHOUSE_ID)'
      
        'VALUES (:NEW_ID, :NEW_REGISTERED, :NEW_DOCTYPE_ID, :NEW_CODE, :N' +
        'EW_DOCDATE, :NEW_CLIENT_ID, '
      '  :NEW_DEP_ID, :NEW_COMPANY_ID, :NEW_WAREHOUSE_ID)'
      'RETURNING ID')
    ModifySQL.Strings = (
      'UPDATE DOCS'
      
        'SET ID = :NEW_ID, REGISTERED = :NEW_REGISTERED, DOCTYPE_ID = :NE' +
        'W_DOCTYPE_ID, '
      
        '  CODE = :NEW_CODE, DOCDATE = :NEW_DOCDATE, CLIENT_ID = :NEW_CLI' +
        'ENT_ID, '
      
        '  DEP_ID = :NEW_DEP_ID, COMPANY_ID = :NEW_COMPANY_ID, WAREHOUSE_' +
        'ID = :NEW_WAREHOUSE_ID'
      'WHERE ID = :OLD_ID'
      'RETURNING ID')
    DeleteSQL.Strings = (
      'DELETE FROM DOCS'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ID, REGISTERED, DOCTYPE_ID, CODE, DOCDATE, CLIENT_ID, DEP' +
        '_ID, '
      '  COMPANY_ID, WAREHOUSE_ID'
      'FROM DOCS'
      'WHERE ID = :ID')
    Left = 160
    Top = 160
  end
  object FoodAll: TFDQuery
    Connection = FDConnection1
    Transaction = TrRead
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    MES,'
      '    DEP_ID,'
      '    EXTKEY,'
      '    GROUP_ID,'
      '    EXPIRE'
      'FROM'
      '    FOOD ')
    Left = 592
    Top = 72
    object FoodAllID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FoodAllDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object FoodAllMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object FoodAllDEP_ID: TSmallintField
      FieldName = 'DEP_ID'
      Origin = 'DEP_ID'
    end
    object FoodAllEXTKEY: TStringField
      FieldName = 'EXTKEY'
      Origin = 'EXTKEY'
    end
    object FoodAllGROUP_ID: TIntegerField
      FieldName = 'GROUP_ID'
      Origin = 'GROUP_ID'
    end
    object FoodAllEXPIRE: TIntegerField
      FieldName = 'EXPIRE'
      Origin = 'EXPIRE'
    end
  end
  object WareHouse: TFDQuery
    MasterSource = DSDepartments
    MasterFields = 'ID'
    DetailFields = 'DEP_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    EXTKEY,'
      '    DESCR,'
      '    SECTION,'
      '    DEP_ID'
      'FROM'
      '    WAREHOUSE '
      'WHERE'
      '    DEP_ID=:ID')
    Left = 592
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 4
      end>
    object WareHouseID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
      GeneratorName = 'GEN_WAREHOUSE_ID'
    end
    object WareHouseEXTKEY: TStringField
      FieldName = 'EXTKEY'
      Origin = 'EXTKEY'
    end
    object WareHouseDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object WareHouseSECTION: TSmallintField
      FieldName = 'SECTION'
      Origin = 'SECTION'
    end
    object WareHouseDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
      Origin = 'DEP_ID'
      Required = True
    end
  end
  object WareHouseAll: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    EXTKEY,'
      '    DESCR,'
      '    DEP_ID'
      'FROM'
      '    WAREHOUSE')
    Left = 592
    Top = 176
    object WareHouseAllID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WareHouseAllEXTKEY: TStringField
      FieldName = 'EXTKEY'
      Origin = 'EXTKEY'
    end
    object WareHouseAllDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object WareHouseAllDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
      Origin = 'DEP_ID'
      Required = True
    end
  end
  object TotalSail: TFDQuery
    MasterSource = DSDocs
    MasterFields = 'ID'
    DetailFields = 'DOC_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DOC_ID,'
      '    DATESTART,'
      '    DATEFINAL,'
      '    IS_MANUAL,'
      '    KKM_ID'
      'FROM'
      '    TOTALSAIL '
      'WHERE'
      '   DOC_ID=:ID')
    Left = 600
    Top = 280
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 7616
      end>
    object TotalSailID: TFDAutoIncField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
      GeneratorName = 'GEN_TOTALSAIL_ID'
    end
    object TotalSailDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = 'DOC_ID'
    end
    object TotalSailDATESTART: TSQLTimeStampField
      FieldName = 'DATESTART'
      Origin = 'DATESTART'
    end
    object TotalSailDATEFINAL: TSQLTimeStampField
      FieldName = 'DATEFINAL'
      Origin = 'DATEFINAL'
    end
    object TotalSailIS_MANUAL: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'IS_MANUAL'
      Origin = 'IS_MANUAL'
    end
    object TotalSailKKM_ID: TIntegerField
      FieldName = 'KKM_ID'
      Origin = 'KKM_ID'
    end
  end
  object TotalSaleDetail: TFDQuery
    OnCalcFields = TotalSaleDetailCalcFields
    MasterSource = DSTotalSail
    MasterFields = 'ID'
    DetailFields = 'TOTALSAIL_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    TOTALSAIL_ID,'
      '    FOOD_ID,'
      '    QTY,'
      '    PRICE,'
      '    PRICE_SELL,'
      '    SUMMA,'
      '    MARGIN_SUM'
      'FROM'
      '    TOTALSAILDETAIL '
      'WHERE'
      '    TOTALSAIL_ID=:ID')
    Left = 600
    Top = 336
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object TotalSaleDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
      GeneratorName = 'GEN_TOTALSAILDETAIL_ID'
    end
    object TotalSaleDetailTOTALSAIL_ID: TIntegerField
      FieldName = 'TOTALSAIL_ID'
      Origin = 'TOTALSAIL_ID'
    end
    object TotalSaleDetailFOOD_ID: TIntegerField
      FieldName = 'FOOD_ID'
      Origin = 'FOOD_ID'
    end
    object TotalSaleDetailQTY: TBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 3
    end
    object TotalSaleDetailPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object TotalSaleDetailPRICE_SELL: TFloatField
      FieldName = 'PRICE_SELL'
      Origin = 'PRICE_SELL'
    end
    object TotalSaleDetailSUMMA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUMMA'
      Origin = 'SUMMA'
      ProviderFlags = []
      ReadOnly = True
    end
    object TotalSaleDetailMARGIN_SUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MARGIN_SUM'
      Origin = 'MARGIN_SUM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object KKM: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    SERIAL,'
      '    DESCR,'
      '    KKMTYPE_ID'
      'FROM'
      '    KKM ')
    Left = 600
    Top = 392
    object KKMSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object KKMDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object KKMKKMTYPE_ID: TIntegerField
      FieldName = 'KKMTYPE_ID'
      Origin = 'KKMTYPE_ID'
    end
  end
  object Balances: TFDQuery
    MasterSource = DSDepartments
    MasterFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    STORE.FOOD_ID FOOD_ID,'
      '    STORE.PRICE,'
      '    SUM(STORE.QTY) QTY'
      'FROM'
      '    STORE'
      
        '    INNER JOIN PROC_FOODS_IN_GROUP(:_GROUPID, NULL) GS ON (STORE' +
        '.FOOD_ID=GS.FOOD_ID)'
      'WHERE'
      '    STORE.DEP_ID=:ID'
      '    AND (:WHSID=0 OR STORE.WAREHOUSE_ID=:WHSID )'
      'GROUP BY'
      '    STORE.FOOD_ID, '
      '    STORE.PRICE'
      'HAVING'
      '    SUM(STORE.QTY)<>0')
    Left = 600
    Top = 448
    ParamData = <
      item
        Name = '_GROUPID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 3
      end
      item
        Name = 'WHSID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object BalanceslkFood: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldKind = fkLookup
      FieldName = 'lkFood'
      LookupDataSet = FoodAll
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'FOOD_ID'
      Size = 50
      Lookup = True
    end
    object BalancesPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object BalancesQTY: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object BalancesFOOD_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FOOD_ID'
      Origin = 'FOOD_ID'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object FoodHistory: TFDQuery
    AfterInsert = FoodHistoryAfterInsert
    BeforePost = FoodHistoryBeforePost
    MasterSource = DSFood
    MasterFields = 'ID'
    DetailFields = 'OBJID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    TBL_NAME,'
      '    FLD_NAME,'
      '    OBJID'
      'FROM'
      '    HISTORY '
      'WHERE'
      '    objid=:id'
      '    and TBL_NAME=:TBL'
      '    and FLD_NAME=:FLD')
    Left = 600
    Top = 504
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'TBL'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'FLD'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object FoodHistoryID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
      GeneratorName = 'GEN_HISTORY_ID'
    end
    object FoodHistoryTBL_NAME: TStringField
      FieldName = 'TBL_NAME'
      Origin = 'TBL_NAME'
      Size = 50
    end
    object FoodHistoryFLD_NAME: TStringField
      FieldName = 'FLD_NAME'
      Origin = 'FLD_NAME'
      Size = 50
    end
    object FoodHistoryOBJID: TIntegerField
      FieldName = 'OBJID'
      Origin = 'OBJID'
      Required = True
    end
  end
  object FoodHistoryValues: TFDQuery
    BeforeInsert = FoodHistoryValuesBeforeInsert
    AfterInsert = FoodHistoryValuesAfterInsert
    BeforePost = FoodHistoryValuesBeforePost
    MasterSource = DSFoodHistory
    MasterFields = 'ID'
    DetailFields = 'HISTORY_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    HISTORY_ID,'
      '    REG_DATE,'
      '    TVALUE  FVALUE'
      'FROM'
      '    HISTORY_VALUES '
      'where'
      '    HISTORY_ID=:id')
    Left = 600
    Top = 568
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object FoodHistoryValuesID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
      GeneratorName = 'GEN_HISTORY_VALUES_ID'
    end
    object FoodHistoryValuesHISTORY_ID: TIntegerField
      FieldName = 'HISTORY_ID'
      Origin = 'HISTORY_ID'
    end
    object FoodHistoryValuesREG_DATE: TSQLTimeStampField
      FieldName = 'REG_DATE'
      Origin = 'REG_DATE'
    end
    object FoodHistoryValuesFVALUE: TStringField
      DisplayWidth = 20
      FieldName = 'FVALUE'
      Origin = 'TVALUE'
      Size = 200
    end
  end
  object LookUpWareHouse: TFDQuery
    MasterSource = DSDepartments
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    DEP_ID'
      'FROM'
      '    WAREHOUSE '
      'WHERE'
      '    DEP_ID=:ID')
    Left = 600
    Top = 648
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 4
      end>
    object LookUpWareHouseID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object LookUpWareHouseDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object LookUpWareHouseDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
      Origin = 'DEP_ID'
      Required = True
    end
  end
  object WriteOff: TFDQuery
    MasterSource = DSDocs
    MasterFields = 'ID'
    DetailFields = 'DOC_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    REASON_ID,'
      '    DOC_ID'
      'FROM'
      '    WRITE_OFF '
      'where'
      '    doc_id=:id')
    Left = 848
    Top = 136
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 7616
      end>
    object WriteOffID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_WRITE_OFF_ID'
    end
    object WriteOffREASON_ID: TIntegerField
      FieldName = 'REASON_ID'
      Origin = 'REASON_ID'
    end
    object WriteOffDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = 'DOC_ID'
    end
  end
  object WriteOffDetail: TFDQuery
    MasterSource = DSWriteOff
    MasterFields = 'ID'
    DetailFields = 'DETAIL_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DETAIL_ID,'
      '    FOOD_ID,'
      '    PRICE,'
      '    QTY,'
      '    INVOICE_ID,'
      '    SUMMA'
      'FROM'
      '    WRITE_OFF_DETAIL '
      'where'
      '    detail_id=:id')
    Left = 848
    Top = 200
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object WriteOffDetailID: TFDAutoIncField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_WRITE_OFF_DETAIL_ID'
    end
    object WriteOffDetailDETAIL_ID: TIntegerField
      FieldName = 'DETAIL_ID'
    end
    object WriteOffDetailFOOD_ID: TIntegerField
      FieldName = 'FOOD_ID'
    end
    object WriteOffDetailPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object WriteOffDetailQTY: TBCDField
      FieldName = 'QTY'
      Precision = 18
      Size = 3
    end
    object WriteOffDetailINVOICE_ID: TIntegerField
      FieldName = 'INVOICE_ID'
    end
    object WriteOffDetailSUMMA: TFloatField
      FieldName = 'SUMMA'
    end
  end
  object WriteOffReasons: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR'
      'FROM'
      '    WRITEOFF_REASONS')
    Left = 848
    Top = 264
    object WriteOffReasonsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object WriteOffReasonsDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
  end
  object BalancesDetail: TFDQuery
    Active = True
    MasterSource = DSBalances
    MasterFields = 'FOOD_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT '
      '    store.warehouse_id,'
      '    store.effect_date,'
      '    store.doc_id,'
      '    store.int_attr1 invoice_id, '
      '    SUM(iif(store.qty > 0, store.qty, 0)) qtyincome,'
      '    SUM(iif(store.qty < 0, -store.qty, 0)) qtyoutcome,'
      '    ('
      '     select '
      '       sum(s.qty) '
      '     from '
      '       store s '
      '     where '
      '       s.dep_id = :_depid'
      '       and s.food_id = :food_id'
      '       and s.int_attr1 = store.int_attr1'
      '       and s.effect_date <= store.effect_date'
      '    ) rest'
      'FROM doctype'
      '   INNER JOIN docs ON (doctype.id = docs.doctype_id)'
      '   INNER JOIN store ON (docs.id = store.doc_id)'
      'WHERE'
      '   store.food_id=:food_id'
      '   and'
      '   store.dep_id=:_depid'
      'GROUP BY'
      '    store.warehouse_id,'
      '    store.int_attr1,'
      '    store.effect_date,'
      '    store.doc_id')
    Left = 848
    Top = 336
    ParamData = <
      item
        Name = '_DEPID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FOOD_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object BalancesDetailWAREHOUSE_ID: TIntegerField
      FieldName = 'WAREHOUSE_ID'
      Origin = 'WAREHOUSE_ID'
    end
    object BalancesDetailEFFECT_DATE: TSQLTimeStampField
      FieldName = 'EFFECT_DATE'
      Origin = 'EFFECT_DATE'
    end
    object BalancesDetailDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = 'DOC_ID'
    end
    object BalancesDetailINVOICE_ID: TIntegerField
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
    end
    object BalancesDetailQTYINCOME: TBCDField
      FieldName = 'QTYINCOME'
      Origin = 'QTYINCOME'
      Precision = 18
      Size = 3
    end
    object BalancesDetailQTYOUTCOME: TBCDField
      FieldName = 'QTYOUTCOME'
      Origin = 'QTYOUTCOME'
      Precision = 18
      Size = 3
    end
    object BalancesDetailREST: TBCDField
      FieldName = 'REST'
      Origin = 'REST'
      Precision = 18
      Size = 3
    end
  end
  object ClientFoodPrice: TFDQuery
    MasterSource = DSClients
    MasterFields = 'ID'
    DetailFields = 'CLIENT_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    CLIENT_ID,'
      '    FOOD_ID,'
      '    STARTDATE,'
      '    SELL_PRICE'
      'FROM'
      '    CLIENT_FOOD_PRICE '
      'WHERE'
      '    CLIENT_ID = :ID'
      'order by'
      '    FOOD_ID,'
      '    STARTDATE desc')
    Left = 104
    Top = 656
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object ClientFoodPriceID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_CLIENT_FOOD_PRICE_ID'
    end
    object ClientFoodPriceCLIENT_ID: TIntegerField
      FieldName = 'CLIENT_ID'
      Origin = 'CLIENT_ID'
      Required = True
    end
    object ClientFoodPriceFOOD_ID: TIntegerField
      FieldName = 'FOOD_ID'
      Origin = 'FOOD_ID'
      Required = True
    end
    object ClientFoodPriceSTARTDATE: TSQLTimeStampField
      FieldName = 'STARTDATE'
      Origin = 'STARTDATE'
      Required = True
    end
    object ClientFoodPriceSELL_PRICE: TFloatField
      FieldName = 'SELL_PRICE'
      Origin = 'SELL_PRICE'
    end
  end
  object TempQuery: TFDQuery
    Connection = FDConnection1
    Left = 272
    Top = 8
  end
  object Checks: TFDQuery
    MasterSource = DSDocs
    MasterFields = 'ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select '
      '    chk.id,'
      '    chk.doc_id,'
      '    chk.cache_income,'
      '    sum(cd.price_sell * cd.qty) summa'
      'from checkdetail cd'
      '   inner join "CHECK" chk on (cd.check_id = chk.id)'
      'where'
      '   chk.doc_id = :Id'
      'group by'
      '    chk.id,'
      '    chk.doc_id,'
      '    chk.cache_income')
    Left = 384
    Top = 640
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object ChecksID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ChecksDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = 'DOC_ID'
      Required = True
    end
    object ChecksCACHE_INCOME: TFloatField
      FieldName = 'CACHE_INCOME'
      Origin = 'CACHE_INCOME'
    end
    object ChecksSUMMA: TFloatField
      FieldName = 'SUMMA'
      Origin = 'SUMMA'
    end
  end
  object DSChecks: TDataSource
    DataSet = Checks
    Left = 464
    Top = 640
  end
  object frxChartObject1: TfrxChartObject
    Left = 960
    Top = 104
  end
  object pFIBSPDistrPeriod: TFDStoredProc
    Connection = FDConnection1
    Transaction = TrWrite
    StoredProcName = 'PROC_DISTRIBUTE_MENU'
    Left = 528
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = 'IDOCID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object pFIBSPDistrLine: TFDStoredProc
    Connection = FDConnection1
    Transaction = TrWrite
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    StoredProcName = 'PROC_DISTRIBUTE_LINE'
    Left = 440
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = 'ILINEID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frxIBXComponents1: TfrxIBXComponents
    DefaultDatabase = IBReportDatabase
    Left = 848
    Top = 72
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 960
    Top = 152
  end
  object IBReportDatabase: TIBDatabase
    DatabaseName = 'D:\WORK\CookAssistant\BASE\main.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    ServerType = 'IBServer'
    BeforeConnect = IBReportDatabaseBeforeConnect
    Left = 768
    Top = 16
  end
  object IBRepTr: TIBTransaction
    DefaultDatabase = IBReportDatabase
    Params.Strings = (
      'concurrency'
      'nowait'
      'read')
    Left = 768
    Top = 72
  end
  object Inventory: TFDQuery
    MasterSource = DSDocs
    MasterFields = 'ID'
    DetailFields = 'DOC_ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_INVENTORY_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select'
      '    ID,'
      '    DOC_ID,'
      '    FOOD_ID,'
      '    QTY,'
      '    QTY_FACT,'
      '    PRICE'
      'from'
      '    INVENTORY'
      'where'
      '    DOC_ID = :ID')
    Left = 88
    Top = 328
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object InventoryID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_INVENTORY_ID'
    end
    object InventoryDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = 'DOC_ID'
      Visible = False
    end
    object InventoryFOOD_ID: TIntegerField
      FieldName = 'FOOD_ID'
      Origin = 'FOOD_ID'
    end
    object InventoryQTY: TBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 3
    end
    object InventoryQTY_FACT: TBCDField
      FieldName = 'QTY_FACT'
      Origin = 'QTY_FACT'
      Precision = 18
      Size = 3
    end
    object InventoryPRICE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
  end
  object DSInventory: TDataSource
    DataSet = Inventory
    Left = 232
    Top = 328
  end
end
