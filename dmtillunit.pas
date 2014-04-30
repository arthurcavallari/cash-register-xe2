unit dmtillunit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Bde.DBTables, Wwquery, Wwdatsrc, Data.Win.ADODB, Datasnap.Provider, System.StrUtils;

type
  Ttilldm = class(TForm)
    dsStock: TDataSource;
    qryStock: TADOQuery;
    qryStockLocation: TStringField;
    qryStockQuantity: TIntegerField;
    qryStockCost_Price: TFloatField;
    qryStockSale_Price: TFloatField;
    qryStockDate_Ordered: TDateTimeField;
    qryStockDate_Received: TDateTimeField;
    qryStockDate_Sold: TDateTimeField;
    qryStockOrder_Number: TStringField;
    qryStockInvoice_Number: TStringField;
    qryStockCode: TStringField;
    qryStockSupplier: TStringField;
    qryStockid: TIntegerField;
    qryProductsLookup: TADOQuery;
    qryProductsLookupName: TStringField;
    qryProductsLookupSupplier: TStringField;
    qryProductsLookupRange: TStringField;
    qryProductsLookupCode: TStringField;
    qryProductsLookupRetail_Price: TFloatField;
    qryProductsLookupCost_Price: TFloatField;
    qryProductsLookupBarcode: TStringField;
    qryProductsLookupid: TIntegerField;
    qryProductsLookupWholesale_Price: TFloatField;
    qryProductsLookupShort_Description: TStringField;
    qryProductsLookupLong_Description: TMemoField;
    dsProductsLookup: TDataSource;
    dsTransactions: TDataSource;
    qryTransactions: TADOQuery;
    qryTransactionStock: TADOQuery;
    conLocalSQL: TADOConnection;
    qryProducts: TADOQuery;
    qryProductsid: TAutoIncField;
    qryProductsName: TStringField;
    qryProductsCode: TStringField;
    qryProductsRetail_Price: TBCDField;
    qryProductsCost_Price: TBCDField;
    qryProductsWholesale_Price: TBCDField;
    qryProductsShort_Description: TStringField;
    qryProductsLong_Description: TMemoField;
    qryProductsSupplier: TStringField;
    qryProductsBarcode: TStringField;
    qryProductsRange: TStringField;
    qryTransactionStockTransactionStockId: TAutoIncField;
    qryTransactionStockCode: TStringField;
    qryTransactionStockSale_Price: TBCDField;
    qryTransactionStockTransaction_ID: TIntegerField;
    qryTransactionStockName: TStringField;
    qryTransactionStockCost_Price: TBCDField;
    qryTransactionStockRetail_Price: TBCDField;
    dsTransactionStock: TDataSource;
    dsProducts: TDataSource;
    qryTransactionsid: TAutoIncField;
    qryTransactionscustcode: TStringField;
    qryTransactionsstaffcode: TStringField;
    qryTransactionStockDiscount: TBCDField;
    dsPayments: TDataSource;
    qryPayments: TADOQuery;
    qryPaymentspaymentID: TAutoIncField;
    qryPaymentstransactionID: TIntegerField;
    qryPaymentsPaymentType: TStringField;
    qryPaymentsDetails: TStringField;
    qryPaymentsamount: TBCDField;    dsTransactionStockCalc: TDataSource;
    qryTransactionStockCalc: TADOQuery;
    qryTransactionStockItemInfo: TStringField;

    qryProductsSearch: TADOQuery;
    dsProductsSearch: TDataSource;
    qryProductsSearchid: TAutoIncField;
    qryProductsSearchName: TStringField;
    qryProductsSearchCode: TStringField;
    qryProductsSearchRetail_Price: TBCDField;
    qryProductsSearchCost_Price: TBCDField;
    qryProductsSearchWholesale_Price: TBCDField;
    qryProductsSearchShort_Description: TStringField;
    qryProductsSearchLong_Description: TMemoField;
    qryProductsSearchSupplier: TStringField;
    qryProductsSearchBarcode: TStringField;
    qryProductsSearchRange: TStringField;   
    dsPaymentsCalc: TDataSource;
    qryPaymentsCalc: TADOQuery;
    qryTransactionStockPrice: TBCDField;
    qryTransactionStockSubtotal: TBCDField;
    qryTransactionStockCalctotalAmount: TFMTBCDField;
    qryTransactionStockCalctax: TFMTBCDField;
    qryTransactionStockCalcsubTotal: TFMTBCDField;
    dsRefunds: TDataSource;
    qryRefunds: TADOQuery;
    qryRefundsrefundID: TAutoIncField;
    qryRefundstransactionID: TIntegerField;
    qryRefundsrefundType: TStringField;
    qryRefundsamount: TBCDField;
    qryRefundsDetails: TStringField;
    dsTotalDue: TDataSource;
    qryTotalDue: TADOQuery;
    qryPaymentsCalctotal: TFMTBCDField;
    qryTotalDueTotalDue: TFMTBCDField;
    qryLastUndefinedCode: TADOQuery;
    dsLastUndefinedCode: TDataSource;
    qryLastUndefinedCodecode: TStringField;
    qryTransactionsProductLookup: TADOQuery;
    dsTransactionsProductLookup: TDataSource;
    qryTransactionsProductLookupid: TAutoIncField;
    qryTransactionsProductLookupName: TStringField;
    qryTransactionsProductLookupCode: TStringField;
    qryTransactionsProductLookupRetail_Price: TBCDField;
    qryTransactionsProductLookupCost_Price: TBCDField;
    qryTransactionsProductLookupWholesale_Price: TBCDField;
    qryTransactionsProductLookupShort_Description: TStringField;
    qryTransactionsProductLookupLong_Description: TMemoField;
    qryTransactionsProductLookupSupplier: TStringField;
    qryTransactionsProductLookupBarcode: TStringField;
    qryTransactionsProductLookupRange: TStringField;
    qryTransactionStockReturned: TStringField;
    qryTransactionStockReturnType: TStringField;
    qryTransactionStockReturnReason: TStringField;
    dsReturnReasons: TDataSource;
    qryReturnReasons: TADOQuery;
    qryReturnReasonsreturnType: TAutoIncField;
    qryReturnReasonsreturnDescription: TStringField;
    qryReturnReasonsrequireExtraInfo: TStringField;
    qryTransactionStockTransactionDiscount: TBCDField;
    qryTransactionsDiscount: TBCDField;
    qryTransactionStockCalcdiscountedAmount: TFMTBCDField;
    qryTransactionStockCalctotalAmountNoTransactionDiscount: TFMTBCDField;
    qryTransactionsDiscountDollar: TBCDField;
    qryPaymentsRefunded: TBCDField;
    qryGiftCards: TADOQuery;
    dsGiftCards: TDataSource;
    qryGiftCardsid: TAutoIncField;
    qryGiftCardsCardNumber: TStringField;
    qryGiftCardsCardPin: TStringField;
    qryGiftCardsBalance: TBCDField;
    qryGiftCardsIssueDate: TDateTimeField;
    qryGiftCardsExpiryDate: TDateTimeField;
    qryGiftCardsLookup: TADOQuery;
    dsGiftCardsLookup: TDataSource;
    qryGiftCardsLookupid: TAutoIncField;
    qryGiftCardsLookupCardNumber: TStringField;
    qryGiftCardsLookupCardPin: TStringField;
    qryGiftCardsLookupBalance: TBCDField;
    qryGiftCardsLookupIssueDate: TDateTimeField;
    qryGiftCardsLookupExpiryDate: TDateTimeField;
    dsStaff: TDataSource;
    qryStaff: TADOQuery;
    qryStaffid: TAutoIncField;
    qryStaffuserId: TStringField;
    qryStaffpassword: TStringField;
    qryStaffaccessLevel: TIntegerField;
    qryStafffirstName: TStringField;
    qryStafflastName: TStringField;
    qryTransactionsisVoid: TStringField;
    qryStafffullName: TStringField;

    dsTransactionsOnHold: TDataSource;
    qryTransactionsOnHold: TADOQuery;
    qryTransactionsOnHoldid: TAutoIncField;
    qryTransactionsOnHoldcustcode: TStringField;
    qryTransactionsOnHoldDate: TDateTimeField;
    qryTransactionsOnHoldstaffcode: TStringField;
    qryTransactionsOnHoldDiscount: TBCDField;
    qryTransactionsOnHoldDiscountDollar: TBCDField;
    qryTransactionsOnHoldIsVoid: TStringField;
    qryTransactionsOnHoldIsOnHold: TStringField;
    qryTransactionsIsOnHold: TStringField;
    qryTransactionsOnHoldTotalDue: TFMTBCDField;
    dsTotalDueOnHold: TDataSource;
    qryTotalDueOnHold: TADOQuery;
    qryTotalDueOnHoldTotalDue: TFMTBCDField;
    qryTotalDueOnHoldTransaction_ID: TIntegerField;
    dsTransactionsOnHoldCount: TDataSource;
    qryTransactionsOnHoldCount: TADOQuery;
    qryTransactionsOnHoldCountamountOnHold: TLargeintField;
    dsTransactionsNoStock: TDataSource;
    qryTransactionsNoStock: TADOQuery;
    qryTransactionsNoStockid: TAutoIncField;
    qryTransactionsNoStockcustcode: TStringField;
    qryTransactionsNoStockDate: TDateTimeField;
    qryTransactionsNoStockts: TDateTimeField;
    qryTransactionsNoStockstaffcode: TStringField;
    qryTransactionsNoStockDiscount: TBCDField;
    qryTransactionsNoStockDiscountDollar: TBCDField;
    qryTransactionsNoStockIsVoid: TStringField;
    qryTransactionsNoStockIsOnHold: TStringField;
    qryPaymentsDateCreated: TDateTimeField;
    qryRefundsDateCreated: TDateTimeField;
    qryTransactionStockQuantity: TBCDField;
    qryStaffport: TStringField;
    qryStafflastActive: TDateTimeField;
    qryStafflastTransactionID: TIntegerField;
    qryTransactionsOnHoldSummary: TStringField;
    dsDistributors: TDataSource;
    qryDistributors: TADOQuery;
    qryDistributorsNAME: TStringField;
    qryDistributorsREFNUM: TStringField;
    qryDistributorsPRINTAS: TStringField;
    qryDistributorsADDR1: TStringField;
    qryDistributorsADDR2: TStringField;
    qryDistributorsADDR3: TStringField;
    qryDistributorsADDR4: TStringField;
    qryDistributorsADDR5: TStringField;
    qryDistributorsCONT1: TStringField;
    qryDistributorsCONT2: TStringField;
    qryDistributorsPHONE1: TStringField;
    qryDistributorsPHONE2: TStringField;
    qryDistributorsFAXNUM: TStringField;
    qryDistributorsNOTE: TStringField;
    qryDistributorsTAXID: TStringField;
    qryDistributorsLIMIT: TStringField;
    qryDistributorsTERMS: TStringField;
    qryDistributorsNOTEPAD: TStringField;
    qryDistributorsCode: TStringField;
    qryDistributorsid: TAutoIncField;
    qryDistributorsTimes: TDateTimeField;
    qryDistributorsWebsite: TStringField;
    qryDistributorsImagelink: TStringField;
    qryDistributorsQR_Website: TStringField;
    dsLastTransactions: TDataSource;
    qryLastTransactions: TADOQuery;
    qryLastTransactionsid: TAutoIncField;
    qryLastTransactionscustcode: TStringField;
    qryLastTransactionsDate: TDateTimeField;
    qryLastTransactionsts: TDateTimeField;
    qryLastTransactionsstaffcode: TStringField;
    qryLastTransactionsDiscount: TBCDField;
    qryLastTransactionsDiscountDollar: TBCDField;
    qryLastTransactionsIsVoid: TStringField;
    qryLastTransactionsIsOnHold: TStringField;
    qryLastTransactionsTotal: TFMTBCDField;
    qryTransactionStockSupplier: TStringField;
    qryTransactionStockLocation_SHOP: TIntegerField;
    qryTransactionStockLocation_STORE: TIntegerField;
    qryTransactionStockLocation_SHED: TIntegerField;
    qryPaymentsCancelled: TStringField;
    qryTransactionStockIsStockChecked: TStringField;
    qryProductsMustCheckForStock: TStringField;
    qryCheckedAllStock: TADOQuery;
    qryCheckedAllStockTransactionStockId: TAutoIncField;
    qryCheckedAllStockIsStockChecked: TStringField;
    qryTransactionStockIsDeleted: TStringField;
    qryTransactionStockMustCheckForStock: TStringField;
    qryGiftCardsInitialBalance: TBCDField;
    qryGiftCardsLookupInitialBalance: TBCDField;
    dsTransactionStockCalcStore: TDataSource;
    qryTransactionStockCalcStore: TADOQuery;
    dsStockLookup: TDataSource;
    qryStockLookup: TADOQuery;
    qryStockLookupid: TAutoIncField;
    qryStockLookupCode: TStringField;
    qryStockLookupSupplier: TStringField;
    qryStockLookupCost_Price: TBCDField;
    qryStockLookupSale_Price: TBCDField;
    qryStockLookupQuantity: TIntegerField;
    qryStockLookupDate_Ordered: TDateTimeField;
    qryStockLookupDate_Received: TDateTimeField;
    qryStockLookupDate_Sold: TDateTimeField;
    qryStockLookupOrder_Number: TStringField;
    qryStockLookupInvoice_Number: TStringField;
    qryStockLookupLocation: TStringField;
    qryStockLookupTransaction_ID: TIntegerField;
    qryStockLookupStock_Type: TStringField;
    qryStockLookupStock_Status: TStringField;
    qryTransactionStockCalcStoreid: TAutoIncField;
    qryTransactionStockCalcStoreCode: TStringField;
    qryTransactionStockCalcStoreSupplier: TStringField;
    qryTransactionStockCalcStoreCost_Price: TBCDField;
    qryTransactionStockCalcStoreSale_Price: TBCDField;
    qryTransactionStockCalcStoreQuantity: TIntegerField;
    qryTransactionStockCalcStoreDate_Ordered: TDateTimeField;
    qryTransactionStockCalcStoreDate_Received: TDateTimeField;
    qryTransactionStockCalcStoreDate_Sold: TDateTimeField;
    qryTransactionStockCalcStoreOrder_Number: TStringField;
    qryTransactionStockCalcStoreInvoice_Number: TStringField;
    qryTransactionStockCalcStoreLocation: TStringField;
    qryTransactionStockCalcStoreTransaction_ID: TIntegerField;
    qryTransactionStockCalcStoreStock_Type: TStringField;
    qryTransactionStockCalcStoreStock_Status: TStringField;
    dsTransactionStockDisplay: TDataSource;
    qryTransactionStockDisplay: TADOQuery;
    qryTransactionStockDisplayid: TAutoIncField;
    qryTransactionStockDisplayCode: TStringField;
    qryTransactionStockDisplaySupplier: TStringField;
    qryTransactionStockDisplayCost_Price: TBCDField;
    qryTransactionStockDisplaySale_Price: TBCDField;
    qryTransactionStockDisplayQuantity: TIntegerField;
    qryTransactionStockDisplayDate_Ordered: TDateTimeField;
    qryTransactionStockDisplayDate_Received: TDateTimeField;
    qryTransactionStockDisplayDate_Sold: TDateTimeField;
    qryTransactionStockDisplayOrder_Number: TStringField;
    qryTransactionStockDisplayInvoice_Number: TStringField;
    qryTransactionStockDisplayLocation: TStringField;
    qryTransactionStockDisplayTransaction_ID: TIntegerField;
    qryTransactionStockDisplayStock_Type: TStringField;
    qryTransactionStockDisplayStock_Status: TStringField;
    qryTransactionStockIsGiftCard: TStringField;
    dsTransactionStockDisplayEx: TDataSource;
    qryTransactionStockDisplayEx: TADOQuery;
    qryTransactionStockDisplayExid: TAutoIncField;
    qryTransactionStockDisplayExCode: TStringField;
    qryTransactionStockDisplayExSupplier: TStringField;
    qryTransactionStockDisplayExCost_Price: TBCDField;
    qryTransactionStockDisplayExSale_Price: TBCDField;
    qryTransactionStockDisplayExQuantity: TIntegerField;
    qryTransactionStockDisplayExDate_Ordered: TDateTimeField;
    qryTransactionStockDisplayExDate_Received: TDateTimeField;
    qryTransactionStockDisplayExDate_Sold: TDateTimeField;
    qryTransactionStockDisplayExOrder_Number: TStringField;
    qryTransactionStockDisplayExInvoice_Number: TStringField;
    qryTransactionStockDisplayExLocation: TStringField;
    qryTransactionStockDisplayExTransaction_ID: TIntegerField;
    qryTransactionStockDisplayExStock_Type: TStringField;
    qryTransactionStockDisplayExStock_Status: TStringField;
    qryStockReplenish: TADOQuery;
    dsStockReplenish: TDataSource;
    qryStockReplenishid: TAutoIncField;
    qryStockReplenishSupplier: TStringField;
    qryStockReplenishCode: TStringField;
    qrystockrepadd: TADOQuery;
    dsstockrepadd: TDataSource;
    qryStockReplenishQuantity_Required: TIntegerField;
    qryStockReplenishCurrent_Quantity: TIntegerField;
    qryTransactionStockDisplaytotalqty: TFMTBCDField;
    qryTransactionStockDisplayExtotalqty: TFMTBCDField;
    qryStockLookuptotalqty: TFMTBCDField;
    qryStockReplenishLocation: TStringField;
    qryStockReplenishRequest_type: TStringField;
    qryStockReplenishTransaction_ID: TIntegerField;
    qryStaffNickname: TStringField;
    qryTransactionStockBox: TStringField;
    qryProductsBox: TStringField;
    qryTransactionPrint: TADOQuery;
    dsTransactionPrint: TDataSource;
    qryTransactionPrintTransactionStockId: TAutoIncField;
    qryTransactionPrintCode: TStringField;
    qryTransactionPrintSale_Price: TBCDField;
    qryTransactionPrintQuantity: TBCDField;
    qryTransactionPrintTransaction_ID: TIntegerField;
    qryTransactionPrintDiscount: TBCDField;
    qryTransactionPrintReturned: TStringField;
    qryTransactionPrintReturnType: TStringField;
    qryTransactionPrintReturnReason: TStringField;
    qryTransactionPrintTransactionDiscount: TBCDField;
    qryTransactionPrintSupplier: TStringField;
    qryTransactionPrintLocation_SHOP: TIntegerField;
    qryTransactionPrintLocation_STORE: TIntegerField;
    qryTransactionPrintLocation_SHED: TIntegerField;
    qryTransactionPrintIsStockChecked: TStringField;
    qryTransactionPrintIsDeleted: TStringField;
    qryTransactionPrintMustCheckForStock: TStringField;
    qryTransactionPrintIsGiftCard: TStringField;
    qryTransactionPrintBox: TStringField;
    qryTransactionPrintItemInfo: TStringField;
    qryTransactionPrintPrice: TCurrencyField;
    qryTransactionPrintSubtotal: TCurrencyField;
    qryTransactionPrintname: TStringField;
    qryProductsBarcode2: TStringField;
    dsTillCatDrill: TDataSource;
    qryTillCatdrill: TADOQuery;
    qryTillCatdrillCATEGORY: TStringField;
    qryTillCatdrillNAME: TStringField;
    qryTillCatdrillIsMaster: TSmallintField;
    qryTillCatdrillMastercode: TStringField;
    qryProdCat: TADOQuery;
    dsProdCat: TDataSource;
    qryProdCatCode: TStringField;
    qryProdCatSupplier: TStringField;
    qryProdCatCategoryCode: TStringField;
    qryTillCatdrillIsTill: TStringField;
    qryTillCatdrillIsMisc: TStringField;
    qryProductsMisc: TStringField;
    qryProductsLookupMustCheckForStock: TStringField;
    qryProductsLookupMisc: TStringField;
    qryProductsLookupBox: TStringField;
    dsQuery: TDataSource;
    qryQuery: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    qryProductsSearchRefillPrice: TBCDField;
    qryProductsSearchMisc: TStringField;
    qryProductsSearchDisplayname1: TStringField;
    qryProductsSearchDisplayname2: TStringField;
    qryProductsSearchDisplayname3: TStringField;
    qryProductsLookupRefillPrice: TBCDField;
    qryProductsLookupDisplayname1: TStringField;
    qryProductsLookupDisplayname2: TStringField;
    qryProductsLookupDisplayname3: TStringField;
    qryTransactionsDateCreated: TDateTimeField;
    qrytransactiondaily: TADOQuery;
    dstransactiondaily: TDataSource;
    qrytotalsales: TADOQuery;
    dstotalsales: TDataSource;
    qrybookmusic: TADOQuery;
    dsbookmusic: TDataSource;
    qrystockcheck: TADOQuery;
    dsstockcheck: TDataSource;
    qrystockcheckshop: TFMTBCDField;
    qrystockcheckstore: TFMTBCDField;
    qrystockcheckshed: TFMTBCDField;
    qrytotalsalesTotalsales: TFMTBCDField;
    qrytotalsalestotalbooksAv: TFMTBCDField;
    qrytotalsalestotalb2b: TFMTBCDField;
    qrytotalsalestotalother: TFMTBCDField;
    qrytransactiondailytransaction_id: TIntegerField;
    qrytransactiondailycode: TStringField;
    qrytransactiondailysupplier: TStringField;
    qrytransactiondailyquantity: TBCDField;
    qrytransactiondailyname: TStringField;
    qrytransactiondailysale_price: TBCDField;
    qrytransactiondailyTotal: TFMTBCDField;
    qrytransactiondailylocation_shop: TIntegerField;
    qrytransactiondailylocation_store: TIntegerField;
    qrytransactiondailylocation_shed: TIntegerField;
    dsMisc: TDataSource;
    QryMisc: TADOQuery;
    QryMiscName: TStringField;
    QryMiscCode: TStringField;
    QryMiscSupplier: TStringField;
    dsdailytill: TDataSource;
    qrydailytill: TADOQuery;
    dsdailytilltotals: TDataSource;
    qrydailytilltotals: TADOQuery;
    qrydailytilltotalscashtotal: TFMTBCDField;
    qrydailytilltotalschangetotal: TFMTBCDField;
    qrydailytilltotalstotalcash: TFMTBCDField;
    qrydailytilltotalsefttotal: TFMTBCDField;
    qrydailytilltotalscreditcardtotal: TFMTBCDField;
    qrydailytilltotalsmoneyordertotal: TFMTBCDField;
    qrydailytilltotalsgiftcardtotal: TFMTBCDField;
    qrydailytilltotalsdiscounttotal: TFMTBCDField;
    qrydailytilltotalscredittotal: TFMTBCDField;
    qrydailytilltotalstotalrev: TFMTBCDField;
    qrycust: TADOQuery;
    dscust: TDataSource;
    qrycustAuto: TAutoIncField;
    qrycustCustcode: TStringField;
    qrycustSaleno: TStringField;
    qrycustAccountcode: TStringField;
    qrycustFirstname: TStringField;
    qrycustSurname: TStringField;
    qrycustCompany: TStringField;
    qrycustAddaddress1: TStringField;
    qrycustAddadress2: TStringField;
    qrycustStreet: TStringField;
    qrycustSuburb: TStringField;
    qrycustStatepostcode: TStringField;
    qrycustBusiness: TStringField;
    qrycustHome: TStringField;
    qrycustFax: TStringField;
    qrycustMobile: TStringField;
    qrycustEmail: TStringField;
    qrycustTerms: TStringField;
    qrycustDetails: TStringField;
    qrycustGroup: TStringField;
    qrycustSalesTaxNo: TStringField;
    qrycustCustText: TMemoField;
    qrycustOWING: TBCDField;
    qrycustSales: TStringField;
    qrycustJobno: TStringField;
    qrycustQuoteterms: TMemoField;
    qrycustPremium: TBCDField;
    qrycustCreditcard: TStringField;
    qrycustDate: TStringField;
    qrycustComments: TStringField;
    qrycustZone: TStringField;
    qrycustStatus: TStringField;
    qrycustMaillist: TStringField;
    qrycustFunctions: TStringField;
    qrycustFunction_attended: TStringField;
    qrycustSource: TStringField;
    qrycustDiscount: TBCDField;
    qrycustAbn: TStringField;
    qrycustAddaddress2: TStringField;
    qrycustText: TMemoField;
    qrycustParceladdress: TMemoField;
    qrycustElist: TStringField;
    qrycustTimes: TDateTimeField;
    qrycustCountry: TStringField;
    qrycustCustTitle: TStringField;
    qrycustAnnouncements: TStringField;
    qrycustPaperMail: TStringField;
    qrycustchk: TADOQuery;
    dscustchk: TDataSource;
    qrycustchkDataSource: TDataSource;
    qrycustchkCustcode: TStringField;
    qrycustchkSaleno: TStringField;
    qrycustchkAccountcode: TStringField;
    qrycustchkFirstname: TStringField;
    qrycustchkSurname: TStringField;
    qrycustchkCompany: TStringField;
    qrycustchkAddaddress1: TStringField;
    qrycustchkAddadress2: TStringField;
    qrycustchkStreet: TStringField;
    qrycustchkSuburb: TStringField;
    qrycustchkStatepostcode: TStringField;
    qrycustchkBusiness: TStringField;
    qrycustchkHome: TStringField;
    qrycustchkFax: TStringField;
    qrycustchkMobile: TStringField;
    qrycustchkEmail: TStringField;
    qrycustchkTerms: TStringField;
    qrycustchkDetails: TStringField;
    qrycustchkGroup: TStringField;
    qrycustchkSalesTaxNo: TStringField;
    qrycustchkCustText: TMemoField;
    qrycustchkOWING: TBCDField;
    qrycustchkSales: TStringField;
    qrycustchkJobno: TStringField;
    qrycustchkQuoteterms: TMemoField;
    qrycustchkPremium: TBCDField;
    qrycustchkCreditcard: TStringField;
    qrycustchkDate: TStringField;
    qrycustchkComments: TStringField;
    qrycustchkZone: TStringField;
    qrycustchkStatus: TStringField;
    qrycustchkMaillist: TStringField;
    qrycustchkFunctions: TStringField;
    qrycustchkFunction_attended: TStringField;
    qrycustchkSource: TStringField;
    qrycustchkDiscount: TBCDField;
    qrycustchkAbn: TStringField;
    qrycustchkAddaddress2: TStringField;
    qrycustchkText: TMemoField;
    qrycustchkParceladdress: TMemoField;
    qrycustchkElist: TStringField;
    qrycustchkTimes: TDateTimeField;
    qrycustchkCountry: TStringField;
    qrycustchkCustTitle: TStringField;
    qrycustchkAnnouncements: TStringField;
    qrycustchkPaperMail: TStringField;
    qryTransactionStockDateEntered: TDateTimeField;
    qryTransactionStockDateReturned: TDateTimeField;
    qrytransactiondailyretTotal: TFMTBCDField;
    qrytotalsalesretTotal: TFMTBCDField;
    qrydailytilltotalsrefcashtotal: TFMTBCDField;
    qryTransactionsIsLayby: TStringField;
    dstransactionsPayments: TDataSource;
    qrytransactionsPayments: TADOQuery;
    IntegerField1: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    BCDField1: TBCDField;
    StringField6: TStringField;
    BCDField2: TBCDField;
    FMTBCDField1: TFMTBCDField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FMTBCDField2: TFMTBCDField;
    qrydailytillid: TIntegerField;
    qrydailytillcustcode: TStringField;
    qrydailytillts: TDateTimeField;
    qrydailytillstaffcode: TStringField;
    qrydailytillDiscount: TBCDField;
    qrydailytillDiscountDollar: TBCDField;
    qrydailytillIsVoid: TStringField;
    qrydailytillIsOnHold: TStringField;
    qrydailytillIsLayby: TStringField;
    qrydailytillcashtotal: TFMTBCDField;
    qrydailytillchangetotal: TFMTBCDField;
    qrydailytilltotalcash: TFMTBCDField;
    qrydailytillefttotal: TFMTBCDField;
    qrydailytillcreditcardtotal: TFMTBCDField;
    qrydailytillmoneyordertotal: TFMTBCDField;
    qrydailytillgiftcardtotal: TFMTBCDField;
    qrydailytilldiscounttotal: TFMTBCDField;
    qrydailytillcredittotal: TFMTBCDField;
    qrydailytilltotalrev: TFMTBCDField;
    qrydailytillrefcashtotal: TFMTBCDField;
    qrydailytillDateCreated: TDateTimeField;
    qrydailytillDateC: TDateField;
    qrydailytilltotaltransaction: TBCDField;
    qryLayby: TADOQuery;
    dsLayby: TDataSource;
    qryLaybyid: TAutoIncField;
    qryLaybycustcode: TStringField;
    qryLaybyDateCreated: TDateTimeField;
    qryLaybystaffcode: TStringField;
    qryLaybyDiscount: TBCDField;
    qryLaybyDiscountDollar: TBCDField;
    qryLaybyIsVoid: TStringField;
    qryLaybyIsOnHold: TStringField;
    qryLaybyIsLayby: TStringField;
    qryLaybyfirstname: TStringField;
    qryLaybysurname: TStringField;
    qryLaybymobile: TStringField;
    qryLaybyhome: TStringField;
    qrydailytillowing: TFMTBCDField;
    qrydailyunpaid: TADOQuery;
    dsdailyunpaid: TDataSource;
    qrydailyunpaidid: TAutoIncField;
    qrydailyunpaidcustcode: TStringField;
    qrydailyunpaidDateCreated: TDateTimeField;
    qrydailyunpaidts: TDateTimeField;
    qrydailyunpaidstaffcode: TStringField;
    qrydailyunpaidDiscount: TBCDField;
    qrydailyunpaidDiscountDollar: TBCDField;
    qrydailyunpaidIsVoid: TStringField;
    qrydailyunpaidIsOnHold: TStringField;
    qrydailyunpaidIsLayBy: TStringField;
    qrydailyunpaidTotaltransaction: TFMTBCDField;
    qrydailytilltimes: TTimeField;
    qrystafflook: TADOQuery;
    dsstafflook: TDataSource;
    qrystafflookid: TAutoIncField;
    qrystafflookuserId: TStringField;
    qrystafflookpassword: TStringField;
    qrystafflookaccessLevel: TIntegerField;
    qrystafflookfirstName: TStringField;
    qrystafflooklastName: TStringField;
    qrystafflookport: TStringField;
    qrystafflooklastActive: TDateTimeField;
    qrystafflooklastTransactionID: TIntegerField;
    qrystafflookNickname: TStringField;
    qrystafflookActive: TStringField;
    qrystafflookfullName: TStringField;
    QryTasks: TADOQuery;
    dsTasks: TDataSource;
    dstaskcnt: TDataSource;
    qrytaskcnt: TADOQuery;
    qrytaskcnttcount: TLargeintField;
    QryTasksid: TIntegerField;
    QryTasksdid: TIntegerField;
    QryTaskstaskname: TStringField;
    QryTasksinstructions: TMemoField;
    QryTasksdateseton: TDateField;
    QryTasksdatecompleted: TDateTimeField;
    QryTaskswas: TStringField;
    QryTasksnotes: TMemoField;
    QryTasksstaffcode: TStringField;
    QryPortCheck: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField5: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField6: TIntegerField;
    StringField13: TStringField;
    dsPortCheck: TDataSource;
    QrytaskPrint: TADOQuery;
    dstaskprint: TDataSource;
    QrytaskPrintstaffcode: TStringField;
    QrytaskPrintid: TIntegerField;
    QrytaskPrintdid: TIntegerField;
    QrytaskPrintnotes: TMemoField;
    QrytaskPrinttaskname: TStringField;
    QrytaskPrintinstructions: TMemoField;
    QrytaskPrintdateseton: TDateField;
    QrytaskPrintdatecompleted: TDateTimeField;
    dsImagesrc: TDataSource;
    qryImage: TADOQuery;
    qryImageimage: TBlobField;
    procedure FormCreate(Sender: TObject);
    procedure qryTransactionStockBeforeDelete(DataSet: TDataSet);
    procedure qryTransactionStockBeforePost(DataSet: TDataSet);
    procedure qryTransactionStockAfterRefresh(DataSet: TDataSet);
    procedure qryTransactionStockAfterPost(DataSet: TDataSet);
    procedure qryTransactionStockCalcFields(DataSet: TDataSet);
    procedure qryPaymentsBeforePost(DataSet: TDataSet);
    procedure qryTransactionStockCalctotalAmountGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryTransactionStockCalcAfterOpen(DataSet: TDataSet);
    procedure qryPaymentsAfterPost(DataSet: TDataSet);
    procedure qryPaymentsAfterRefresh(DataSet: TDataSet);
    procedure qryPaymentsCalcTotalDueGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryTransactionStockBeforeEdit(DataSet: TDataSet);
    procedure qryPaymentsCalctotalGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CurrencyGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryGiftCardsLookupIssueDateGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryGiftCardsLookupExpiryDateGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryTransactionsOnHoldAfterOpen(DataSet: TDataSet);
    procedure qryTransactionsOnHoldCountAfterOpen(DataSet: TDataSet);
    procedure qryTransactionsOnHoldCountAfterScroll(DataSet: TDataSet);
    procedure qryPaymentsDetailsGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryTransactionStockItemInfoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure LocationGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryStockReplenishFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryTransactionPrintCalcFields(DataSet: TDataSet);
    procedure qrydailytillCalcFields(DataSet: TDataSet);






  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tilldm: Ttilldm;


