object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 544
  Width = 925
  object DSDocs: TDataSource
    DataSet = pFIBDocs
    Left = 168
    Top = 264
  end
  object DSDoctype: TDataSource
    DataSet = pFIBDocType
    Left = 168
    Top = 320
  end
  object DSFood: TDataSource
    DataSet = pFIBFood
    Left = 168
    Top = 376
  end
  object DSStore: TDataSource
    Left = 168
    Top = 432
  end
  object DSClients: TDataSource
    DataSet = pFIBDataSetClients
    Left = 456
    Top = 216
  end
  object DSMesures: TDataSource
    DataSet = pFIBMesures
    Left = 456
    Top = 280
  end
  object DSConfPrn: TDataSource
    Left = 456
    Top = 160
  end
  object DSTotalSail: TDataSource
    DataSet = TotalSail
    Left = 768
    Top = 272
  end
  object DSTotalSailDetail: TDataSource
    DataSet = TotalSaleDetail
    Left = 768
    Top = 320
  end
  object DSCompany: TDataSource
    DataSet = Organization
    Left = 168
    Top = 104
  end
  object DSDepartments: TDataSource
    DataSet = Departments
    Left = 168
    Top = 168
  end
  object DSWareHouse: TDataSource
    DataSet = WareHouse
    Left = 768
    Top = 120
  end
  object DSkkm: TDataSource
    DataSet = KKM
    Left = 768
    Top = 384
  end
  object DSFoodAll: TDataSource
    DataSet = FoodAll
    Left = 768
    Top = 64
  end
  object DSBalances: TDataSource
    DataSet = Balances
    Left = 768
    Top = 448
  end
  object DSCheck: TDataSource
    DataSet = Check
    Left = 456
    Top = 104
  end
  object pFIBDocs: TFDQuery
    AfterInsert = _pFIBDocsAfterInsert
    MasterSource = DSDepartments
    MasterFields = 'ID'
    DetailFields = 'DEP_ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT '
      '    docs.id,'
      '    docs.registered,'
      '    docs.doctype_id,'
      '    docs.code,'
      '    docs.docdate,'
      '    docs.client_id,'
      '    docs.dep_id,'
      '    docs.company_id,'
      '    docs.warehouse_id'
      'FROM '
      '   docs '
      
        '   inner join doctype on (docs.doctype_id=doctype.id and doctype' +
        '.code in('#39'CHECK'#39')) '
      'WHERE '
      '   docs.dep_id=:id'
      'ORDER BY DOCDATE')
    Left = 88
    Top = 264
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object pFIBDocsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_DOCS_ID'
    end
    object pFIBDocsREGISTERED: TSmallintField
      FieldName = 'REGISTERED'
      Origin = 'REGISTERED'
    end
    object pFIBDocsDOCTYPE_ID: TIntegerField
      FieldName = 'DOCTYPE_ID'
      Origin = 'DOCTYPE_ID'
    end
    object pFIBDocsCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object pFIBDocsCLIENT_ID: TIntegerField
      FieldName = 'CLIENT_ID'
      Origin = 'CLIENT_ID'
    end
    object pFIBDocsDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
      Origin = 'DEP_ID'
    end
    object pFIBDocsCOMPANY_ID: TIntegerField
      FieldName = 'COMPANY_ID'
      Origin = 'COMPANY_ID'
    end
    object pFIBDocsWAREHOUSE_ID: TIntegerField
      FieldName = 'WAREHOUSE_ID'
      Origin = 'WAREHOUSE_ID'
    end
    object pFIBDocsClient: TStringField
      FieldKind = fkLookup
      FieldName = 'Client'
      LookupDataSet = pFIBDataSetClients
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'CLIENT_ID'
      Size = 150
      Lookup = True
    end
    object pFIBDocsWarehouse: TStringField
      FieldKind = fkLookup
      FieldName = 'Warehouse'
      LookupDataSet = WareHouse
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'WAREHOUSE_ID'
      Size = 50
      Lookup = True
    end
    object pFIBDocsDOCDATE: TSQLTimeStampField
      FieldName = 'DOCDATE'
      Origin = 'DOCDATE'
    end
  end
  object pFIBDocType: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    CODE'
      'FROM'
      '    DOCTYPE')
    Left = 88
    Top = 320
    object pFIBDocTypeID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object pFIBDocTypeDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object pFIBDocTypeCODE: TStringField
      FieldName = 'CODE'
      Origin = 'CODE'
      Required = True
      FixedChar = True
      Size = 12
    end
  end
  object pFIBFood: TFDQuery
    MasterSource = DSDepartments
    MasterFields = 'ID'
    DetailFields = 'DEP_ID'
    Connection = FDConnection1
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
      '    dep_id=:ID'
      'order by'
      '    DESCR    ')
    Left = 88
    Top = 376
    ParamData = <
      item
        Name = 'ID'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end>
    object pFIBFoodID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pFIBFoodDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object pFIBFoodMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object pFIBFoodDEP_ID: TSmallintField
      FieldName = 'DEP_ID'
      Origin = 'DEP_ID'
    end
    object pFIBFoodEXTKEY: TStringField
      FieldName = 'EXTKEY'
      Origin = 'EXTKEY'
    end
    object pFIBFoodGROUP_ID: TIntegerField
      FieldName = 'GROUP_ID'
      Origin = 'GROUP_ID'
    end
    object pFIBFoodlupMes: TStringField
      DisplayLabel = #1045#1076'.'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'lupMes'
      LookupDataSet = pFIBMesures
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'MES'
      Size = 10
      Lookup = True
    end
    object pFIBFoodEXPIRE: TIntegerField
      FieldName = 'EXPIRE'
      Origin = 'EXPIRE'
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\WORK\CookAssistant\BASE\MAIN.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=WIN1251'
      'ExtendedMetadata=True'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDConnection1BeforeConnect
    Left = 192
    Top = 24
  end
  object Departments: TFDQuery
    MasterSource = DSCompany
    MasterFields = 'ID'
    DetailFields = 'COMPANY_ID'
    Connection = FDConnection1
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
    Left = 88
    Top = 168
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object DepartmentsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
  object Organization: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    INN'
      'FROM'
      '    COMPANY')
    Left = 88
    Top = 104
    object OrganizationID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object OrganizationDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object OrganizationINN: TStringField
      FieldName = 'INN'
      Origin = 'INN'
      Size = 12
    end
  end
  object Check: TFDQuery
    BeforeInsert = _CheckBeforeInsert
    OnNewRecord = CheckNewRecord
    MasterSource = DSDocs
    MasterFields = 'ID'
    DetailFields = 'DOC_ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DOC_ID,'
      '    KKM_ID,'
      '    TOTALSAIL_ID,'
      '    CACHE_INCOME,'
      '    DISCOUNT,'
      '    DISCOUNT_TYPES_ID,'
      '    SALE_SUMMA,'
      '    DISCOUNT_SUMMA,'
      '    PAYMENT_TYPE_ID,'
      '    ISCLOSED '
      'FROM'
      '    "CHECK" '
      'WHERE'
      '    DOC_ID=:ID')
    Left = 376
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object CheckID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_CHECK_ID'
    end
    object CheckDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = 'DOC_ID'
      Required = True
    end
    object CheckKKM_ID: TStringField
      FieldName = 'KKM_ID'
      Origin = 'KKM_ID'
      Size = 50
    end
    object CheckTOTALSAIL_ID: TIntegerField
      FieldName = 'TOTALSAIL_ID'
      Origin = 'TOTALSAIL_ID'
    end
    object CheckCACHE_INCOME: TFloatField
      FieldName = 'CACHE_INCOME'
      Origin = 'CACHE_INCOME'
    end
    object CheckISCLOSED: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ISCLOSED'
      Origin = 'ISCLOSED'
    end
    object CheckDISCOUNT: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      Precision = 18
      Size = 3
    end
    object CheckSALE_SUMMA: TBCDField
      FieldName = 'SALE_SUMMA'
      Origin = 'SALE_SUMMA'
      Precision = 18
      Size = 2
    end
    object CheckDISCOUNT_SUMMA: TBCDField
      FieldName = 'DISCOUNT_SUMMA'
      Origin = 'DISCOUNT_SUMMA'
      Precision = 18
      Size = 2
    end
    object CheckPAYMENT_TYPE_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENT_TYPE_ID'
      Origin = 'PAYMENT_TYPE_ID'
    end
    object CheckDISCOUNT_TYPES_ID: TIntegerField
      FieldName = 'DISCOUNT_TYPES_ID'
      Origin = 'DISCOUNT_TYPES_ID'
    end
  end
  object CheckDetail: TFDQuery
    BeforeInsert = _CheckDetailBeforeInsert
    AfterDelete = _CheckDetailAfterDelete
    OnCalcFields = _CheckDetailCalcFields
    MasterSource = DSCheck
    MasterFields = 'ID'
    DetailFields = 'CHECK_ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEInsert, uvFetchGeneratorsPoint, uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    CHECK_ID,'
      '    FOOD_ID,'
      '    PRICE_SELL,'
      '    QTY,'
      '    WAREHOUSE_ID'
      'FROM'
      '    CHECKDETAIL'
      'WHERE'
      '    CHECK_ID=:ID')
    Left = 376
    Top = 160
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object CheckDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      IdentityInsert = True
      GeneratorName = 'GEN_CHECKDETAIL_ID'
    end
    object CheckDetailCHECK_ID: TIntegerField
      FieldName = 'CHECK_ID'
      Origin = 'CHECK_ID'
      Required = True
    end
    object CheckDetailFOOD_ID: TIntegerField
      FieldName = 'FOOD_ID'
      Origin = 'FOOD_ID'
      Required = True
    end
    object CheckDetailPRICE_SELL: TFloatField
      FieldName = 'PRICE_SELL'
      Origin = 'PRICE_SELL'
    end
    object CheckDetailQTY: TBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 3
    end
    object CheckDetailFood: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldKind = fkLookup
      FieldName = 'Food'
      LookupDataSet = FoodAll
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'FOOD_ID'
      Size = 50
      Lookup = True
    end
    object CheckDetailclcSumma: TCurrencyField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldKind = fkCalculated
      FieldName = 'clcSumma'
      DisplayFormat = '#0.,00'
      Calculated = True
    end
    object CheckDetailWAREHOUSE_ID: TIntegerField
      FieldName = 'WAREHOUSE_ID'
      Origin = 'WAREHOUSE_ID'
    end
  end
  object pFIBDataSetClients: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR'
      'FROM'
      '    CLIENTS')
    Left = 376
    Top = 216
    object pFIBDataSetClientsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object pFIBDataSetClientsDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
  end
  object pFIBMesures: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    NAME'
      'FROM'
      '    MESURES '
      'ORDER BY DESCR')
    Left = 376
    Top = 280
    object pFIBMesuresID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object pFIBMesuresDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object pFIBMesuresNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
  end
  object FoodAll: TFDQuery
    MasterSource = DSDepartments
    MasterFields = 'ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
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
      '    DEP_ID=:ID')
    Left = 680
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftSmallint
        ParamType = ptInput
      end>
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
    object FoodAlllkMes: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMes'
      LookupDataSet = pFIBMesures
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'MES'
      Size = 10
      Lookup = True
    end
    object FoodAllEXPIRE: TIntegerField
      FieldName = 'EXPIRE'
      Origin = 'EXPIRE'
    end
  end
  object WareHouse: TFDQuery
    MasterSource = DSDepartments
    MasterFields = 'ID'
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    EXTKEY,'
      '    DESCR,'
      '    DEP_ID'
      'FROM'
      '    WAREHOUSE '
      'WHERE'
      '    DEP_ID=:ID')
    Left = 680
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object WareHouseID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    object WareHouseDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
      Origin = 'DEP_ID'
      Required = True
    end
  end
  object WareHouseAll: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    EXTKEY,'
      '    DESCR,'
      '    DEP_ID'
      'FROM'
      '    WAREHOUSE')
    Left = 680
    Top = 184
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
    BeforeInsert = _TotalSailBeforeInsert
    MasterSource = DSDocs
    MasterFields = 'ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_TOTALSAIL_ID'
    UpdateOptions.AutoIncFields = 'ID'
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
    Left = 680
    Top = 272
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TotalSailID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    BeforeInsert = _TotalSaleDetailBeforeInsert
    OnCalcFields = _TotalSaleDetailCalcFields
    MasterSource = DSTotalSail
    MasterFields = 'ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_TOTALSAILDETAIL_ID'
    UpdateOptions.AutoIncFields = 'ID'
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
    Left = 680
    Top = 328
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TotalSaleDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
      '    KKM')
    Left = 680
    Top = 384
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
    BeforeOpen = BalancesBeforeOpen
    ObjectView = False
    IndexesActive = False
    MasterSource = DSDepartments
    MasterFields = 'ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT'
      '  sprst.warehouse_id,'
      '  sprst.food_id,'
      '  sprst.price_sell,'
      '  SUM(sprst.qty) qty'
      'FROM'
      'Food F'
      '    LEFT JOIN'
      '    ('
      '    SELECT'
      '        rst.warehouse_id,'
      '        rst.food_id,'
      '        rst.price,'
      
        '        (SELECT ps.price_sell FROM proc_last_sell_price(rst.food' +
        '_id, rst.price) ps) price_sell,'
      '        SUM(rst.qty) qty'
      '    FROM'
      '        ('
      '        SELECT'
      '            store.warehouse_id,'
      '            store.food_id food_id,'
      '            store.price,'
      '            SUM(store.qty) qty'
      '        FROM'
      '            store'
      '            INNER JOIN'
      '                     warehouse'
      
        '                 ON (store.warehouse_id=warehouse.id AND warehou' +
        'se.section>0 AND warehouse.dep_id=:id)'
      '        WHERE'
      '            store.dep_id=:id'
      '        GROUP BY'
      '            store.warehouse_id,'
      '            store.food_id,'
      '            store.price'
      '        ) rst'
      '    GROUP BY'
      '       rst.warehouse_id,'
      '       rst.food_id,'
      '       rst.price'
      '    ) sprst ON F.id = sprst.food_id and F.dep_id = :id'
      'WHERE'
      '  F.GROUP_ID = :GRPID  '
      'GROUP BY'
      '  sprst.warehouse_id,'
      '  sprst.food_id,'
      '  sprst.price_sell')
    Left = 680
    Top = 456
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'GRPID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object BalancesWAREHOUSE_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'WAREHOUSE_ID'
      Origin = 'WAREHOUSE_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object BalancesFOOD_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FOOD_ID'
      Origin = 'FOOD_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object BalancesPRICE_SELL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRICE_SELL'
      Origin = 'PRICE_SELL'
      ProviderFlags = []
      ReadOnly = True
    end
    object BalancesMesure: TStringField
      DisplayLabel = #1045#1076'.'
      DisplayWidth = 7
      FieldKind = fkLookup
      FieldName = 'Mesure'
      LookupDataSet = FoodAll
      LookupKeyFields = 'ID'
      LookupResultField = 'lkMes'
      KeyFields = 'FOOD_ID'
      Size = 10
      Lookup = True
    end
    object BalancesQTY: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object BalancesFood: TStringField
      FieldKind = fkLookup
      FieldName = 'Food'
      LookupDataSet = FoodAll
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'FOOD_ID'
      Size = 150
      Lookup = True
    end
  end
  object TempQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    SUM(CD.PRICE_SELL * CD.QTY) CheckSum'
      'FROM'
      '    CHECKDETAIL CD  '
      'WHERE'
      '    CD.CHECK_ID=:hostid ')
    Left = 424
    Top = 8
    ParamData = <
      item
        Name = 'HOSTID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object TempQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT'
      '    warehouse.section,'
      '    food.descr food,'
      '    checkdetail.food_id,'
      '    checkdetail.PRICE_SELL,'
      '    SUM( checkdetail.qty ) qty'
      'FROM checkdetail'
      '   INNER JOIN food ON (checkdetail.food_id = food.id)'
      
        '   inner join warehouse on (checkdetail.warehouse_id=warehouse.i' +
        'd)'
      'WHERE '
      '   ('
      '      (checkdetail.check_id = :checkid)'
      '   )'
      
        'GROUP BY warehouse.section, checkdetail.food_id, food.descr, che' +
        'ckdetail.PRICE_SELL')
    Left = 496
    Top = 8
    ParamData = <
      item
        Name = 'CHECKID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'D:\WORK\CookAssistant\fbclient.dll'
    Left = 88
    Top = 24
  end
  object TempQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select MAX(CODE) LASTCODE from DOCS')
    Left = 568
    Top = 8
    object TempQuery2LASTCODE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LASTCODE'
      Origin = 'LASTCODE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FoodGroups: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select ID, DESCR, PARENT_ID'
      'from FOODSGROUP'
      'where'
      '    ('
      '    select IS_INCLUDED'
      
        '    from PROC_IS_INCLUDED_GROUP(null, FOODSGROUP.ID, null, '#39'PROD' +
        'UCT'#39')'
      '    ) = 1')
    Left = 280
    Top = 456
  end
  object DSFoodGroupsMem: TDataSource
    DataSet = MemTableEh1
    OnDataChange = DSFoodGroupsMemDataChange
    Left = 544
    Top = 456
  end
  object MemTableEh1: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = DataSetDriverEh1
    ReadOnly = True
    SortOrder = 'DESCR'
    TreeList.Active = True
    TreeList.KeyFieldName = 'ID'
    TreeList.RefParentFieldName = 'PARENT_ID'
    TreeList.DefaultNodeExpanded = True
    Left = 456
    Top = 456
    object MemTableEh1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object MemTableEh1DESCR: TStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object MemTableEh1PARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
  end
  object DataSetDriverEh1: TDataSetDriverEh
    KeyFields = 'ID'
    ProviderDataSet = FoodGroups
    Left = 360
    Top = 456
  end
  object FDQueryReportByPayments: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select'
      '    PT.descr payment_type,'
      '    sum(CHK.sale_summa) summa,'
      '    sum(CHK.discount_summa) discount'
      'from'
      '    "CHECK" CHK'
      '    inner join docs D on CHK.doc_id=D.id'
      '    inner join payment_types PT on CHK.payment_type_id=PT.id'
      'where'
      '    D.docdate between :Date1 and :Date2'
      'group by'
      '    PT.descr')
    Left = 696
    Top = 8
    ParamData = <
      item
        Name = 'DATE1'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATE2'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryReportByPaymentsPAYMENT_TYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENT_TYPE'
      Origin = 'PAYMENT_TYPE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQueryReportByPaymentsSUMMA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUMMA'
      Origin = 'SUMMA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object FDQueryReportByPaymentsDISCOUNT: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object PaymentTypes: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select'
      '    ID,'
      '    DESCR'
      'from'
      '    PAYMENT_TYPES')
    Left = 376
    Top = 344
    object PaymentTypesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PaymentTypesDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
  end
  object DSPaymentTypes: TDataSource
    AutoEdit = False
    DataSet = PaymentTypes
    Left = 456
    Top = 344
  end
  object DiscountTypes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select'
      '    ID,'
      '    DESCR'
      'from'
      '    DISCOUNT_TYPES')
    Left = 376
    Top = 400
    object DiscountTypesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DiscountTypesDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
  end
  object DSDiscountTypes: TDataSource
    DataSet = DiscountTypes
    Left = 456
    Top = 400
  end
end
