object tilldm: Ttilldm
  Left = 0
  Top = 0
  Caption = 'Data Module'
  ClientHeight = 720
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dsStock: TDataSource
    DataSet = qryStock
    Left = 16
    Top = 8
  end
  object qryStock: TADOQuery
    Connection = conLocalSQL
    Parameters = <>
    SQL.Strings = (
      
        'select * from stock s where s.code = :code and s.supplier = :sup' +
        'plier')
    Left = 16
    Top = 56
    object qryStockQuantity: TIntegerField
      DisplayWidth = 10
      FieldName = 'Quantity'
      Origin = 'BOOKSQL.stock.Quantity'
    end
    object qryStockCost_Price: TFloatField
      DisplayLabel = 'Cost Price'
      DisplayWidth = 10
      FieldName = 'Cost_Price'
      Origin = 'BOOKSQL.stock.Cost_Price'
      DisplayFormat = '0.00'
    end
    object qryStockSale_Price: TFloatField
      DisplayLabel = 'Sale Price'
      DisplayWidth = 10
      FieldName = 'Sale_Price'
      Origin = 'BOOKSQL.stock.Sale_Price'
      DisplayFormat = '0.00'
    end
    object qryStockLocation: TStringField
      DisplayWidth = 10
      FieldName = 'Location'
      Origin = 'BOOKSQL.stock.Location'
      Visible = False
      Size = 45
    end
    object qryStockDate_Ordered: TDateTimeField
      DisplayLabel = 'Date Ordered'
      DisplayWidth = 18
      FieldName = 'Date_Ordered'
      Origin = 'BOOKSQL.stock.Date_Ordered'
      Visible = False
    end
    object qryStockDate_Received: TDateTimeField
      DisplayLabel = 'Date Received'
      DisplayWidth = 18
      FieldName = 'Date_Received'
      Origin = 'BOOKSQL.stock.Date_Received'
      Visible = False
    end
    object qryStockDate_Sold: TDateTimeField
      DisplayLabel = 'Date Sold'
      DisplayWidth = 18
      FieldName = 'Date_Sold'
      Origin = 'BOOKSQL.stock.Date_Sold'
      Visible = False
    end
    object qryStockOrder_Number: TStringField
      DisplayLabel = 'Order Number'
      DisplayWidth = 10
      FieldName = 'Order_Number'
      Origin = 'BOOKSQL.stock.Order_Number'
      Visible = False
      Size = 45
    end
    object qryStockInvoice_Number: TStringField
      DisplayWidth = 10
      FieldName = 'Invoice_Number'
      Origin = 'BOOKSQL.stock.Invoice_Number'
      Visible = False
      Size = 45
    end
    object qryStockCode: TStringField
      DisplayWidth = 12
      FieldName = 'Code'
      Origin = 'BOOKSQL.stock.Code'
      Visible = False
      Size = 12
    end
    object qryStockSupplier: TStringField
      DisplayWidth = 12
      FieldName = 'Supplier'
      Origin = 'BOOKSQL.stock.Supplier'
      Visible = False
      Size = 12
    end
    object qryStockid: TIntegerField
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'BOOKSQL.stock.id'
      Visible = False
    end
  end
  object qryProductsLookup: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from products')
    Left = 184
    Top = 56
    object qryProductsLookupName: TStringField
      DisplayWidth = 60
      FieldName = 'Name'
      Origin = 'BOOKSQL.products.Name'
      Size = 60
    end
    object qryProductsLookupSupplier: TStringField
      DisplayWidth = 10
      FieldName = 'Supplier'
      Origin = 'BOOKSQL.products.Supplier'
      Size = 10
    end
    object qryProductsLookupRange: TStringField
      DisplayWidth = 6
      FieldName = 'Range'
      Origin = 'BOOKSQL.products.Range'
      Size = 6
    end
    object qryProductsLookupCode: TStringField
      DisplayWidth = 12
      FieldName = 'Code'
      Origin = 'BOOKSQL.products.Code'
      Size = 12
    end
    object qryProductsLookupRetail_Price: TFloatField
      DisplayWidth = 10
      FieldName = 'Retail_Price'
      Origin = 'BOOKSQL.products.Retail_Price'
    end
    object qryProductsLookupCost_Price: TFloatField
      DisplayWidth = 10
      FieldName = 'Cost_Price'
      Origin = 'BOOKSQL.products.Cost_Price'
    end
    object qryProductsLookupBarcode: TStringField
      DisplayWidth = 60
      FieldName = 'Barcode'
      Origin = 'BOOKSQL.products.Barcode'
      Size = 60
    end
    object qryProductsLookupid: TIntegerField
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'BOOKSQL.products.id'
      Visible = False
    end
    object qryProductsLookupWholesale_Price: TFloatField
      DisplayWidth = 10
      FieldName = 'Wholesale_Price'
      Origin = 'BOOKSQL.products.Wholesale_Price'
      Visible = False
    end
    object qryProductsLookupShort_Description: TStringField
      DisplayWidth = 150
      FieldName = 'Short_Description'
      Origin = 'BOOKSQL.products.Short_Description'
      Visible = False
      Size = 150
    end
    object qryProductsLookupLong_Description: TMemoField
      DisplayWidth = 10
      FieldName = 'Long_Description'
      Origin = 'BOOKSQL.products.Long_Description'
      Visible = False
      BlobType = ftMemo
    end
    object qryProductsLookupMustCheckForStock: TStringField
      FieldName = 'MustCheckForStock'
      Size = 1
    end
    object qryProductsLookupMisc: TStringField
      FieldName = 'Misc'
      Size = 1
    end
    object qryProductsLookupBox: TStringField
      FieldName = 'Box'
      Size = 45
    end
    object qryProductsLookupRefillPrice: TBCDField
      FieldName = 'RefillPrice'
      Precision = 10
      Size = 2
    end
    object qryProductsLookupDisplayname1: TStringField
      FieldName = 'Displayname1'
      Size = 7
    end
    object qryProductsLookupDisplayname2: TStringField
      FieldName = 'Displayname2'
      Size = 7
    end
    object qryProductsLookupDisplayname3: TStringField
      FieldName = 'Displayname3'
      Size = 7
    end
  end
  object dsProductsLookup: TDataSource
    DataSet = qryProductsLookup
    Left = 184
    Top = 8
  end
  object dsTransactions: TDataSource
    DataSet = qryTransactions
    Left = 88
    Top = 8
  end
  object qryTransactions: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsStaff
    Parameters = <>
    SQL.Strings = (
      
        'select * from transactions where DATEDIFF(now(),ts) <= 90 order ' +
        'by id desc')
    Left = 88
    Top = 56
    object qryTransactionsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      DisplayFormat = '00000'
    end
    object qryTransactionscustcode: TStringField
      DisplayLabel = 'Customer Code'
      FieldName = 'custcode'
      Size = 6
    end
    object qryTransactionsstaffcode: TStringField
      DisplayLabel = 'Staff Code'
      DisplayWidth = 10
      FieldName = 'staffcode'
      Size = 45
    end
    object qryTransactionsDiscount: TBCDField
      FieldName = 'Discount'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 2
    end
    object qryTransactionsDiscountDollar: TBCDField
      FieldName = 'DiscountDollar'
      ProviderFlags = [pfInUpdate]
      Precision = 10
      Size = 2
    end
    object qryTransactionsIsVoid: TStringField
      FieldName = 'IsVoid'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryTransactionsIsOnHold: TStringField
      FieldName = 'IsOnHold'
      Size = 1
    end
    object qryTransactionsDateCreated: TDateTimeField
      FieldName = 'DateCreated'
    end
    object qryTransactionsIsLayby: TStringField
      FieldName = 'IsLayby'
      Size = 1
    end
  end
  object qryTransactionStock: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    BeforeEdit = qryTransactionStockBeforeEdit
    BeforePost = qryTransactionStockBeforePost
    AfterPost = qryTransactionStockAfterPost
    BeforeDelete = qryTransactionStockBeforeDelete
    AfterRefresh = qryTransactionStockAfterRefresh
    OnCalcFields = qryTransactionStockCalcFields
    DataSource = dsTransactions
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select transaction_stock.*'
      'from transaction_stock'
      'where transaction_stock.Transaction_ID=1'
      'order by TransactionStockId limit 0,17')
    Left = 624
    Top = 504
    object qryTransactionStockItemInfo: TStringField
      DisplayWidth = 254
      FieldKind = fkCalculated
      FieldName = 'Item Info'
      ProviderFlags = []
      OnGetText = qryTransactionStockItemInfoGetText
      Size = 254
      Calculated = True
    end
    object qryTransactionStockQuantity: TBCDField
      DisplayWidth = 11
      FieldName = 'Quantity'
      Precision = 10
      Size = 2
    end
    object qryTransactionStockPrice: TBCDField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Price'
      ProviderFlags = []
      DisplayFormat = '$###,###,##0.00'
      Calculated = True
    end
    object qryTransactionStockSubtotal: TBCDField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Subtotal'
      ProviderFlags = []
      DisplayFormat = '$###,###,##0.00'
      Calculated = True
    end
    object qryTransactionStockLocation_SHOP: TIntegerField
      DisplayLabel = 'SHOP'
      DisplayWidth = 8
      FieldName = 'Location_SHOP'
      OnGetText = LocationGetText
    end
    object qryTransactionStockLocation_STORE: TIntegerField
      DisplayLabel = 'STORE'
      DisplayWidth = 8
      FieldName = 'Location_STORE'
      OnGetText = LocationGetText
    end
    object qryTransactionStockLocation_SHED: TIntegerField
      DisplayLabel = 'SHED'
      DisplayWidth = 8
      FieldName = 'Location_SHED'
      OnGetText = LocationGetText
    end
    object qryTransactionStockTransactionStockId: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TransactionStockId'
      ProviderFlags = [pfInWhere, pfInKey]
      Visible = False
    end
    object qryTransactionStockCode: TStringField
      DisplayWidth = 12
      FieldName = 'Code'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 12
    end
    object qryTransactionStockSale_Price: TBCDField
      DisplayWidth = 11
      FieldName = 'Sale_Price'
      ProviderFlags = [pfInUpdate]
      Visible = False
      DisplayFormat = '$###,###,##0.00'
      Precision = 10
      Size = 2
    end
    object qryTransactionStockTransaction_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Transaction_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qryTransactionStockDiscount: TBCDField
      DisplayWidth = 11
      FieldName = 'Discount'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 10
      Size = 2
    end
    object qryTransactionStockName: TStringField
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'Name'
      LookupKeyFields = 'Code;Supplier'
      LookupResultField = 'Name'
      KeyFields = 'Code;Supplier'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 60
      Calculated = True
    end
    object qryTransactionStockCost_Price: TBCDField
      DisplayWidth = 11
      FieldKind = fkLookup
      FieldName = 'Cost_Price'
      LookupDataSet = qryTransactionsProductLookup
      LookupKeyFields = 'Code'
      LookupResultField = 'Cost_Price'
      KeyFields = 'Code'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      currency = True
      Precision = 10
      Size = 2
      Lookup = True
    end
    object qryTransactionStockRetail_Price: TBCDField
      DisplayWidth = 11
      FieldKind = fkLookup
      FieldName = 'Retail_Price'
      LookupDataSet = qryTransactionsProductLookup
      LookupKeyFields = 'Code'
      LookupResultField = 'Retail_Price'
      KeyFields = 'Code'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      currency = True
      Precision = 10
      Size = 2
      Lookup = True
    end
    object qryTransactionStockReturned: TStringField
      DisplayWidth = 1
      FieldName = 'Returned'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 1
    end
    object qryTransactionStockReturnType: TStringField
      DisplayWidth = 20
      FieldName = 'ReturnType'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object qryTransactionStockReturnReason: TStringField
      DisplayWidth = 60
      FieldName = 'ReturnReason'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 60
    end
    object qryTransactionStockTransactionDiscount: TBCDField
      DisplayWidth = 11
      FieldName = 'TransactionDiscount'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 10
      Size = 2
    end
    object qryTransactionStockSupplier: TStringField
      DisplayWidth = 12
      FieldName = 'Supplier'
      Visible = False
      Size = 12
    end
    object qryTransactionStockIsStockChecked: TStringField
      FieldName = 'IsStockChecked'
      Size = 1
    end
    object qryTransactionStockIsDeleted: TStringField
      FieldName = 'IsDeleted'
      Size = 1
    end
    object qryTransactionStockMustCheckForStock: TStringField
      FieldName = 'MustCheckForStock'
      Size = 1
    end
    object qryTransactionStockIsGiftCard: TStringField
      FieldName = 'IsGiftCard'
      Size = 1
    end
    object qryTransactionStockBox: TStringField
      FieldName = 'Box'
      Size = 1
    end
    object qryTransactionStockDateEntered: TDateTimeField
      FieldName = 'DateEntered'
    end
    object qryTransactionStockDateReturned: TDateTimeField
      FieldName = 'DateReturned'
    end
  end
  object conLocalSQL: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL;Password=smithers;Persist Security Info=True;Us' +
      'er ID=root;Data Source=booksql;Mode=ReadWrite;Extended Propertie' +
      's="DATABASE=booksystem;DSN=booksql;OPTION=0;PWD=smithers;PORT=33' +
      '06;SERVER=localhost;UID=root;";Initial Catalog=booksystem'
    LoginPrompt = False
    Mode = cmReadWrite
    Left = 856
    Top = 24
  end
  object qryProducts: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from products')
    Left = 504
    Top = 504
    object qryProductsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryProductsName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object qryProductsCode: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object qryProductsRetail_Price: TBCDField
      FieldName = 'Retail_Price'
      OnGetText = CurrencyGetText
      Precision = 10
      Size = 2
    end
    object qryProductsCost_Price: TBCDField
      FieldName = 'Cost_Price'
      OnGetText = CurrencyGetText
      Precision = 10
      Size = 2
    end
    object qryProductsWholesale_Price: TBCDField
      FieldName = 'Wholesale_Price'
      OnGetText = CurrencyGetText
      Precision = 10
      Size = 2
    end
    object qryProductsShort_Description: TStringField
      FieldName = 'Short_Description'
      Size = 150
    end
    object qryProductsLong_Description: TMemoField
      FieldName = 'Long_Description'
      BlobType = ftMemo
    end
    object qryProductsSupplier: TStringField
      FieldName = 'Supplier'
      Size = 10
    end
    object qryProductsBarcode: TStringField
      FieldName = 'Barcode'
      Size = 60
    end
    object qryProductsRange: TStringField
      FieldName = 'Range'
      Size = 6
    end
    object qryProductsMustCheckForStock: TStringField
      FieldName = 'MustCheckForStock'
      Size = 1
    end
    object qryProductsBox: TStringField
      FieldName = 'Box'
      Size = 45
    end
    object qryProductsBarcode2: TStringField
      FieldName = 'Barcode2'
      Size = 45
    end
    object qryProductsMisc: TStringField
      FieldName = 'Misc'
      Size = 1
    end
  end
  object dsTransactionStock: TDataSource
    DataSet = qryTransactionStock
    Left = 624
    Top = 448
  end
  object dsProducts: TDataSource
    DataSet = qryProducts
    Left = 504
    Top = 448
  end
  object dsTransactionStockCalc: TDataSource
    DataSet = qryTransactionStockCalc
    Left = 784
    Top = 448
  end
  object qryTransactionStockCalc: TADOQuery
    Connection = conLocalSQL
    AfterOpen = qryTransactionStockCalcAfterOpen
    DataSource = dsTransactions
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable, paLong]
        DataType = ftString
        NumericScale = 24
        Size = 25165824
        Value = '11'
      end>
    SQL.Strings = (
      'select '
      
        '(sum(if(discount>0, (sale_price*((discount) / 100)), 0)*quantity' +
        ')) as discountedAmount,'
      
        '(sum(if(discount>0, (sale_price*((100 - discount) / 100)), sale_' +
        'price)*quantity)) as totalAmountNoTransactionDiscount,'
      
        '(sum(if(discount>0, (sale_price*((100 - discount) / 100)), sale_' +
        'price)*quantity)) as totalAmount,'
      
        '(sum(if(discount>0, (sale_price*((100 - discount) / 100)), sale_' +
        'price)*quantity)/11) as tax,'
      
        '(sum(if(discount>0, (sale_price*((100 - discount) / 100)), sale_' +
        'price)*quantity)'
      '-'
      
        '(sum(if(discount>0, (sale_price*((100 - discount) / 100)), sale_' +
        'price)*quantity)/11)) as subTotal'
      'from transaction_stock'
      'where transaction_stock.Transaction_ID=:id'
      'and transaction_stock.Returned <> '#39'Y'#39
      'and transaction_stock.IsDeleted <> '#39'Y'#39';')
    Left = 784
    Top = 504
    object qryTransactionStockCalctotalAmount: TFMTBCDField
      FieldName = 'totalAmount'
      ReadOnly = True
      OnGetText = qryTransactionStockCalctotalAmountGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 52
      Size = 4
    end
    object qryTransactionStockCalctax: TFMTBCDField
      FieldName = 'tax'
      ReadOnly = True
      OnGetText = qryTransactionStockCalctotalAmountGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 56
    end
    object qryTransactionStockCalcsubTotal: TFMTBCDField
      FieldName = 'subTotal'
      ReadOnly = True
      OnGetText = qryTransactionStockCalctotalAmountGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 57
    end
    object qryTransactionStockCalcdiscountedAmount: TFMTBCDField
      FieldName = 'discountedAmount'
      ReadOnly = True
      OnGetText = qryTransactionStockCalctotalAmountGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 64
      Size = 14
    end
    object qryTransactionStockCalctotalAmountNoTransactionDiscount: TFMTBCDField
      FieldName = 'totalAmountNoTransactionDiscount'
      ReadOnly = True
      OnGetText = qryTransactionStockCalctotalAmountGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 57
    end
  end
  object dsPayments: TDataSource
    DataSet = qryPayments
    Left = 272
    Top = 8
  end
  object qryPayments: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    BeforePost = qryPaymentsBeforePost
    AfterPost = qryPaymentsAfterPost
    AfterRefresh = qryPaymentsAfterRefresh
    DataSource = dsTransactions
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 255
        Value = 7410
      end>
    SQL.Strings = (
      'select * from payments where transactionID=:id')
    Left = 272
    Top = 56
    object qryPaymentsPaymentType: TStringField
      DisplayLabel = 'Type'
      DisplayWidth = 10
      FieldName = 'paymentType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPaymentsDateCreated: TDateTimeField
      DisplayLabel = 'Date'
      DisplayWidth = 14
      FieldName = 'DateCreated'
      DisplayFormat = 'dd/mm/yy hh:mm AMPM'
    end
    object qryPaymentsDetails: TStringField
      DisplayWidth = 20
      FieldName = 'Details'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnGetText = qryPaymentsDetailsGetText
      Size = 30
    end
    object qryPaymentsamount: TBCDField
      DisplayLabel = 'Amount'
      DisplayWidth = 12
      FieldName = 'amount'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '$###,###,##0.00'
      Precision = 10
      Size = 2
    end
    object qryPaymentspaymentID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'paymentID'
      ProviderFlags = [pfInWhere, pfInKey]
      Visible = False
    end
    object qryPaymentstransactionID: TIntegerField
      DisplayWidth = 10
      FieldName = 'transactionID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object qryPaymentsRefunded: TBCDField
      FieldName = 'Refunded'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qryPaymentsCancelled: TStringField
      FieldName = 'Cancelled'
      Visible = False
      Size = 1
    end
  end
  object qryProductsSearch: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from products')
    Left = 424
    Top = 504
    object qryProductsSearchSupplier: TStringField
      DisplayLabel = 'Supp'
      DisplayWidth = 8
      FieldName = 'Supplier'
      Size = 10
    end
    object qryProductsSearchName: TStringField
      DisplayWidth = 25
      FieldName = 'Name'
      Size = 60
    end
    object qryProductsSearchCode: TStringField
      DisplayWidth = 12
      FieldName = 'Code'
      Size = 12
    end
    object qryProductsSearchRetail_Price: TBCDField
      DisplayLabel = 'Price'
      DisplayWidth = 9
      FieldName = 'Retail_Price'
      DisplayFormat = '$###,###,##0.00'
      Precision = 10
      Size = 2
    end
    object qryProductsSearchBarcode: TStringField
      DisplayWidth = 60
      FieldName = 'Barcode'
      Visible = False
      Size = 60
    end
    object qryProductsSearchShort_Description: TStringField
      DisplayWidth = 15
      FieldName = 'Short_Description'
      Visible = False
      Size = 150
    end
    object qryProductsSearchLong_Description: TMemoField
      DisplayWidth = 10
      FieldName = 'Long_Description'
      Visible = False
      BlobType = ftMemo
    end
    object qryProductsSearchRange: TStringField
      DisplayWidth = 6
      FieldName = 'Range'
      Visible = False
      Size = 6
    end
    object qryProductsSearchCost_Price: TBCDField
      DisplayWidth = 11
      FieldName = 'Cost_Price'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qryProductsSearchWholesale_Price: TBCDField
      DisplayWidth = 11
      FieldName = 'Wholesale_Price'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qryProductsSearchid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
    object qryProductsSearchRefillPrice: TBCDField
      FieldName = 'RefillPrice'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qryProductsSearchMisc: TStringField
      FieldName = 'Misc'
      Visible = False
      Size = 1
    end
    object qryProductsSearchDisplayname1: TStringField
      FieldName = 'Displayname1'
      Visible = False
      Size = 7
    end
    object qryProductsSearchDisplayname2: TStringField
      FieldName = 'Displayname2'
      Visible = False
      Size = 7
    end
    object qryProductsSearchDisplayname3: TStringField
      FieldName = 'Displayname3'
      Visible = False
      Size = 7
    end
  end
  object dsProductsSearch: TDataSource
    DataSet = qryProductsSearch
    Left = 424
    Top = 448
  end
  object dsPaymentsCalc: TDataSource
    DataSet = qryPaymentsCalc
    Left = 360
    Top = 8
  end
  object qryPaymentsCalc: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsTransactions
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 255
        Value = 3111
      end>
    SQL.Strings = (
      
        'select sum(ifnull(amount, 0)) as total from payments where trans' +
        'actionID=:id and Cancelled<> '#39'Y'#39)
    Left = 360
    Top = 56
    object qryPaymentsCalctotal: TFMTBCDField
      FieldName = 'total'
      ReadOnly = True
      OnGetText = qryPaymentsCalctotalGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 32
      Size = 2
    end
  end
  object dsRefunds: TDataSource
    DataSet = qryRefunds
    Left = 16
    Top = 120
  end
  object qryRefunds: TADOQuery
    Connection = conLocalSQL
    DataSource = dsTransactions
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable, paLong]
        DataType = ftInteger
        Value = 14
      end>
    SQL.Strings = (
      'select * from refunds where transactionID=:id')
    Left = 16
    Top = 168
    object qryRefundsrefundType: TStringField
      DisplayLabel = 'Type'
      DisplayWidth = 10
      FieldName = 'refundType'
    end
    object qryRefundsamount: TBCDField
      DisplayLabel = 'Amount'
      DisplayWidth = 12
      FieldName = 'amount'
      Precision = 10
      Size = 2
    end
    object qryRefundsDetails: TStringField
      DisplayWidth = 20
      FieldName = 'Details'
      Size = 30
    end
    object qryRefundsDateCreated: TDateTimeField
      DisplayLabel = 'Date'
      DisplayWidth = 18
      FieldName = 'DateCreated'
      DisplayFormat = 'dd/mm/yyyy hh:mm AMPM'
    end
    object qryRefundsrefundID: TAutoIncField
      FieldName = 'refundID'
      ReadOnly = True
      Visible = False
    end
    object qryRefundstransactionID: TIntegerField
      FieldName = 'transactionID'
      Visible = False
    end
  end
  object dsTotalDue: TDataSource
    DataSet = qryTotalDue
    Left = 440
    Top = 8
  end
  object qryTotalDue: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    MaxRecords = 1
    DataSource = dsTransactions
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 120
        Precision = 255
        Value = 7410
      end>
    SQL.Strings = (
      'select '
      
        'if((sum(if(transaction_stock.discount>0, (sale_price*((100 - tra' +
        'nsaction_stock.discount) / 100)), sale_price)*quantity)'
      '-'
      
        'ifnull((select sum(ifnull(amount, 0)) as total from payments whe' +
        're transactionID=transactions.ID and Cancelled<> '#39'Y'#39'),0)'
      
        ')>0,(sum(if(transaction_stock.discount>0, (sale_price*((100 - tr' +
        'ansaction_stock.discount) / 100)), sale_price)*quantity)'
      '-'
      
        'ifnull((select sum(ifnull(amount, 0)) as total from payments whe' +
        're transactionID=transactions.ID and Cancelled<> '#39'Y'#39'),0)'
      '),0) as TotalDue'#10
      
        'from transactions left join transaction_stock on transactions.id' +
        ' = '#10'transaction_stock.Transaction_ID'
      'where '
      '    transaction_stock.Transaction_ID=:id'
      '    and transaction_stock.Returned <> '#39'Y'#39
      '    and transaction_stock.IsDeleted <> '#39'Y'#39
      'group by transactions.ID;')
    Left = 440
    Top = 56
    object qryTotalDueTotalDue: TFMTBCDField
      DisplayWidth = 5
      FieldName = 'TotalDue'
      ReadOnly = True
      OnGetText = qryPaymentsCalcTotalDueGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 53
      Size = 4
    end
  end
  object qryLastUndefinedCode: TADOQuery
    Connection = conLocalSQL
    Parameters = <>
    SQL.Strings = (
      
        'select (code) from products where supplier = '#39'UNKNOWN'#39' and code ' +
        'like '#39'UNDF%'#39' order by length(code) desc,code desc limit 1')
    Left = 544
    Top = 56
    object qryLastUndefinedCodecode: TStringField
      FieldName = 'code'
      Size = 12
    end
  end
  object dsLastUndefinedCode: TDataSource
    DataSet = qryLastUndefinedCode
    Left = 544
    Top = 8
  end
  object qryTransactionsProductLookup: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from products')
    Left = 136
    Top = 168
    object qryTransactionsProductLookupid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryTransactionsProductLookupName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object qryTransactionsProductLookupCode: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object qryTransactionsProductLookupRetail_Price: TBCDField
      FieldName = 'Retail_Price'
      Precision = 10
      Size = 2
    end
    object qryTransactionsProductLookupCost_Price: TBCDField
      FieldName = 'Cost_Price'
      Precision = 10
      Size = 2
    end
    object qryTransactionsProductLookupWholesale_Price: TBCDField
      FieldName = 'Wholesale_Price'
      Precision = 10
      Size = 2
    end
    object qryTransactionsProductLookupShort_Description: TStringField
      FieldName = 'Short_Description'
      Size = 150
    end
    object qryTransactionsProductLookupLong_Description: TMemoField
      FieldName = 'Long_Description'
      BlobType = ftMemo
    end
    object qryTransactionsProductLookupSupplier: TStringField
      FieldName = 'Supplier'
      Size = 10
    end
    object qryTransactionsProductLookupBarcode: TStringField
      FieldName = 'Barcode'
      Size = 60
    end
    object qryTransactionsProductLookupRange: TStringField
      FieldName = 'Range'
      Size = 6
    end
  end
  object dsTransactionsProductLookup: TDataSource
    DataSet = qryTransactionsProductLookup
    Left = 136
    Top = 120
  end
  object dsReturnReasons: TDataSource
    DataSet = qryReturnReasons
    Left = 288
    Top = 120
  end
  object qryReturnReasons: TADOQuery
    Connection = conLocalSQL
    Parameters = <>
    SQL.Strings = (
      'select * from return_reasons')
    Left = 288
    Top = 168
    object qryReturnReasonsreturnType: TAutoIncField
      FieldName = 'returnType'
      ReadOnly = True
    end
    object qryReturnReasonsreturnDescription: TStringField
      FieldName = 'returnDescription'
      Size = 45
    end
    object qryReturnReasonsrequireExtraInfo: TStringField
      FieldName = 'requireExtraInfo'
      Size = 1
    end
  end
  object qryGiftCards: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from gift_cards')
    Left = 320
    Top = 504
    object qryGiftCardsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryGiftCardsCardNumber: TStringField
      FieldName = 'CardNumber'
      Size = 45
    end
    object qryGiftCardsCardPin: TStringField
      FieldName = 'CardPin'
      Size = 4
    end
    object qryGiftCardsBalance: TBCDField
      FieldName = 'Balance'
      ProviderFlags = [pfInUpdate]
      OnGetText = CurrencyGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 10
      Size = 2
    end
    object qryGiftCardsIssueDate: TDateTimeField
      FieldName = 'IssueDate'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryGiftCardsExpiryDate: TDateTimeField
      FieldName = 'ExpiryDate'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryGiftCardsInitialBalance: TBCDField
      FieldName = 'InitialBalance'
      Precision = 10
      Size = 2
    end
  end
  object dsGiftCards: TDataSource
    DataSet = qryGiftCards
    Left = 320
    Top = 448
  end
  object qryGiftCardsLookup: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from gift_cards')
    Left = 224
    Top = 504
    object qryGiftCardsLookupid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryGiftCardsLookupCardNumber: TStringField
      FieldName = 'CardNumber'
      Size = 45
    end
    object qryGiftCardsLookupCardPin: TStringField
      FieldName = 'CardPin'
      Size = 4
    end
    object qryGiftCardsLookupBalance: TBCDField
      FieldName = 'Balance'
      ProviderFlags = [pfInUpdate]
      OnGetText = CurrencyGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 10
      Size = 2
    end
    object qryGiftCardsLookupIssueDate: TDateTimeField
      FieldName = 'IssueDate'
      ProviderFlags = [pfInUpdate]
      OnGetText = qryGiftCardsLookupIssueDateGetText
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryGiftCardsLookupExpiryDate: TDateTimeField
      FieldName = 'ExpiryDate'
      ProviderFlags = [pfInUpdate]
      OnGetText = qryGiftCardsLookupExpiryDateGetText
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryGiftCardsLookupInitialBalance: TBCDField
      FieldName = 'InitialBalance'
      Precision = 10
      Size = 2
    end
  end
  object dsGiftCardsLookup: TDataSource
    DataSet = qryGiftCardsLookup
    Left = 224
    Top = 448
  end
  object dsStaff: TDataSource
    DataSet = qryStaff
    Left = 608
    Top = 144
  end
  object qryStaff: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select *, concat_ws('#39' '#39', firstName, lastName) AS fullName from s' +
        'taff where active = '#39'Y'#39' order by id')
    Left = 608
    Top = 192
    object qryStaffid: TAutoIncField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryStaffuserId: TStringField
      FieldName = 'userId'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object qryStaffpassword: TStringField
      FieldName = 'password'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object qryStaffaccessLevel: TIntegerField
      FieldName = 'accessLevel'
      ProviderFlags = [pfInUpdate]
    end
    object qryStafffirstName: TStringField
      FieldName = 'firstName'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object qryStafflastName: TStringField
      FieldName = 'lastName'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object qryStafffullName: TStringField
      FieldName = 'fullName'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 91
    end
    object qryStaffport: TStringField
      FieldName = 'port'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryStafflastActive: TDateTimeField
      FieldName = 'lastActive'
      ProviderFlags = [pfInUpdate]
    end
    object qryStafflastTransactionID: TIntegerField
      FieldName = 'lastTransactionID'
      ProviderFlags = [pfInUpdate]
    end
    object qryStaffNickname: TStringField
      FieldName = 'Nickname'
      Size = 4
    end
  end
  object dsTransactionsOnHold: TDataSource
    DataSet = qryTransactionsOnHold
    Left = 400
    Top = 120
  end
  object qryTransactionsOnHold: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    AfterOpen = qryTransactionsOnHoldAfterOpen
    DataSource = dsStaff
    Parameters = <
      item
        Name = 'userId'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '      t.*,'
      
        '      SUBSTRING_INDEX(GROUP_CONCAT(distinct p.Name order by ts.T' +
        'ransactionStockId SEPARATOR '#39',   '#39'),'#39',   '#39',5) as Summary,'
      ''
      '      (select'
      
        '            (sum(if(discount>0, (sale_price*((100 - discount) / ' +
        '100)), sale_price)*quantity)'
      '             -'
      
        '             ifnull((select sum(ifnull(amount, 0)) as total from' +
        ' payments'
      '             where transactionID=t.id and Cancelled<> '#39'Y'#39'),0)'
      '             )'
      '             from transaction_stock'
      '             where transaction_stock.Transaction_ID=t.id'
      '       and transaction_stock.Returned <> '#39'Y'#39') as TotalDue'
      'from transactions t'
      'left join transaction_stock ts on t.id=ts.Transaction_Id'
      'left join products p on ts.CODE=p.CODE '
      'where IsOnHold='#39'Y'#39' '
      'and staffcode=:userId '
      'group by transaction_id'
      'order by t.id desc')
    Left = 400
    Top = 168
    object qryTransactionsOnHoldid: TAutoIncField
      DisplayLabel = 'Order No.'
      DisplayWidth = 12
      FieldName = 'id'
      ReadOnly = True
    end
    object qryTransactionsOnHoldDate: TDateTimeField
      DisplayWidth = 12
      FieldName = 'DateCreated'
      DisplayFormat = 'dd/mm/yyyy hh:mm AMPM'
    end
    object qryTransactionsOnHoldcustcode: TStringField
      DisplayLabel = 'Customer Code'
      DisplayWidth = 12
      FieldName = 'custcode'
      Size = 6
    end
    object qryTransactionsOnHoldTotalDue: TFMTBCDField
      DisplayLabel = 'Total Due'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'TotalDue'
      LookupDataSet = qryTotalDueOnHold
      LookupKeyFields = 'Transaction_ID'
      LookupResultField = 'TotalDue'
      KeyFields = 'id'
      ReadOnly = True
      OnGetText = CurrencyGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 58
      Lookup = True
    end
    object qryTransactionsOnHoldSummary: TStringField
      DisplayWidth = 30
      FieldName = 'Summary'
      ReadOnly = True
      Size = 1024
    end
    object qryTransactionsOnHoldstaffcode: TStringField
      DisplayLabel = 'Staff Code'
      DisplayWidth = 12
      FieldName = 'staffcode'
      Visible = False
      Size = 45
    end
    object qryTransactionsOnHoldDiscount: TBCDField
      DisplayWidth = 11
      FieldName = 'Discount'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qryTransactionsOnHoldDiscountDollar: TBCDField
      DisplayWidth = 11
      FieldName = 'DiscountDollar'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qryTransactionsOnHoldIsVoid: TStringField
      DisplayWidth = 1
      FieldName = 'IsVoid'
      Visible = False
      Size = 1
    end
    object qryTransactionsOnHoldIsOnHold: TStringField
      DisplayWidth = 1
      FieldName = 'IsOnHold'
      Visible = False
      Size = 1
    end
  end
  object dsTotalDueOnHold: TDataSource
    DataSet = qryTotalDueOnHold
    Left = 520
    Top = 128
  end
  object qryTotalDueOnHold: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsStaff
    Parameters = <
      item
        Name = 'userId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 16
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'select Transaction_ID,'
      
        '(sum(if(discount>0, (sale_price*((100 - discount) / 100)), sale_' +
        'price)*quantity)'
      '-'
      
        'ifnull((select sum(ifnull(amount, 0)) as total from payments whe' +
        're transactionID=transaction_stock.Transaction_ID and Cancelled<' +
        '> '#39'Y'#39'),0)'
      ') as TotalDue'#10
      'from transaction_stock'#13#10#10
      'where'
      '    transaction_stock.Returned <> '#39'Y'#39
      '    and transaction_stock.IsDeleted <> '#39'Y'#39
      
        '    and Transaction_ID in (select id from transactions where IsO' +
        'nHold='#39'Y'#39' and staffcode=:userId)'
      'group by Transaction_ID')
    Left = 520
    Top = 176
    object qryTotalDueOnHoldTotalDue: TFMTBCDField
      DisplayLabel = 'Total Due'
      DisplayWidth = 15
      FieldName = 'TotalDue'
      ReadOnly = True
      OnGetText = CurrencyGetText
      DisplayFormat = '$###,###,##0.00'
      Precision = 58
    end
    object qryTotalDueOnHoldTransaction_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Transaction_ID'
    end
  end
  object dsTransactionsOnHoldCount: TDataSource
    DataSet = qryTransactionsOnHoldCount
    Left = 704
    Top = 8
  end
  object qryTransactionsOnHoldCount: TADOQuery
    Connection = conLocalSQL
    AfterOpen = qryTransactionsOnHoldCountAfterOpen
    AfterScroll = qryTransactionsOnHoldCountAfterScroll
    DataSource = dsStaff
    Parameters = <
      item
        Name = 'userId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 96
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'select count(*) as amountOnHold from transactions where IsOnHold' +
        '='#39'Y'#39' and staffcode=:userId')
    Left = 704
    Top = 56
    object qryTransactionsOnHoldCountamountOnHold: TLargeintField
      FieldName = 'amountOnHold'
      ReadOnly = True
    end
  end
  object dsTransactionsNoStock: TDataSource
    DataSet = qryTransactionsNoStock
    Left = 96
    Top = 280
  end
  object qryTransactionsNoStock: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsStaff
    Parameters = <
      item
        Name = 'userId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 240
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'select '
      '    * '
      'from '
      '    transactions '
      'where '
      
        '    id not in (select transaction_id from transaction_stock grou' +
        'p by transaction_id) '
      
        '    and staffcode=:userId and date(datecreated) = current_date()' +
        ' ')
    Left = 96
    Top = 328
    object qryTransactionsNoStockid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryTransactionsNoStockcustcode: TStringField
      FieldName = 'custcode'
      Size = 6
    end
    object qryTransactionsNoStockDate: TDateTimeField
      FieldName = 'DateCreated'
    end
    object qryTransactionsNoStockts: TDateTimeField
      FieldName = 'ts'
    end
    object qryTransactionsNoStockstaffcode: TStringField
      DisplayLabel = 'Staff Code'
      DisplayWidth = 10
      FieldName = 'staffcode'
      Size = 45
    end
    object qryTransactionsNoStockDiscount: TBCDField
      FieldName = 'Discount'
      Precision = 10
      Size = 2
    end
    object qryTransactionsNoStockDiscountDollar: TBCDField
      FieldName = 'DiscountDollar'
      Precision = 10
      Size = 2
    end
    object qryTransactionsNoStockIsVoid: TStringField
      FieldName = 'IsVoid'
      Size = 1
    end
    object qryTransactionsNoStockIsOnHold: TStringField
      FieldName = 'IsOnHold'
      Size = 1
    end
  end
  object dsDistributors: TDataSource
    DataSet = qryDistributors
    Left = 736
    Top = 144
  end
  object qryDistributors: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from supplier order by code')
    Left = 728
    Top = 200
    object qryDistributorsNAME: TStringField
      FieldName = 'NAME'
      Size = 60
    end
    object qryDistributorsREFNUM: TStringField
      FieldName = 'REFNUM'
      Size = 8
    end
    object qryDistributorsPRINTAS: TStringField
      FieldName = 'PRINTAS'
      Size = 60
    end
    object qryDistributorsADDR1: TStringField
      FieldName = 'ADDR1'
      Size = 60
    end
    object qryDistributorsADDR2: TStringField
      FieldName = 'ADDR2'
      Size = 60
    end
    object qryDistributorsADDR3: TStringField
      FieldName = 'ADDR3'
      Size = 60
    end
    object qryDistributorsADDR4: TStringField
      FieldName = 'ADDR4'
      Size = 60
    end
    object qryDistributorsADDR5: TStringField
      FieldName = 'ADDR5'
      Size = 60
    end
    object qryDistributorsCONT1: TStringField
      FieldName = 'CONT1'
      Size = 60
    end
    object qryDistributorsCONT2: TStringField
      FieldName = 'CONT2'
      Size = 60
    end
    object qryDistributorsPHONE1: TStringField
      FieldName = 'PHONE1'
      Size = 14
    end
    object qryDistributorsPHONE2: TStringField
      FieldName = 'PHONE2'
      Size = 14
    end
    object qryDistributorsFAXNUM: TStringField
      FieldName = 'FAXNUM'
      Size = 14
    end
    object qryDistributorsNOTE: TStringField
      FieldName = 'NOTE'
      Size = 255
    end
    object qryDistributorsTAXID: TStringField
      FieldName = 'TAXID'
    end
    object qryDistributorsLIMIT: TStringField
      FieldName = 'LIMIT'
      Size = 30
    end
    object qryDistributorsTERMS: TStringField
      FieldName = 'TERMS'
    end
    object qryDistributorsNOTEPAD: TStringField
      FieldName = 'NOTEPAD'
      Size = 255
    end
    object qryDistributorsCode: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object qryDistributorsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryDistributorsTimes: TDateTimeField
      FieldName = 'Times'
    end
    object qryDistributorsWebsite: TStringField
      FieldName = 'Website'
      Size = 90
    end
    object qryDistributorsImagelink: TStringField
      FieldName = 'Imagelink'
      Size = 90
    end
    object qryDistributorsQR_Website: TStringField
      FieldName = 'QR_Website'
      Size = 90
    end
  end
  object dsLastTransactions: TDataSource
    DataSet = qryLastTransactions
    Left = 40
    Top = 440
  end
  object qryLastTransactions: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsStaff
    Parameters = <
      item
        Name = 'userId'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'select *,'
      '      (select'
      
        '            (sum(if(discount>0, (sale_price*((100 - discount) / ' +
        '100)), sale_price)*quantity))'
      '             from transaction_stock'
      '             where transaction_stock.Transaction_ID=t.id'
      '       and transaction_stock.Returned <> '#39'Y'#39') as Total'
      'from transactions t '
      
        'where staffcode=:userId and Date(DateCreated) = CURDATE() order ' +
        'by id desc')
    Left = 40
    Top = 488
    object qryLastTransactionsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryLastTransactionscustcode: TStringField
      FieldName = 'custcode'
      Size = 6
    end
    object qryLastTransactionsDate: TDateTimeField
      DisplayLabel = 'Time'
      FieldName = 'DateCreated'
      DisplayFormat = 'hh:mm AMPM'
    end
    object qryLastTransactionsts: TDateTimeField
      FieldName = 'ts'
    end
    object qryLastTransactionsstaffcode: TStringField
      FieldName = 'staffcode'
      Size = 6
    end
    object qryLastTransactionsDiscount: TBCDField
      FieldName = 'Discount'
      Precision = 10
      Size = 2
    end
    object qryLastTransactionsDiscountDollar: TBCDField
      FieldName = 'DiscountDollar'
      Precision = 10
      Size = 2
    end
    object qryLastTransactionsIsVoid: TStringField
      FieldName = 'IsVoid'
      Size = 1
    end
    object qryLastTransactionsIsOnHold: TStringField
      FieldName = 'IsOnHold'
      Size = 1
    end
    object qryLastTransactionsTotal: TFMTBCDField
      FieldName = 'Total'
      ReadOnly = True
      OnGetText = CurrencyGetText
      Precision = 57
      Size = 10
    end
  end
  object qryCheckedAllStock: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsTransactions
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = '11'
      end>
    SQL.Strings = (
      'select '
      '    TransactionStockId,'
      '    IsStockChecked'
      'from '
      '    transaction_stock'
      'where '
      '    transaction_stock.Transaction_ID=:id'
      '    and transaction_stock.Returned <> '#39'Y'#39
      '    and transaction_stock.IsStockChecked = '#39'N'#39
      '    and transaction_stock.MustCheckForStock = '#39'Y'#39
      '    and transaction_stock.IsDeleted <> '#39'Y'#39';')
    Left = 784
    Top = 576
    object qryCheckedAllStockTransactionStockId: TAutoIncField
      FieldName = 'TransactionStockId'
      ReadOnly = True
    end
    object qryCheckedAllStockIsStockChecked: TStringField
      FieldName = 'IsStockChecked'
      Size = 1
    end
  end
  object dsTransactionStockCalcStore: TDataSource
    DataSet = qryTransactionStockCalcStore
    Left = 312
    Top = 584
  end
  object qryTransactionStockCalcStore: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsTransactionStock
    Parameters = <
      item
        Name = 'code'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'supplier'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from stock where stock.code = :code and stock.supplier ' +
        '= :supplier;')
    Left = 312
    Top = 640
    object qryTransactionStockCalcStoreid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryTransactionStockCalcStoreCode: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object qryTransactionStockCalcStoreSupplier: TStringField
      FieldName = 'Supplier'
      Size = 12
    end
    object qryTransactionStockCalcStoreCost_Price: TBCDField
      FieldName = 'Cost_Price'
      Precision = 10
      Size = 2
    end
    object qryTransactionStockCalcStoreSale_Price: TBCDField
      FieldName = 'Sale_Price'
      Precision = 10
      Size = 2
    end
    object qryTransactionStockCalcStoreQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object qryTransactionStockCalcStoreDate_Ordered: TDateTimeField
      FieldName = 'Date_Ordered'
    end
    object qryTransactionStockCalcStoreDate_Received: TDateTimeField
      FieldName = 'Date_Received'
    end
    object qryTransactionStockCalcStoreDate_Sold: TDateTimeField
      FieldName = 'Date_Sold'
    end
    object qryTransactionStockCalcStoreOrder_Number: TStringField
      FieldName = 'Order_Number'
      Size = 45
    end
    object qryTransactionStockCalcStoreInvoice_Number: TStringField
      FieldName = 'Invoice_Number'
      Size = 45
    end
    object qryTransactionStockCalcStoreLocation: TStringField
      FieldName = 'Location'
      Size = 45
    end
    object qryTransactionStockCalcStoreTransaction_ID: TIntegerField
      FieldName = 'Transaction_ID'
    end
    object qryTransactionStockCalcStoreStock_Type: TStringField
      FieldName = 'Stock_Type'
      Size = 6
    end
    object qryTransactionStockCalcStoreStock_Status: TStringField
      FieldName = 'Stock_Status'
      Size = 6
    end
  end
  object dsStockLookup: TDataSource
    DataSet = qryStockLookup
    Left = 120
    Top = 584
  end
  object qryStockLookup: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select *, sum(quantity) as totalqty from stock where location = ' +
        #39'bla'#39' group by location')
    Left = 128
    Top = 640
    object qryStockLookupid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryStockLookupCode: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object qryStockLookupSupplier: TStringField
      FieldName = 'Supplier'
      Size = 12
    end
    object qryStockLookupCost_Price: TBCDField
      FieldName = 'Cost_Price'
      Precision = 10
      Size = 2
    end
    object qryStockLookupSale_Price: TBCDField
      FieldName = 'Sale_Price'
      Precision = 10
      Size = 2
    end
    object qryStockLookupQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object qryStockLookupDate_Ordered: TDateTimeField
      FieldName = 'Date_Ordered'
    end
    object qryStockLookupDate_Received: TDateTimeField
      FieldName = 'Date_Received'
    end
    object qryStockLookupDate_Sold: TDateTimeField
      FieldName = 'Date_Sold'
    end
    object qryStockLookupOrder_Number: TStringField
      FieldName = 'Order_Number'
      Size = 45
    end
    object qryStockLookupInvoice_Number: TStringField
      FieldName = 'Invoice_Number'
      Size = 45
    end
    object qryStockLookupLocation: TStringField
      FieldName = 'Location'
      Size = 45
    end
    object qryStockLookupTransaction_ID: TIntegerField
      FieldName = 'Transaction_ID'
    end
    object qryStockLookupStock_Type: TStringField
      FieldName = 'Stock_Type'
      Size = 6
    end
    object qryStockLookupStock_Status: TStringField
      FieldName = 'Stock_Status'
      Size = 6
    end
    object qryStockLookuptotalqty: TFMTBCDField
      FieldName = 'totalqty'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object dsTransactionStockDisplay: TDataSource
    DataSet = qryTransactionStockDisplay
    Left = 488
    Top = 584
  end
  object qryTransactionStockDisplay: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsTransactionStock
    Parameters = <
      item
        Name = 'code'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'supplier'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'select *,sum(quantity) as totalqty from stock where stock.code =' +
        ' :code and stock.supplier = :supplier and Stock_Status='#39'RE'#39' grou' +
        'p by stock.location')
    Left = 488
    Top = 632
    object qryTransactionStockDisplayid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryTransactionStockDisplayCode: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object qryTransactionStockDisplaySupplier: TStringField
      FieldName = 'Supplier'
      Size = 12
    end
    object qryTransactionStockDisplayCost_Price: TBCDField
      FieldName = 'Cost_Price'
      Precision = 10
      Size = 2
    end
    object qryTransactionStockDisplaySale_Price: TBCDField
      FieldName = 'Sale_Price'
      Precision = 10
      Size = 2
    end
    object qryTransactionStockDisplayQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object qryTransactionStockDisplayDate_Ordered: TDateTimeField
      FieldName = 'Date_Ordered'
    end
    object qryTransactionStockDisplayDate_Received: TDateTimeField
      FieldName = 'Date_Received'
    end
    object qryTransactionStockDisplayDate_Sold: TDateTimeField
      FieldName = 'Date_Sold'
    end
    object qryTransactionStockDisplayOrder_Number: TStringField
      FieldName = 'Order_Number'
      Size = 45
    end
    object qryTransactionStockDisplayInvoice_Number: TStringField
      FieldName = 'Invoice_Number'
      Size = 45
    end
    object qryTransactionStockDisplayLocation: TStringField
      FieldName = 'Location'
      Size = 45
    end
    object qryTransactionStockDisplayTransaction_ID: TIntegerField
      FieldName = 'Transaction_ID'
    end
    object qryTransactionStockDisplayStock_Type: TStringField
      FieldName = 'Stock_Type'
      Size = 6
    end
    object qryTransactionStockDisplayStock_Status: TStringField
      FieldName = 'Stock_Status'
      Size = 6
    end
    object qryTransactionStockDisplaytotalqty: TFMTBCDField
      FieldName = 'totalqty'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object dsTransactionStockDisplayEx: TDataSource
    DataSet = qryTransactionStockDisplayEx
    Left = 640
    Top = 584
  end
  object qryTransactionStockDisplayEx: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'code'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'supplier'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'select *,sum(quantity) as totalqty from stock where stock.code =' +
        ' :code and stock.supplier = :supplier and Stock_Status='#39'RE'#39' grou' +
        'p by location')
    Left = 640
    Top = 632
    object qryTransactionStockDisplayExid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryTransactionStockDisplayExCode: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object qryTransactionStockDisplayExSupplier: TStringField
      FieldName = 'Supplier'
      Size = 12
    end
    object qryTransactionStockDisplayExCost_Price: TBCDField
      FieldName = 'Cost_Price'
      Precision = 10
      Size = 2
    end
    object qryTransactionStockDisplayExSale_Price: TBCDField
      FieldName = 'Sale_Price'
      Precision = 10
      Size = 2
    end
    object qryTransactionStockDisplayExQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object qryTransactionStockDisplayExDate_Ordered: TDateTimeField
      FieldName = 'Date_Ordered'
    end
    object qryTransactionStockDisplayExDate_Received: TDateTimeField
      FieldName = 'Date_Received'
    end
    object qryTransactionStockDisplayExDate_Sold: TDateTimeField
      FieldName = 'Date_Sold'
    end
    object qryTransactionStockDisplayExOrder_Number: TStringField
      FieldName = 'Order_Number'
      Size = 45
    end
    object qryTransactionStockDisplayExInvoice_Number: TStringField
      FieldName = 'Invoice_Number'
      Size = 45
    end
    object qryTransactionStockDisplayExLocation: TStringField
      FieldName = 'Location'
      Size = 45
    end
    object qryTransactionStockDisplayExTransaction_ID: TIntegerField
      FieldName = 'Transaction_ID'
    end
    object qryTransactionStockDisplayExStock_Type: TStringField
      FieldName = 'Stock_Type'
      Size = 6
    end
    object qryTransactionStockDisplayExStock_Status: TStringField
      FieldName = 'Stock_Status'
      Size = 6
    end
    object qryTransactionStockDisplayExtotalqty: TFMTBCDField
      FieldName = 'totalqty'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object qryStockReplenish: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Filtered = True
    OnFilterRecord = qryStockReplenishFilterRecord
    Parameters = <
      item
        Name = 'Supplier'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 8
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'Code'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 8
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from stock_replenish where Supplier=:Supplier and Code=' +
        ':Code order by Supplier, Code')
    Left = 760
    Top = 368
    object qryStockReplenishSupplier: TStringField
      DisplayWidth = 6
      FieldName = 'Supplier'
      Size = 12
    end
    object qryStockReplenishCode: TStringField
      DisplayWidth = 6
      FieldName = 'Code'
      Size = 12
    end
    object qryStockReplenishQuantity_Required: TIntegerField
      DisplayLabel = 'Req'
      DisplayWidth = 3
      FieldName = 'Quantity_Required'
    end
    object qryStockReplenishCurrent_Quantity: TIntegerField
      DisplayLabel = 'Shop'
      DisplayWidth = 3
      FieldName = 'Current_Quantity'
    end
    object qryStockReplenishLocation: TStringField
      DisplayWidth = 3
      FieldName = 'Location'
      Size = 45
    end
    object qryStockReplenishRequest_type: TStringField
      DisplayLabel = 'R'
      DisplayWidth = 1
      FieldName = 'Request_type'
      Size = 1
    end
    object qryStockReplenishTransaction_ID: TIntegerField
      DisplayLabel = 'T'
      DisplayWidth = 1
      FieldName = 'Transaction_ID'
    end
    object qryStockReplenishid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
  end
  object dsStockReplenish: TDataSource
    DataSet = qryStockReplenish
    Left = 672
    Top = 368
  end
  object qrystockrepadd: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Supplier'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'Code'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from stock_replenish where Supplier=:Supplier and Code=' +
        ':Code Order by Supplier, Code')
    Left = 784
    Top = 312
  end
  object dsstockrepadd: TDataSource
    DataSet = qrystockrepadd
    Left = 680
    Top = 312
  end
  object qryTransactionPrint: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    OnCalcFields = qryTransactionPrintCalcFields
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select transaction_stock.*,  if(products.name<>"",products.name,' +
        'b.title) as name '
      
        ' from transaction_stock left join book b on transaction_stock.su' +
        'pplier = "B2BAV" and transaction_stock.code = b.book_code '
      
        'left join products on transaction_stock.supplier  = products.sup' +
        'plier and transaction_stock.code = products.code'
      
        ' where transaction_stock.Transaction_ID = "9999" and IsDeleted =' +
        ' "N"  '
      'order by TransactionStockId')
    Left = 520
    Top = 384
    object qryTransactionPrintTransactionStockId: TAutoIncField
      FieldName = 'TransactionStockId'
      ReadOnly = True
    end
    object qryTransactionPrintCode: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object qryTransactionPrintSale_Price: TBCDField
      FieldName = 'Sale_Price'
      Precision = 10
      Size = 2
    end
    object qryTransactionPrintQuantity: TBCDField
      FieldName = 'Quantity'
      Precision = 10
      Size = 2
    end
    object qryTransactionPrintTransaction_ID: TIntegerField
      FieldName = 'Transaction_ID'
    end
    object qryTransactionPrintDiscount: TBCDField
      FieldName = 'Discount'
      Precision = 10
      Size = 2
    end
    object qryTransactionPrintReturned: TStringField
      FieldName = 'Returned'
      Size = 1
    end
    object qryTransactionPrintReturnType: TStringField
      FieldName = 'ReturnType'
    end
    object qryTransactionPrintReturnReason: TStringField
      FieldName = 'ReturnReason'
      Size = 60
    end
    object qryTransactionPrintTransactionDiscount: TBCDField
      FieldName = 'TransactionDiscount'
      Precision = 10
      Size = 2
    end
    object qryTransactionPrintSupplier: TStringField
      FieldName = 'Supplier'
      Size = 12
    end
    object qryTransactionPrintLocation_SHOP: TIntegerField
      FieldName = 'Location_SHOP'
    end
    object qryTransactionPrintLocation_STORE: TIntegerField
      FieldName = 'Location_STORE'
    end
    object qryTransactionPrintLocation_SHED: TIntegerField
      FieldName = 'Location_SHED'
    end
    object qryTransactionPrintIsStockChecked: TStringField
      FieldName = 'IsStockChecked'
      Size = 1
    end
    object qryTransactionPrintIsDeleted: TStringField
      FieldName = 'IsDeleted'
      Size = 1
    end
    object qryTransactionPrintMustCheckForStock: TStringField
      FieldName = 'MustCheckForStock'
      Size = 1
    end
    object qryTransactionPrintIsGiftCard: TStringField
      FieldName = 'IsGiftCard'
      Size = 1
    end
    object qryTransactionPrintBox: TStringField
      FieldName = 'Box'
      Size = 1
    end
    object qryTransactionPrintItemInfo: TStringField
      FieldKind = fkCalculated
      FieldName = 'ItemInfo'
      Size = 30
      Calculated = True
    end
    object qryTransactionPrintPrice: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Price'
      Calculated = True
    end
    object qryTransactionPrintSubtotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Subtotal'
      Calculated = True
    end
    object qryTransactionPrintname: TStringField
      FieldName = 'name'
      Size = 60
    end
  end
  object dsTransactionPrint: TDataSource
    DataSet = qryTransactionPrint
    Left = 520
    Top = 328
  end
  object dsTillCatDrill: TDataSource
    DataSet = qryTillCatdrill
    Left = 352
    Top = 256
  end
  object qryTillCatdrill: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from catcode where isTill = '#39'Y'#39' AND iSMaster = 1')
    Left = 352
    Top = 304
    object qryTillCatdrillCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 4
    end
    object qryTillCatdrillNAME: TStringField
      FieldName = 'NAME'
      Size = 60
    end
    object qryTillCatdrillIsMaster: TSmallintField
      FieldName = 'IsMaster'
    end
    object qryTillCatdrillMastercode: TStringField
      FieldName = 'Mastercode'
      Size = 60
    end
    object qryTillCatdrillIsTill: TStringField
      FieldName = 'IsTill'
      Size = 1
    end
    object qryTillCatdrillIsMisc: TStringField
      FieldName = 'IsMisc'
      Size = 1
    end
  end
  object qryProdCat: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsProductsSearch
    Parameters = <
      item
        Name = 'Supplier'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 240
        Precision = 255
        Size = 10
        Value = 'BRIT'
      end
      item
        Name = 'Code'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 240
        Precision = 255
        Size = 12
        Value = '4027895z'
      end>
    SQL.Strings = (
      
        'select * from ProductsCategories where supplier = :Supplier and ' +
        'code = :Code')
    Left = 408
    Top = 320
    object qryProdCatCode: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object qryProdCatSupplier: TStringField
      FieldName = 'Supplier'
      Size = 12
    end
    object qryProdCatCategoryCode: TStringField
      FieldName = 'CategoryCode'
      Size = 12
    end
  end
  object dsProdCat: TDataSource
    DataSet = qryProdCat
    Left = 408
    Top = 264
  end
  object dsQuery: TDataSource
    DataSet = qryQuery
    Left = 224
    Top = 272
  end
  object qryQuery: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <
      item
        Name = 'Supplier'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 240
        Precision = 255
        Size = 10
        Value = 'BRIT'
      end
      item
        Name = 'Code'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 240
        Precision = 255
        Size = 12
        Value = '4027895z'
      end>
    SQL.Strings = (
      
        'select * from ProductsCategories where supplier = :Supplier and ' +
        'code = :Code')
    Left = 216
    Top = 352
    object StringField1: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object StringField2: TStringField
      FieldName = 'Supplier'
      Size = 12
    end
    object StringField3: TStringField
      FieldName = 'CategoryCode'
      Size = 12
    end
  end
  object qrytransactiondaily: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select  s.transaction_id, s.code, s.supplier, s.quantity,if(s.re' +
        'turned="Y",s.quantity * s.sale_price,0) as retTotal, if(p.name<>' +
        '"",p.name,b.title) as name,s.sale_price,  s.quantity * s.sale_pr' +
        'ice as Total, s.location_shop,  s.location_store,  s.location_sh' +
        'ed  from transaction_stock s left join products p on s.supplier ' +
        '= p.supplier and s.code = p.code left join book b on s.supplier ' +
        '= "B2BAV" AND s.code = b.book_code left join transactions on s.t' +
        'ransaction_id = transactions.id where date(transactions.datecrea' +
        'ted) = current_date() and isdeleted = '#39'N'#39'  order by s.Transactio' +
        'n_id,s.TransactionStockId'#10)
    Left = 904
    Top = 528
    object qrytransactiondailytransaction_id: TIntegerField
      FieldName = 'transaction_id'
    end
    object qrytransactiondailycode: TStringField
      FieldName = 'code'
      Size = 12
    end
    object qrytransactiondailysupplier: TStringField
      FieldName = 'supplier'
      Size = 12
    end
    object qrytransactiondailyquantity: TBCDField
      FieldName = 'quantity'
      Precision = 10
      Size = 2
    end
    object qrytransactiondailyname: TStringField
      FieldName = 'name'
      ReadOnly = True
      Size = 150
    end
    object qrytransactiondailysale_price: TBCDField
      FieldName = 'sale_price'
      Precision = 10
      Size = 2
    end
    object qrytransactiondailyTotal: TFMTBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 20
      Size = 4
    end
    object qrytransactiondailylocation_shop: TIntegerField
      FieldName = 'location_shop'
    end
    object qrytransactiondailylocation_store: TIntegerField
      FieldName = 'location_store'
    end
    object qrytransactiondailylocation_shed: TIntegerField
      FieldName = 'location_shed'
    end
    object qrytransactiondailyretTotal: TFMTBCDField
      FieldName = 'retTotal'
      ReadOnly = True
      Precision = 20
      Size = 4
    end
  end
  object dstransactiondaily: TDataSource
    DataSet = qrytransactiondaily
    Left = 880
    Top = 440
  end
  object qrytotalsales: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select  sum(s.quantity * s.sale_price) as Totalsales,sum(if(s.su' +
        'pplier="B2BAV",s.quantity * s.sale_price,0) ) as totalbooksAv,'
      
        ' sum(if(s.supplier="B2B",s.quantity * s.sale_price,0) ) as total' +
        'b2b, '
      'sum(if(s.returned="Y",s.quantity * s.sale_price,0)) as retTotal,'
      
        'sum(if(left(s.supplier,3)<>"B2B",s.quantity * s.sale_price,0) ) ' +
        'as totalother '
      
        'from transaction_stock s left join products p on s.supplier = p.' +
        'supplier and s.code = p.code left join transactions on s.transac' +
        'tion_id = transactions.id where date(transactions.datecreated) =' +
        ' current_date() and isdeleted = '#39'N'#39' and Returned = '#39'N'#39'  group by' +
        ' '#10'date(transactions.datecreated)')
    Left = 912
    Top = 376
    object qrytotalsalestotalbooksAv: TFMTBCDField
      DisplayLabel = 'Books Av'
      DisplayWidth = 10
      FieldName = 'totalbooksAv'
      ReadOnly = True
      Visible = False
      Precision = 42
      Size = 4
    end
    object qrytotalsalestotalb2b: TFMTBCDField
      DisplayLabel = 'B2B products'
      DisplayWidth = 10
      FieldName = 'totalb2b'
      ReadOnly = True
      Visible = False
      Precision = 42
      Size = 4
    end
    object qrytotalsalestotalother: TFMTBCDField
      DisplayLabel = 'Other'
      DisplayWidth = 10
      FieldName = 'totalother'
      ReadOnly = True
      Visible = False
      Precision = 42
      Size = 4
    end
    object qrytotalsalesTotalsales: TFMTBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'Totalsales'
      ReadOnly = True
      Visible = False
      Precision = 42
      Size = 4
    end
    object qrytotalsalesretTotal: TFMTBCDField
      FieldName = 'retTotal'
      ReadOnly = True
      Visible = False
      Precision = 42
      Size = 4
    end
  end
  object dstotalsales: TDataSource
    DataSet = qrytotalsales
    Left = 888
    Top = 288
  end
  object qrybookmusic: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select * from book')
    Left = 272
    Top = 328
  end
  object dsbookmusic: TDataSource
    DataSet = qrybookmusic
    Left = 272
    Top = 272
  end
  object qrystockcheck: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'SELECT sum(if(s.location="SHOP",s.quantity,0)) as shop,sum(if(s.' +
        'location="STORE",s.quantity,0)) as store, sum(if(s.location="SHE' +
        'D",s.quantity,0)) as shed FROM products p left join stock s on p' +
        '.supplier = s.supplier and p.code = s.code and s.stock_status = ' +
        '"RE" where  p.supplier = "B2B" AND p.code like "EO%" group by p.' +
        'supplier, p.code')
    Left = 64
    Top = 640
    object qrystockcheckshop: TFMTBCDField
      FieldName = 'shop'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object qrystockcheckstore: TFMTBCDField
      FieldName = 'store'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object qrystockcheckshed: TFMTBCDField
      FieldName = 'shed'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object dsstockcheck: TDataSource
    DataSet = qrystockcheck
    Left = 56
    Top = 584
  end
  object dsMisc: TDataSource
    DataSet = QryMisc
    Left = 832
    Top = 112
  end
  object QryMisc: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from products where supplier='#39'XXX'#39)
    Left = 832
    Top = 160
    object QryMiscName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object QryMiscCode: TStringField
      FieldName = 'Code'
      Size = 12
    end
    object QryMiscSupplier: TStringField
      FieldName = 'Supplier'
      Size = 10
    end
  end
  object dsdailytill: TDataSource
    DataSet = qrydailytill
    Left = 488
    Top = 248
  end
  object qrydailytill: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    OnCalcFields = qrydailytillCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT t.*,time(p.datecreated) as times,date(p.datecreated) as D' +
        'ateC,0.00 as totaltransaction,sum(if(paymenttype = '#39'CASH'#39',AMOUNT' +
        ',0)) AS cashtotal,'#10'sum(if(paymenttype = '#39'CHANGE'#39',AMOUNT,0)) AS c' +
        'hangetotal,'#10'(sum(if(paymenttype = '#39'CASH'#39',AMOUNT,0))+sum(if(payme' +
        'nttype = '#39'CHANGE'#39',AMOUNT,0))) as totalcash,'#10'sum(if(paymenttype =' +
        ' '#39'EFT DEBIT'#39',AMOUNT,0)) AS efttotal,'#10'sum(if(paymenttype = '#39'CREDI' +
        'TCARD'#39',AMOUNT,0)) AS creditcardtotal,'#10'sum(if(paymenttype = '#39'MONE' +
        'YORDER'#39',AMOUNT,0)) AS moneyordertotal,'#10'sum(if(paymenttype = '#39'GIF' +
        'TCARD'#39',AMOUNT,0)) AS giftcardtotal,'#10'sum(if(paymenttype = '#39'DISCOU' +
        'NT'#39',AMOUNT,0)) AS discounttotal,'#10'sum(if(paymenttype = '#39'CREDIT'#39',A' +
        'MOUNT,0)) AS credittotal,'#10'(sum(if(paymenttype in('#39'CASH'#39','#39'EFT DEB' +
        'IT'#39','#39'CREDITCARD'#39','#39'MONEYORDER'#39'),AMOUNT,0))+sum(if(paymenttype = '#39 +
        'CHANGE'#39',AMOUNT,0))) as totalrev'#10',sum(if(paymenttype = "REFUND CA' +
        'SH",AMOUNT,0)) AS refcashtotal '#10'FROM payments p left join transa' +
        'ctions t on p.transactionid = t.id  where  date(t.datecreated) =' +
        ' '#39'2013-11-14'#39' or date(p.datecreated) = '#39'2013-11-14'#39'   group by '
      't.id '
      'order '
      'by t'
      '.id')
    Left = 552
    Top = 296
    object qrydailytillid: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
    end
    object qrydailytillcustcode: TStringField
      DisplayLabel = 'cust'
      DisplayWidth = 6
      FieldName = 'custcode'
      Size = 6
    end
    object qrydailytillstaffcode: TStringField
      DisplayLabel = 'staff'
      DisplayWidth = 4
      FieldName = 'staffcode'
      Size = 6
    end
    object qrydailytillIsLayby: TStringField
      DisplayLabel = 'Lay~by'
      DisplayWidth = 1
      FieldName = 'IsLayby'
      Size = 1
    end
    object qrydailytilltotaltransaction: TBCDField
      DisplayLabel = 'total~trans'
      DisplayWidth = 6
      FieldName = 'totaltransaction'
      ReadOnly = True
      Precision = 3
      Size = 2
    end
    object qrydailytillowing: TFMTBCDField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'owing'
      Calculated = True
    end
    object qrydailytillcashtotal: TFMTBCDField
      DisplayLabel = 'Amount'
      DisplayWidth = 7
      FieldName = 'cashtotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltimes: TTimeField
      DisplayWidth = 12
      FieldName = 'times'
      ReadOnly = True
      DisplayFormat = 'hh:nn'
    end
    object qrydailytillchangetotal: TFMTBCDField
      DisplayLabel = 'chge'
      DisplayWidth = 5
      FieldName = 'changetotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltotalcash: TFMTBCDField
      DisplayWidth = 7
      FieldName = 'totalcash'
      ReadOnly = True
      Precision = 33
      Size = 2
    end
    object qrydailytillefttotal: TFMTBCDField
      DisplayLabel = 'eft'
      DisplayWidth = 7
      FieldName = 'efttotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytillcreditcardtotal: TFMTBCDField
      DisplayLabel = 'creditcard'
      DisplayWidth = 7
      FieldName = 'creditcardtotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytillmoneyordertotal: TFMTBCDField
      DisplayLabel = 'moneyord'
      DisplayWidth = 7
      FieldName = 'moneyordertotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltotalrev: TFMTBCDField
      DisplayWidth = 7
      FieldName = 'totalrev'
      ReadOnly = True
      Precision = 33
      Size = 2
    end
    object qrydailytillgiftcardtotal: TFMTBCDField
      DisplayLabel = 'giftcard'
      DisplayWidth = 7
      FieldName = 'giftcardtotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytillcredittotal: TFMTBCDField
      DisplayLabel = 'ref credit'
      DisplayWidth = 7
      FieldName = 'credittotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytillrefcashtotal: TFMTBCDField
      DisplayLabel = 'Refund$'
      DisplayWidth = 7
      FieldName = 'refcashtotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytillDateCreated: TDateTimeField
      DisplayWidth = 12
      FieldName = 'DateCreated'
    end
    object qrydailytillDateC: TDateField
      DisplayWidth = 12
      FieldName = 'DateC'
      ReadOnly = True
    end
    object qrydailytilldiscounttotal: TFMTBCDField
      DisplayLabel = 'discount'
      DisplayWidth = 5
      FieldName = 'discounttotal'
      ReadOnly = True
      Visible = False
      Precision = 32
      Size = 2
    end
    object qrydailytillDiscount: TBCDField
      DisplayLabel = 'Disc%'
      DisplayWidth = 5
      FieldName = 'Discount'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qrydailytillDiscountDollar: TBCDField
      DisplayLabel = 'Disc$'
      DisplayWidth = 5
      FieldName = 'DiscountDollar'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qrydailytillts: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ts'
      Visible = False
    end
    object qrydailytillIsVoid: TStringField
      DisplayWidth = 1
      FieldName = 'IsVoid'
      Visible = False
      Size = 1
    end
    object qrydailytillIsOnHold: TStringField
      DisplayWidth = 1
      FieldName = 'IsOnHold'
      Visible = False
      Size = 1
    end
  end
  object dsdailytilltotals: TDataSource
    DataSet = qrydailytilltotals
    Left = 576
    Top = 248
  end
  object qrydailytilltotals: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(if(paymenttype = '#39'CASH'#39',AMOUNT,0)) AS cashtotal,'#10'sum(' +
        'if(paymenttype = '#39'CHANGE'#39',AMOUNT,0)) AS changetotal,'#10'(sum(if(pay' +
        'menttype = '#39'CASH'#39',AMOUNT,0))+sum(if(paymenttype = '#39'CHANGE'#39',AMOUN' +
        'T,0))) as totalcash,'#10'sum(if(paymenttype = '#39'EFT DEBIT'#39',AMOUNT,0))' +
        ' AS efttotal,'#10'sum(if(paymenttype = '#39'CREDITCARD'#39',AMOUNT,0)) AS cr' +
        'editcardtotal,'#10'sum(if(paymenttype = '#39'MONEYORDER'#39',AMOUNT,0)) AS m' +
        'oneyordertotal,'#10'sum(if(paymenttype = '#39'GIFTCARD'#39',AMOUNT,0)) AS gi' +
        'ftcardtotal,'#10'sum(if(paymenttype = '#39'DISCOUNT'#39',AMOUNT,0)) AS disco' +
        'unttotal,'#10'sum(if(paymenttype = '#39'CREDIT'#39',AMOUNT,0)) AS credittota' +
        'l,'#10'(sum(if(paymenttype in('#39'CASH'#39','#39'EFT DEBIT'#39','#39'CREDITCARD'#39','#39'MONEY' +
        'ORDER'#39'),AMOUNT,0))+sum(if(paymenttype = '#39'CHANGE'#39',AMOUNT,0))) as ' +
        'totalrev,sum(if(paymenttype = "REFUND CASH",AMOUNT,0)) AS refcas' +
        'htotal'#10' from payments where date(datecreated) = '#39'2013-11-10'#39' ')
    Left = 624
    Top = 288
    object qrydailytilltotalscashtotal: TFMTBCDField
      DisplayWidth = 33
      FieldName = 'cashtotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltotalschangetotal: TFMTBCDField
      DisplayWidth = 33
      FieldName = 'changetotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltotalstotalcash: TFMTBCDField
      DisplayWidth = 34
      FieldName = 'totalcash'
      ReadOnly = True
      Precision = 33
      Size = 2
    end
    object qrydailytilltotalsefttotal: TFMTBCDField
      DisplayWidth = 33
      FieldName = 'efttotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltotalscreditcardtotal: TFMTBCDField
      DisplayWidth = 33
      FieldName = 'creditcardtotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltotalsmoneyordertotal: TFMTBCDField
      DisplayWidth = 33
      FieldName = 'moneyordertotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltotalsgiftcardtotal: TFMTBCDField
      DisplayWidth = 33
      FieldName = 'giftcardtotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltotalsdiscounttotal: TFMTBCDField
      DisplayWidth = 33
      FieldName = 'discounttotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltotalscredittotal: TFMTBCDField
      DisplayWidth = 33
      FieldName = 'credittotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qrydailytilltotalstotalrev: TFMTBCDField
      DisplayWidth = 34
      FieldName = 'totalrev'
      ReadOnly = True
      Precision = 33
      Size = 2
    end
    object qrydailytilltotalsrefcashtotal: TFMTBCDField
      FieldName = 'refcashtotal'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object qrycust: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cust')
    Left = 872
    Top = 208
    object qrycustCustcode: TStringField
      DisplayWidth = 6
      FieldName = 'Custcode'
      Size = 6
    end
    object qrycustSaleno: TStringField
      DisplayWidth = 4
      FieldName = 'Saleno'
      Size = 4
    end
    object qrycustAccountcode: TStringField
      DisplayWidth = 6
      FieldName = 'Account code'
      Size = 6
    end
    object qrycustFirstname: TStringField
      DisplayWidth = 40
      FieldName = 'Firstname'
      Size = 40
    end
    object qrycustSurname: TStringField
      DisplayWidth = 40
      FieldName = 'Surname'
      Size = 40
    end
    object qrycustCompany: TStringField
      DisplayWidth = 60
      FieldName = 'Company'
      Size = 60
    end
    object qrycustAddaddress1: TStringField
      DisplayWidth = 40
      FieldName = 'Addaddress1'
      Size = 40
    end
    object qrycustAddadress2: TStringField
      DisplayWidth = 40
      FieldName = 'Addadress2'
      Size = 40
    end
    object qrycustStreet: TStringField
      DisplayWidth = 40
      FieldName = 'Street'
      Size = 40
    end
    object qrycustSuburb: TStringField
      DisplayWidth = 40
      FieldName = 'Suburb'
      Size = 40
    end
    object qrycustStatepostcode: TStringField
      DisplayWidth = 40
      FieldName = 'Statepostcode'
      Size = 40
    end
    object qrycustBusiness: TStringField
      DisplayWidth = 20
      FieldName = 'Business'
    end
    object qrycustHome: TStringField
      DisplayWidth = 20
      FieldName = 'Home'
    end
    object qrycustFax: TStringField
      DisplayWidth = 20
      FieldName = 'Fax'
    end
    object qrycustMobile: TStringField
      DisplayWidth = 20
      FieldName = 'Mobile'
    end
    object qrycustEmail: TStringField
      DisplayWidth = 60
      FieldName = 'Email'
      Size = 60
    end
    object qrycustTerms: TStringField
      DisplayWidth = 1
      FieldName = 'Terms'
      FixedChar = True
      Size = 1
    end
    object qrycustDetails: TStringField
      DisplayWidth = 70
      FieldName = 'Details'
      Size = 70
    end
    object qrycustAuto: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Auto'
      ReadOnly = True
      Visible = False
    end
    object qrycustGroup: TStringField
      DisplayWidth = 2
      FieldName = 'Group'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object qrycustSalesTaxNo: TStringField
      DisplayWidth = 10
      FieldName = 'Sales Tax No'
      Visible = False
      Size = 10
    end
    object qrycustCustText: TMemoField
      DisplayWidth = 10
      FieldName = 'Cust Text'
      Visible = False
      BlobType = ftMemo
    end
    object qrycustOWING: TBCDField
      DisplayWidth = 11
      FieldName = 'OWING'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qrycustSales: TStringField
      DisplayWidth = 2
      FieldName = 'Sales'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object qrycustJobno: TStringField
      DisplayWidth = 6
      FieldName = 'Jobno'
      Visible = False
      Size = 6
    end
    object qrycustQuoteterms: TMemoField
      DisplayWidth = 10
      FieldName = 'Quoteterms'
      Visible = False
      BlobType = ftMemo
    end
    object qrycustPremium: TBCDField
      DisplayWidth = 11
      FieldName = 'Premium'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qrycustCreditcard: TStringField
      DisplayWidth = 80
      FieldName = 'Creditcard'
      Visible = False
      Size = 80
    end
    object qrycustDate: TStringField
      DisplayWidth = 8
      FieldName = 'Date'
      Visible = False
      Size = 8
    end
    object qrycustComments: TStringField
      DisplayWidth = 80
      FieldName = 'Comments'
      Visible = False
      Size = 80
    end
    object qrycustZone: TStringField
      DisplayWidth = 1
      FieldName = 'Zone'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrycustStatus: TStringField
      DisplayWidth = 1
      FieldName = 'Status'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrycustMaillist: TStringField
      DisplayWidth = 1
      FieldName = 'Maillist'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrycustFunctions: TStringField
      DisplayWidth = 1
      FieldName = 'Functions'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrycustFunction_attended: TStringField
      DisplayWidth = 20
      FieldName = 'Function_attended'
      Visible = False
    end
    object qrycustSource: TStringField
      DisplayWidth = 10
      FieldName = 'Source'
      Visible = False
      Size = 10
    end
    object qrycustDiscount: TBCDField
      DisplayWidth = 11
      FieldName = 'Discount'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qrycustAbn: TStringField
      DisplayWidth = 14
      FieldName = 'Abn'
      Visible = False
      Size = 14
    end
    object qrycustAddaddress2: TStringField
      DisplayWidth = 30
      FieldName = 'Addaddress2'
      Visible = False
      Size = 30
    end
    object qrycustText: TMemoField
      DisplayWidth = 10
      FieldName = 'Text'
      Visible = False
      BlobType = ftMemo
    end
    object qrycustParceladdress: TMemoField
      DisplayWidth = 10
      FieldName = 'Parceladdress'
      Visible = False
      BlobType = ftMemo
    end
    object qrycustElist: TStringField
      DisplayWidth = 1
      FieldName = 'Elist'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qrycustTimes: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Times'
      Visible = False
    end
    object qrycustCountry: TStringField
      DisplayWidth = 45
      FieldName = 'Country'
      Visible = False
      Size = 45
    end
    object qrycustCustTitle: TStringField
      DisplayWidth = 45
      FieldName = 'CustTitle'
      Visible = False
      Size = 45
    end
    object qrycustAnnouncements: TStringField
      DisplayWidth = 1
      FieldName = 'Announcements'
      Visible = False
      Size = 1
    end
    object qrycustPaperMail: TStringField
      DisplayWidth = 1
      FieldName = 'PaperMail'
      Visible = False
      Size = 1
    end
  end
  object dscust: TDataSource
    DataSet = qrycust
    Left = 880
    Top = 152
  end
  object qrycustchk: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cust')
    Left = 784
    Top = 240
    object qrycustchkCustcode: TStringField
      FieldName = 'Custcode'
      Size = 6
    end
    object qrycustchkSaleno: TStringField
      FieldName = 'Saleno'
      Size = 4
    end
    object qrycustchkAccountcode: TStringField
      FieldName = 'Account code'
      Size = 6
    end
    object qrycustchkFirstname: TStringField
      FieldName = 'Firstname'
      Size = 40
    end
    object qrycustchkSurname: TStringField
      FieldName = 'Surname'
      Size = 40
    end
    object qrycustchkCompany: TStringField
      FieldName = 'Company'
      Size = 60
    end
    object qrycustchkAddaddress1: TStringField
      FieldName = 'Addaddress1'
      Size = 40
    end
    object qrycustchkAddadress2: TStringField
      FieldName = 'Addadress2'
      Size = 40
    end
    object qrycustchkStreet: TStringField
      FieldName = 'Street'
      Size = 40
    end
    object qrycustchkSuburb: TStringField
      FieldName = 'Suburb'
      Size = 40
    end
    object qrycustchkStatepostcode: TStringField
      FieldName = 'Statepostcode'
      Size = 40
    end
    object qrycustchkBusiness: TStringField
      FieldName = 'Business'
    end
    object qrycustchkHome: TStringField
      FieldName = 'Home'
    end
    object qrycustchkFax: TStringField
      FieldName = 'Fax'
    end
    object qrycustchkMobile: TStringField
      FieldName = 'Mobile'
    end
    object qrycustchkEmail: TStringField
      FieldName = 'Email'
      Size = 60
    end
    object qrycustchkTerms: TStringField
      FieldName = 'Terms'
      FixedChar = True
      Size = 1
    end
    object qrycustchkDetails: TStringField
      FieldName = 'Details'
      Size = 70
    end
    object qrycustchkGroup: TStringField
      FieldName = 'Group'
      FixedChar = True
      Size = 2
    end
    object qrycustchkSalesTaxNo: TStringField
      FieldName = 'Sales Tax No'
      Size = 10
    end
    object qrycustchkCustText: TMemoField
      FieldName = 'Cust Text'
      BlobType = ftMemo
    end
    object qrycustchkOWING: TBCDField
      FieldName = 'OWING'
      Precision = 10
      Size = 2
    end
    object qrycustchkSales: TStringField
      FieldName = 'Sales'
      FixedChar = True
      Size = 2
    end
    object qrycustchkJobno: TStringField
      FieldName = 'Jobno'
      Size = 6
    end
    object qrycustchkQuoteterms: TMemoField
      FieldName = 'Quoteterms'
      BlobType = ftMemo
    end
    object qrycustchkPremium: TBCDField
      FieldName = 'Premium'
      Precision = 10
      Size = 2
    end
    object qrycustchkCreditcard: TStringField
      FieldName = 'Creditcard'
      Size = 80
    end
    object qrycustchkDate: TStringField
      FieldName = 'Date'
      Size = 8
    end
    object qrycustchkComments: TStringField
      FieldName = 'Comments'
      Size = 80
    end
    object qrycustchkZone: TStringField
      FieldName = 'Zone'
      FixedChar = True
      Size = 1
    end
    object qrycustchkStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object qrycustchkMaillist: TStringField
      FieldName = 'Maillist'
      FixedChar = True
      Size = 1
    end
    object qrycustchkFunctions: TStringField
      FieldName = 'Functions'
      FixedChar = True
      Size = 1
    end
    object qrycustchkFunction_attended: TStringField
      FieldName = 'Function_attended'
    end
    object qrycustchkSource: TStringField
      FieldName = 'Source'
      Size = 10
    end
    object qrycustchkDiscount: TBCDField
      FieldName = 'Discount'
      Precision = 10
      Size = 2
    end
    object qrycustchkAbn: TStringField
      FieldName = 'Abn'
      Size = 14
    end
    object qrycustchkAddaddress2: TStringField
      FieldName = 'Addaddress2'
      Size = 30
    end
    object qrycustchkText: TMemoField
      FieldName = 'Text'
      BlobType = ftMemo
    end
    object qrycustchkParceladdress: TMemoField
      FieldName = 'Parceladdress'
      BlobType = ftMemo
    end
    object qrycustchkElist: TStringField
      FieldName = 'Elist'
      FixedChar = True
      Size = 1
    end
    object qrycustchkTimes: TDateTimeField
      FieldName = 'Times'
    end
    object qrycustchkCountry: TStringField
      FieldName = 'Country'
      Size = 45
    end
    object qrycustchkCustTitle: TStringField
      FieldName = 'CustTitle'
      Size = 45
    end
    object qrycustchkAnnouncements: TStringField
      FieldName = 'Announcements'
      Size = 1
    end
    object qrycustchkPaperMail: TStringField
      FieldName = 'PaperMail'
      Size = 1
    end
  end
  object dscustchk: TDataSource
    DataSet = qrycustchk
    Left = 792
    Top = 184
  end
  object qrycustchkDataSource: TDataSource
    DataSet = qrycust
    Left = 888
    Top = 104
  end
  object dstransactionsPayments: TDataSource
    DataSet = qrytransactionsPayments
    Left = 856
    Top = 520
  end
  object qrytransactionsPayments: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select  s.transaction_id, s.code, s.supplier, s.quantity,if(s.re' +
        'turned="Y",s.quantity * s.sale_price,0) as retTotal, if(p.name<>' +
        '"",p.name,b.title) as name,s.sale_price,  s.quantity * s.sale_pr' +
        'ice as Total, s.location_shop,  s.location_store,  s.location_sh' +
        'ed  from transaction_stock s left join products p on s.supplier ' +
        '= p.supplier and s.code = p.code left join book b on s.supplier ' +
        '= "B2BAV" AND s.code = b.book_code left join transactions on s.t' +
        'ransaction_id = transactions.id where date(transactions.datecrea' +
        'ted) = current_date() and isdeleted = '#39'N'#39'  order by s.Transactio' +
        'n_id')
    Left = 880
    Top = 608
    object IntegerField1: TIntegerField
      FieldName = 'transaction_id'
    end
    object StringField4: TStringField
      FieldName = 'code'
      Size = 12
    end
    object StringField5: TStringField
      FieldName = 'supplier'
      Size = 12
    end
    object BCDField1: TBCDField
      FieldName = 'quantity'
      Precision = 10
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'name'
      ReadOnly = True
      Size = 150
    end
    object BCDField2: TBCDField
      FieldName = 'sale_price'
      Precision = 10
      Size = 2
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 20
      Size = 4
    end
    object IntegerField2: TIntegerField
      FieldName = 'location_shop'
    end
    object IntegerField3: TIntegerField
      FieldName = 'location_store'
    end
    object IntegerField4: TIntegerField
      FieldName = 'location_shed'
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'retTotal'
      ReadOnly = True
      Precision = 20
      Size = 4
    end
  end
  object qryLayby: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select t.*,c.firstname,c.surname,c.mobile,c.home from Transactio' +
        'ns t left join cust c on c.custcode = t.custcode where isLayby =' +
        ' '#39'Y'#39)
    Left = 520
    Top = 288
    object qryLaybyid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
    end
    object qryLaybycustcode: TStringField
      DisplayWidth = 6
      FieldName = 'custcode'
      Size = 6
    end
    object qryLaybyDateCreated: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DateCreated'
    end
    object qryLaybystaffcode: TStringField
      DisplayWidth = 6
      FieldName = 'staffcode'
      Size = 6
    end
    object qryLaybyIsLayby: TStringField
      DisplayWidth = 1
      FieldName = 'IsLayby'
      Size = 1
    end
    object qryLaybyfirstname: TStringField
      DisplayWidth = 40
      FieldName = 'firstname'
      Size = 40
    end
    object qryLaybysurname: TStringField
      DisplayWidth = 40
      FieldName = 'surname'
      Size = 40
    end
    object qryLaybymobile: TStringField
      DisplayWidth = 20
      FieldName = 'mobile'
    end
    object qryLaybyhome: TStringField
      DisplayWidth = 20
      FieldName = 'home'
    end
    object qryLaybyDiscount: TBCDField
      DisplayWidth = 11
      FieldName = 'Discount'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qryLaybyDiscountDollar: TBCDField
      DisplayWidth = 11
      FieldName = 'DiscountDollar'
      Visible = False
      Precision = 10
      Size = 2
    end
    object qryLaybyIsVoid: TStringField
      DisplayWidth = 1
      FieldName = 'IsVoid'
      Visible = False
      Size = 1
    end
    object qryLaybyIsOnHold: TStringField
      DisplayWidth = 1
      FieldName = 'IsOnHold'
      Visible = False
      Size = 1
    end
  end
  object dsLayby: TDataSource
    DataSet = qryLayby
    Left = 472
    Top = 296
  end
  object qrydailyunpaid: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    OnCalcFields = qrydailytillCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT *,(select (sum(if(discount>0, (sale_price*((100 - discoun' +
        't) / 100)), sale_price)*quantity)) as totalAmount  from transact' +
        'ion_stock where transaction_stock.Transaction_ID=t.id and transa' +
        'ction_stock.Returned <> "Y" and transaction_stock.IsDeleted <> "' +
        'Y") as Totaltransaction'#10' FROM booksystem.transactions t  where d' +
        'ate(t.datecreated) = '#39'2013-11-23'#39' and not exists (select * from ' +
        'payments where t.id = payments.transactionid) and exists (select' +
        ' * from transaction_Stock where t.id = transaction_stock.transac' +
        'tion_id and transaction_stock.Returned <> "Y" and transaction_st' +
        'ock.IsDeleted <> "Y")')
    Left = 568
    Top = 344
    object qrydailyunpaidid: TAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
    end
    object qrydailyunpaidcustcode: TStringField
      DisplayWidth = 6
      FieldName = 'custcode'
      Size = 6
    end
    object qrydailyunpaidDateCreated: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DateCreated'
    end
    object qrydailyunpaidts: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ts'
    end
    object qrydailyunpaidstaffcode: TStringField
      DisplayWidth = 6
      FieldName = 'staffcode'
      Size = 6
    end
    object qrydailyunpaidDiscount: TBCDField
      DisplayWidth = 11
      FieldName = 'Discount'
      Precision = 10
      Size = 2
    end
    object qrydailyunpaidDiscountDollar: TBCDField
      DisplayWidth = 11
      FieldName = 'DiscountDollar'
      Precision = 10
      Size = 2
    end
    object qrydailyunpaidIsVoid: TStringField
      DisplayWidth = 1
      FieldName = 'IsVoid'
      Size = 1
    end
    object qrydailyunpaidIsOnHold: TStringField
      DisplayWidth = 1
      FieldName = 'IsOnHold'
      Size = 1
    end
    object qrydailyunpaidIsLayBy: TStringField
      DisplayWidth = 1
      FieldName = 'IsLayBy'
      Size = 1
    end
    object qrydailyunpaidTotaltransaction: TFMTBCDField
      DisplayWidth = 58
      FieldName = 'Totaltransaction'
      ReadOnly = True
      Precision = 57
      Size = 10
    end
  end
  object dsdailyunpaid: TDataSource
    DataSet = qrydailyunpaid
    Left = 488
    Top = 248
  end
  object qrystafflook: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select *, concat_ws('#39' '#39', firstName, lastName) AS fullName from s' +
        'taff where active = '#39'Y'#39' order by id')
    Left = 672
    Top = 192
    object qrystafflookid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qrystafflookuserId: TStringField
      FieldName = 'userId'
      Size = 45
    end
    object qrystafflookpassword: TStringField
      FieldName = 'password'
      Size = 45
    end
    object qrystafflookaccessLevel: TIntegerField
      FieldName = 'accessLevel'
    end
    object qrystafflookfirstName: TStringField
      FieldName = 'firstName'
      Size = 45
    end
    object qrystafflooklastName: TStringField
      FieldName = 'lastName'
      Size = 45
    end
    object qrystafflookport: TStringField
      FieldName = 'port'
      Size = 10
    end
    object qrystafflooklastActive: TDateTimeField
      FieldName = 'lastActive'
    end
    object qrystafflooklastTransactionID: TIntegerField
      FieldName = 'lastTransactionID'
    end
    object qrystafflookNickname: TStringField
      FieldName = 'Nickname'
      Size = 4
    end
    object qrystafflookActive: TStringField
      FieldName = 'Active'
      Size = 1
    end
    object qrystafflookfullName: TStringField
      FieldName = 'fullName'
      ReadOnly = True
      Size = 91
    end
  end
  object dsstafflook: TDataSource
    DataSet = qrystafflook
    Left = 672
    Top = 144
  end
  object QryTasks: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'Select t.staffcode,t.id,t.did,t.notes,d.taskname,d.instructions,' +
        't.dateseton,t.datecompleted, (select staffcode from staffoff s2 ' +
        'where t.staffcode= s2.staffcode and t.staffcode <> "PHIL" and wo' +
        'rkdate = date(now()) group by s2.staffcode) as was from dailytas' +
        'k D'
      
        'Left Join TaskAssigned t on T.did = d.id where t.DateSeton = Dat' +
        'e(now()) and t.DateCompleted is null and (t.staffcode="PHIL"  or' +
        ' t.staffcode = "ANY" or exists (select staffcode from staffoff s' +
        'o where t.staffcode= so.staffcode and workdate = date(now()))) g' +
        'roup by d.id order by t.DateSetOn,d.ttime;')
    Left = 136
    Top = 432
    object QryTasksid: TIntegerField
      FieldName = 'id'
    end
    object QryTasksdid: TIntegerField
      FieldName = 'did'
    end
    object QryTaskstaskname: TStringField
      FieldName = 'taskname'
      Size = 45
    end
    object QryTasksinstructions: TMemoField
      FieldName = 'instructions'
      BlobType = ftMemo
    end
    object QryTasksdateseton: TDateField
      FieldName = 'dateseton'
    end
    object QryTasksdatecompleted: TDateTimeField
      FieldName = 'datecompleted'
    end
    object QryTaskswas: TStringField
      FieldName = 'was'
      ReadOnly = True
      Size = 45
    end
    object QryTasksnotes: TMemoField
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object QryTasksstaffcode: TStringField
      FieldName = 'staffcode'
      Size = 45
    end
  end
  object dsTasks: TDataSource
    DataSet = QryTasks
    Left = 144
    Top = 352
  end
  object dstaskcnt: TDataSource
    DataSet = qrytaskcnt
    Left = 72
    Top = 392
  end
  object qrytaskcnt: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsStaff
    Parameters = <
      item
        Name = 'userId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 24
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'select count(*) as tcount from ( Select t.did from dailytask d '
      
        'Left Join Taskassigned t on T.did = d.id where t.DateSeton <= Da' +
        'te(now()) and t.DateCompleted is null and (t.staffcode=:userId o' +
        'r t.staffcode = "ANY" or exists (select staffcode from staffoff ' +
        'so where t.staffcode= so.staffcode and workdate = date(now()))) ' +
        'group by t.did) as cntquery ')
    Left = 16
    Top = 368
    object qrytaskcnttcount: TLargeintField
      FieldName = 'tcount'
      ReadOnly = True
    end
  end
  object QryPortCheck: TADOQuery
    Connection = conLocalSQL
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select *, concat_ws('#39' '#39', firstName, lastName) AS fullName from s' +
        'taff where active = '#39'Y'#39' order by id')
    Left = 728
    Top = 664
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object StringField7: TStringField
      FieldName = 'userId'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object StringField8: TStringField
      FieldName = 'password'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object IntegerField5: TIntegerField
      FieldName = 'accessLevel'
      ProviderFlags = [pfInUpdate]
    end
    object StringField9: TStringField
      FieldName = 'firstName'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object StringField10: TStringField
      FieldName = 'lastName'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object StringField11: TStringField
      FieldName = 'fullName'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 91
    end
    object StringField12: TStringField
      FieldName = 'port'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'lastActive'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField6: TIntegerField
      FieldName = 'lastTransactionID'
      ProviderFlags = [pfInUpdate]
    end
    object StringField13: TStringField
      FieldName = 'Nickname'
      Size = 4
    end
  end
  object dsPortCheck: TDataSource
    DataSet = QryPortCheck
    Left = 736
    Top = 616
  end
  object QrytaskPrint: TADOQuery
    Active = True
    Connection = conLocalSQL
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'Select t.staffcode,t.id,t.did,t.notes,d.taskname,d.instructions,' +
        't.dateseton,t.datecompleted, (select staffcode from staffoff s2 ' +
        'where t.staffcode= s2.staffcode and t.staffcode <> "PHIL" and wo' +
        'rkdate = date(now()) group by s2.staffcode) as was from dailytas' +
        'k D'
      
        'Left Join TaskAssigned t on T.did = d.id where t.DateSeton = Dat' +
        'e(now()) and t.DateCompleted is null and (t.staffcode="PHIL"  or' +
        ' t.staffcode = "ANY" or exists (select staffcode from staffoff s' +
        'o where t.staffcode= so.staffcode and workdate = date(now()))) g' +
        'roup by d.id order by t.DateSetOn,d.ttime;')
    Left = 136
    Top = 432
    object QrytaskPrintstaffcode: TStringField
      FieldName = 'staffcode'
      Size = 45
    end
    object QrytaskPrintid: TIntegerField
      FieldName = 'id'
    end
    object QrytaskPrintdid: TIntegerField
      FieldName = 'did'
    end
    object QrytaskPrintnotes: TMemoField
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object QrytaskPrinttaskname: TStringField
      FieldName = 'taskname'
      Size = 45
    end
    object QrytaskPrintinstructions: TMemoField
      FieldName = 'instructions'
      BlobType = ftMemo
    end
    object QrytaskPrintdateseton: TDateField
      FieldName = 'dateseton'
    end
    object QrytaskPrintdatecompleted: TDateTimeField
      FieldName = 'datecompleted'
    end
  end
  object dstaskprint: TDataSource
    DataSet = QrytaskPrint
    Left = 144
    Top = 352
  end
  object dsImagesrc: TDataSource
    DataSet = qryImage
    Left = 376
    Top = 368
  end
  object qryImage: TADOQuery
    Active = True
    Connection = conLocalSQL
    CursorType = ctStatic
    DataSource = dsTransactionStock
    Parameters = <
      item
        Name = 'Supplier'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 240
        Precision = 255
        Size = 10
        Value = 'BRIT'
      end
      item
        Name = 'Code'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 240
        Precision = 255
        Size = 12
        Value = '4027895z'
      end>
    SQL.Strings = (
      
        'select if(Supplier='#39'B2BAV'#39',(select jpg from images i where ts.co' +
        'de=i.book_code),(select jpg from prodimages p where ts.code=p.co' +
        'de and ts.supplier=p.supplier)) as image from transaction_stock ' +
        'ts where ts.supplier = :supplier and ts.code = :code  limit 1')
    Left = 376
    Top = 424
    object qryImageimage: TBlobField
      FieldName = 'image'
      ReadOnly = True
    end
  end
end