implementation

uses frmMainTillUnit;

{$R *.dfm}






procedure Ttilldm.FormCreate(Sender: TObject);
begin
    //tilldm.qryTransactionStock.Properties['Unique Table'].Value := 'transaction_stock';

    
end;

procedure Ttilldm.CurrencyGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
    if sender.Value = null then
    begin
        Text := '$0.00';
    end
    else
    begin
        Text := FormatFloat('$###,###,##0.00', sender.Value);
    end;
end;

procedure Ttilldm.qrydailytillCalcFields(DataSet: TDataSet);
begin
if qrydailytilltotaltransaction.Value >0 then
begin
qrydailytillowing.Value := (qrydailytilltotaltransaction.Value-qrydailytilldiscounttotal.Value) - (qrydailytilltotalrev.Value);
end
else
qrydailytillowing.Value := 0;
end;

procedure Ttilldm.qryGiftCardsLookupExpiryDateGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
    if (sender.Value = Null) or (sender.Value = 0) then
        Text := 'No expiry date'
    else
        Text := FormatDateTime('dd/mm/yyyy', sender.Value);
end;

procedure Ttilldm.qryGiftCardsLookupIssueDateGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
    if (sender.Value = Null) or (sender.Value = 0) then
        Text := 'Not activated'
    else
        Text := FormatDateTime('dd/mm/yyyy', sender.Value);
end;



procedure Ttilldm.qryPaymentsAfterPost(DataSet: TDataSet);
begin
    tilldm.qryPaymentsCalc.Requery();
    tilldm.qryTotalDue.Requery();
end;

procedure Ttilldm.qryPaymentsAfterRefresh(DataSet: TDataSet);
begin
    tilldm.qryPaymentsCalc.Requery();
    tilldm.qryTotalDue.Requery();
end;

procedure Ttilldm.qryPaymentsBeforePost(DataSet: TDataSet);
{var
    state : TDataSetState;
    i : Integer;
    updateSet, fieldNames, fieldValues, SQL : string;}
begin
   {
   state := DataSet.State;
    if state = dsEdit then
    begin
        for i := 0 to DataSet.Fields.Count - 1 do
        begin
            if (DataSet.Fields.Fields[i].FieldKind = fkData)
               and (pfInUpdate in DataSet.Fields.Fields[i].ProviderFlags) then
            begin
                if updateSet <> '' then
                    updateSet := updateSet + ', ';
                updateSet := updateSet + DataSet.Fields.Fields[i].FieldName + '=' + QuotedStr(DataSet.Fields.Fields[i].AsString);
            end;
        end;
        SQL := 'update payments SET ' + updateSet + ' WHERE paymentID='+ quotedstr(DataSet.FieldByName('paymentID').AsString)
               +' and transactionID='+ quotedstr(DataSet.FieldByName('transactionID').AsString)
               +' and paymentType='+ quotedstr(DataSet.FieldByName('paymentType').AsString);
    end
    else if state = dsInsert then
    begin
        for i := 0 to DataSet.Fields.Count - 1 do
        begin
            if (DataSet.Fields.Fields[i].FieldKind = fkData)
               and (pfInUpdate in DataSet.Fields.Fields[i].ProviderFlags) then
            begin
                if fieldNames <> '' then
                    fieldNames := fieldNames + ', ';
                fieldNames := fieldNames + DataSet.Fields.Fields[i].FieldName;

                if fieldValues <> '' then
                    fieldValues := fieldValues + ', ';
                fieldValues := fieldValues + QuotedStr(DataSet.Fields.Fields[i].AsString);
            end;
        end;
        SQL := 'INSERT INTO payments (' + fieldNames + ') VALUES (' + fieldValues + ')';
    end;

    conLocalSQL.Execute(SQL);
    DataSet.Cancel;
    TADOQuery(DataSet).ReQuery;            }


end;

procedure Ttilldm.qryPaymentsCalcTotalDueGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
    if sender.Value = null then
    begin
        Text := '$0.00';
    end
    else
    begin
        Text := FormatFloat('$###,###,##0.00', sender.Value);
    end;
end;

procedure Ttilldm.qryPaymentsCalctotalGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
    if sender.Value = null then
    begin
        Text := '$0.00';
        frmMain.btnRefundOrder.Enabled := false;
    end
    else
    begin
        Text := FormatFloat('$###,###,##0.00', sender.Value);
        frmMain.btnRefundOrder.Enabled := (sender.Value <> 0);
    end;
end;

procedure Ttilldm.qryPaymentsDetailsGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
    if tilldm.qryPaymentsCancelled.AsString = 'Y' then
    begin
        if Text <> '' then
            Text := Text + sLineBreak + '**CANCELLED**'
        else
            Text := '**CANCELLED**';
    end;
end;

procedure Ttilldm.qryStockReplenishFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   accept := qrystockreplenishlocation.asstring = current_location;
end;

procedure Ttilldm.qryTransactionPrintCalcFields(DataSet: TDataSet);
begin

    // TODO:
    //      Convert ItemInfo to SQL
    //      Convert Price to SQL
    if tilldm.qryTransactionPrint.AutoCalcFields = false then exit;

    // Building info string
    if (qryTransactionPrintIsGiftCard.AsString = 'Y') then
    begin
        qryTransactionPrintItemInfo.AsString := 'GIFTCARD: ';
    end;
    qryTransactionPrintItemInfo.AsString := qryTransactionPrintItemInfo.AsString;
    if (qrytransactionprintDiscount.Value > 0) or (qrytransactionprintTransactionDiscount.Value > 0) then
    begin
        qrytransactionprintItemInfo.AsString := qrytransactionprintItemInfo.AsString + ' discount';
        if (qrytransactionprintDiscount.Value > 0) then
        begin
            qrytransactionprintItemInfo.AsString := qrytransactionprintItemInfo.AsString + ' ' + FormatFloat('##0.0%', qrytransactionprintDiscount.Value)+' '+
            'was $'+FormatFloat('##0.00', qryTransactionPrintSale_Price.Value);
            if (qrytransactionprintTransactionDiscount.Value > 0) then
            begin
                //qrytransactionprintItemInfo.AsString := qrytransactionprintItemInfo.AsString + ' + ' + FormatFloat('##0.0%', qrytransactionprintTransactionDiscount.Value);
            end;
        end
        else
        begin
            //qrytransactionprintItemInfo.AsString := qrytransactionprintItemInfo.AsString + ' ' + FormatFloat('##0.0%', qrytransactionprintTransactionDiscount.Value);
        end;
    end;

    // Building display Price
    if (qryTransactionPrintDiscount.Value > 0) then // or (qryTransactionPrintTransactionDiscount.Value > 0) then
    begin
        // Commented out sections because transaction discounts have been temporarily disabled
        // if enabling again, make sure to also fix the SQL statements for the TotalDue, and other totals

        if (qryTransactionPrintDiscount.Value > 0) then
        begin
            // Item discount
            qryTransactionPrintPrice.Value := qryTransactionPrintSale_Price.Value * ((100 - qryTransactionPrintDiscount.Value) / 100);
            if (qryTransactionPrintTransactionDiscount.Value > 0) then
            begin
                // Item discount + Transaction discount
                //qryTransactionPrintPrice.Value := qryTransactionPrintPrice.Value * ((100 - qryTransactionPrintTransactionDiscount.Value) / 100);
            end;
        end
        else
        begin
            // Transaction discount
            //qryTransactionPrintPrice.Value := qryTransactionPrintSale_Price.Value * ((100 - qryTransactionPrintTransactionDiscount.Value) / 100);
        end;
    end
    else
    begin
        // No discount
        qryTransactionPrintPrice.Value := qryTransactionPrintSale_Price.Value;
    end;
    qryTransactionPrintSubtotal.Value := 0;
            if (qrytransactionprintReturned.AsString = 'Y') then
    begin
        qrytransactionprintItemInfo.AsString := qrytransactionprintItemInfo.AsString + ' *RETURNED* ' + qrytransactionprintReturnType.AsString;
        if qrytransactionprintReturnReason.AsString <> '' then
        begin
            qrytransactionprintItemInfo.AsString := qrytransactionprintItemInfo.AsString + ': ' + qrytransactionprintReturnReason.AsString;
        end;
    end
    else
    if (qrytransactionprintIsDeleted.AsString = 'Y') then
    begin
        qrytransactionprintItemInfo.AsString := qrytransactionprintItemInfo.AsString + ' *DELETED*';
    end
    else
    begin



    // Building subtotal
    qryTransactionPrintSubtotal.Value := qryTransactionPrintPrice.Value * qryTransactionPrintQuantity.Value;
    end;

    // Hide the code+supplier on the Item Info


end;



procedure Ttilldm.qryTransactionsOnHoldAfterOpen(DataSet: TDataSet);
begin
    tilldm.qryTransactionsOnHoldCount.Close;
    tilldm.qryTransactionsOnHoldCount.Open;
end;

procedure Ttilldm.qryTransactionsOnHoldCountAfterOpen(DataSet: TDataSet);
begin
    frmMain.btnFetchOnHold.Enabled := (qryTransactionsOnHoldCountamountOnHold.Value > 0);
    if qryTransactionsOnHoldCountamountOnHold.Value > 0 then
    frmMain.btnFetchOnHold.caption:= 'On Hold'+#13+#10+inttostr(qryTransactionsOnHoldCountamountOnHold.value)
    else
    frmMain.btnFetchOnHold.caption:= 'On Hold';
        if qryTransactionsOnHoldCountamountOnHold.Value > 0 then
        frmMain.btnFetchOnHold.Font.color := clRed
        else
        frmMain.btnFetchOnHold.Font.color := clWindowText;


end;

procedure Ttilldm.qryTransactionsOnHoldCountAfterScroll(DataSet: TDataSet);
begin
      if qryTransactionsOnHoldCountamountOnHold.Value > 0 then
    frmMain.btnFetchOnHold.caption:= 'On Hold'+#13+#10+inttostr(qryTransactionsOnHoldCountamountOnHold.value)
    else
    frmMain.btnFetchOnHold.caption:= 'On Hold';
      if qryTransactionsOnHoldCountamountOnHold.Value > 0 then
        frmMain.btnFetchOnHold.Font.color := clRed
        else
        frmMain.btnFetchOnHold.Font.color := clWindowText;
end;

procedure Ttilldm.qryTransactionStockAfterPost(DataSet: TDataSet);
begin
    qryTransactionStockCalc.Requery();
    qryPaymentsCalc.Requery();
    qryTotalDue.Requery();
    mSubTotal := tilldm.qryTransactionStockCalcsubTotal.AsFloat;
    mGrandTotal := tilldm.qryTransactionStockCalctotalAmount.AsFloat;
    mTax := tilldm.qryTransactionStockCalctax.AsFloat;
    tilldm.qryTransactionStock.AutoCalcFields := True;
end;

procedure Ttilldm.qryTransactionStockAfterRefresh(DataSet: TDataSet);
begin
    qryTransactionStockCalc.Requery();
    qryPaymentsCalc.Requery();
    qryTotalDue.Requery();
    mSubTotal := tilldm.qryTransactionStockCalcsubTotal.AsFloat;
    mGrandTotal := tilldm.qryTransactionStockCalctotalAmount.AsFloat;
    mTax := tilldm.qryTransactionStockCalctax.AsFloat;
    tilldm.qryTransactionStock.AutoCalcFields := True;
end;

procedure Ttilldm.qryTransactionStockBeforeDelete(DataSet: TDataSet);
{var
  SQL : string;
  id : string;}
begin
{    id := DataSet.FieldByName('TransactionStockId').AsString;
    SQL := 'DELETE FROM transaction_stock WHERE TransactionStockId='+ DataSet.FieldByName('TransactionStockId').AsString;
    conLocalSQL.Execute(SQL);
    tilldm.qryTransactionStock.Close;
    tilldm.qryTransactionStock.Open;
    tilldm.qryTransactionStock.Locate('TransactionStockId',id,[]);
    Abort;  }
    tilldm.qryTransactionStock.AutoCalcFields := false;
end;

procedure Ttilldm.qryTransactionStockBeforeEdit(DataSet: TDataSet);
begin
    tilldm.qryTransactionStock.AutoCalcFields := false;
end;

procedure Ttilldm.qryTransactionStockBeforePost(DataSet: TDataSet);
{var
  SQL : string;
  state : TDataSetState;
  fieldNames, fieldValues, updateSet : string;
  i : Integer; }
begin
    tilldm.qryTransactionStock.AutoCalcFields := True;
  {  state := DataSet.State;

    if state = dsEdit then
    begin
        for i := 0 to DataSet.Fields.Count - 1 do
        begin
            if (DataSet.Fields.Fields[i].FieldKind = fkData)
               and (pfInUpdate in DataSet.Fields.Fields[i].ProviderFlags) then
            begin
                if updateSet <> '' then
                    updateSet := updateSet + ', ';
                updateSet := updateSet + DataSet.Fields.Fields[i].FieldName + '=' + QuotedStr(DataSet.Fields.Fields[i].AsString);
            end;
        end;
        SQL := 'update transaction_stock SET ' + updateSet + ' WHERE TransactionStockId='+ DataSet.FieldByName('TransactionStockId').AsString;
    end
    else if state = dsInsert then
    begin
        for i := 0 to DataSet.Fields.Count - 1 do
        begin
            if (DataSet.Fields.Fields[i].FieldKind = fkData)
               and (pfInUpdate in DataSet.Fields.Fields[i].ProviderFlags) then
            begin
                if fieldNames <> '' then
                    fieldNames := fieldNames + ', ';
                fieldNames := fieldNames + DataSet.Fields.Fields[i].FieldName;

                if fieldValues <> '' then
                    fieldValues := fieldValues + ', ';
                fieldValues := fieldValues + QuotedStr(DataSet.Fields.Fields[i].AsString);
            end;
        end;
        SQL := 'INSERT INTO transaction_stock (' + fieldNames + ') VALUES (' + fieldValues + ')';
    end;

    conLocalSQL.Execute(SQL);
    DataSet.Cancel;
    TADOQuery(DataSet).ReQuery;

    Abort;  }



end;

procedure Ttilldm.qryTransactionStockCalcAfterOpen(DataSet: TDataSet);
begin
    mSubTotal := tilldm.qryTransactionStockCalcsubTotal.AsFloat;
    mGrandTotal := tilldm.qryTransactionStockCalctotalAmount.AsFloat;
    mTax := tilldm.qryTransactionStockCalctax.AsFloat;


    {

    // discountedAmount includes Transaction Discount
select
sum(if(discount>0 or transactiondiscount>0, (sale_price*((discount) / 100))+(sale_price*((100 - discount) / 100))*((transactiondiscount) / 100), 0)*quantity) as discountedAmount,
sum(if(discount>0, (sale_price*((100 - discount) / 100)), sale_price)*quantity) as totalAmountNoTransactionDiscount,
sum(if(discount>0 or transactiondiscount>0, (sale_price*((100 - discount) / 100))*((100 - transactiondiscount) / 100), sale_price)*quantity) as totalAmount,
(sum(if(discount>0 or transactiondiscount>0, (sale_price*((100 - discount) / 100))*((100 - transactiondiscount) / 100), sale_price)*quantity)/11) as tax,
sum(if(discount>0 or transactiondiscount>0, (sale_price*((100 - discount) / 100))*((100 - transactiondiscount) / 100), sale_price)*quantity)-
(sum(if(discount>0 or transactiondiscount>0, (sale_price*((100 - discount) / 100))*((100 - transactiondiscount) / 100), sale_price)*quantity)/11) as subTotal
from transaction_stock
where transaction_stock.Transaction_ID=:id
and transaction_stock.Returned <> 'Y';


}
end;

procedure Ttilldm.qryTransactionStockCalcFields(DataSet: TDataSet);
var qs : string;
begin
    if tilldm.qrytransactionstocksupplier.asstring = 'B2BAV' then
    begin
    tilldm.qrybookmusic.Close;
            tilldm.qrybookmusic.SQL.Text := 'select * from book where book_code = '+QuotedStr(tilldm.qryTransactionStockCode.AsString);
            tilldm.qrybookmusic.Open;
       if tilldm.qrybookmusic.RecordCount > 0 then
       tilldm.qryTransactionStockName.AsString := tilldm.qrybookmusic.fieldbyname('Title').asstring;




    end
    else
    begin
    tilldm.qryProductsLookup.Open;
    if tilldm.qryProductsLookup.Locate('supplier;code',VarArrayOf([tilldm.qryTransactionStockSupplier.AsString,tilldm.qryTransactionStockCode.AsString]),[loCaseInsensitive]) then
    tilldm.qryTransactionStockName.AsString := tilldm.qryProductsLookupname.AsString;




    end;




    // TODO:
    //      Convert ItemInfo to SQL
    //      Convert Price to SQL
    if tilldm.qryTransactionStock.AutoCalcFields = false then exit;

    // Building info string
    if (qryTransactionStockIsGiftCard.AsString = 'Y') then
    begin
        qryTransactionStockItemInfo.AsString := 'GIFTCARD: ';
    end;
    qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + qryTransactionStockCode.AsString;
    if (qryTransactionStockDiscount.Value > 0) or (qryTransactionStockTransactionDiscount.Value > 0) then
    begin
        qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + ' Discounted';
        if (qryTransactionStockDiscount.Value > 0) then
        begin
            qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + ' ' + FormatFloat('##0.0%', qryTransactionStockDiscount.Value);
            if (qryTransactionStockTransactionDiscount.Value > 0) then
            begin
                //qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + ' + ' + FormatFloat('##0.0%', qryTransactionStockTransactionDiscount.Value);
            end;
        end
        else
        begin
            //qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + ' ' + FormatFloat('##0.0%', qryTransactionStockTransactionDiscount.Value);
        end;
    end;



    if (qryTransactionStockReturned.AsString = 'Y') then
    begin
        qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + ' *RETURNED* ' + qryTransactionStockReturnType.AsString;
        if qryTransactionStockReturnReason.AsString <> '' then
        begin
            qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + ': ' + qryTransactionStockReturnReason.AsString;
        end;
    end
    else
    if (qryTransactionStockIsDeleted.AsString = 'Y') then
    begin
        qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + ' *DELETED*';
    end
    else
    if qryTransactionStockBox.AsString = 'N' then
    if qryTransactionStocksupplier.AsString <> 'XXX' then

        qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + ' *NO BOX*';

    qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + sLineBreak + qryTransactionStockName.AsString;


    // Building display Price
    if (qryTransactionStockDiscount.Value > 0) then // or (qryTransactionStockTransactionDiscount.Value > 0) then
    begin
        // Commented out sections because transaction discounts have been temporarily disabled
        // if enabling again, make sure to also fix the SQL statements for the TotalDue, and other totals

        if (qryTransactionStockDiscount.Value > 0) then
        begin
            // Item discount
            qryTransactionStockPrice.Value := qryTransactionStockSale_Price.Value * ((100 - qryTransactionStockDiscount.Value) / 100);
            if (qryTransactionStockTransactionDiscount.Value > 0) then
            begin
                // Item discount + Transaction discount
                //qryTransactionStockPrice.Value := qryTransactionStockPrice.Value * ((100 - qryTransactionStockTransactionDiscount.Value) / 100);
            end;
        end
        else
        begin
            // Transaction discount
            //qryTransactionStockPrice.Value := qryTransactionStockSale_Price.Value * ((100 - qryTransactionStockTransactionDiscount.Value) / 100);
        end;
    end
    else
    begin
        // No discount
        qryTransactionStockPrice.Value := qryTransactionStockSale_Price.Value;
    end;

    // Building subtotal
    qryTransactionStockSubtotal.Value := qryTransactionStockPrice.Value * qryTransactionStockQuantity.Value;


    // Hide the code+supplier on the Item Info

    qryTransactionStockItemInfo.AsString := qryTransactionStockItemInfo.AsString + #1 + qryTransactionStockCode.AsString + #2 + qryTransactionStockSupplier.AsString;
    qryTransactionStockItemInfo.AsString;
end;

procedure Ttilldm.qryTransactionStockCalctotalAmountGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
    if sender.Value = null then
    begin
        Text := '$0.00';
    end
    else
    begin
        Text := FormatFloat('$###,###,##0.00', sender.Value);
    end;
    if Sender.FieldName = 'totalAmount' then
        mGrandTotal := tilldm.qryTransactionStockCalctotalAmount.AsFloat
    else if Sender.FieldName = 'subTotal' then
        mSubTotal := tilldm.qryTransactionStockCalcsubTotal.AsFloat
    else if Sender.FieldName = 'tax' then
        mTax := tilldm.qryTransactionStockCalctax.AsFloat;
end;




procedure Ttilldm.qryTransactionStockItemInfoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
    Text := Copy(qryTransactionStockItemInfo.AsString, 1, Pos(#1, qryTransactionStockItemInfo.AsString)-1);
end;

procedure Ttilldm.LocationGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
    Text := '';
end;

end.
