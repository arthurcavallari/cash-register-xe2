unit frmMainTillUnit;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,jpeg,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
    Vcl.Buttons, Vcl.ImgList, Vcl.Grids, Wwdbigrd, Wwdbgrid, DB,
    Vcl.Mask, wwdbedit, Data.Win.ADODB, fcLabel, frxClass, ResizeKit, System.Math, CashRegisterUtils, System.Generics.Collections,
  frxDBSet, frxPreview, Web.Win.Sockets, IdContext, IdCustomTCPServer, IdTCPServer, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdServerIOHandler, IdServerIOHandlerSocket, IdServerIOHandlerStack, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdIntercept, IdCompressionIntercept, IdAntiFreezeBase, Vcl.IdAntiFreeze, System.StrUtils, System.Types,
  ShellApi,Vcl.DBGrids,winspool, fcButton, fcImgBtn, fcShapeBtn, fcpanel, fcButtonGroup, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.TabNotBk, Vcl.printers,QuricolCode,
  fcImager;

type
    TwwDBGrid = class(Wwdbgrid.TwwDBGrid);
type
 TPassThroughData = record
      nLen: Word;
      Data: array[0..255] of Byte;
  end;



type
    TfrmMain = class(TForm)
        pnlMainScreen: TPanel;
        pnlProductArea: TPanel;
        pnlTransaction_Actions: TPanel;
        btnDelete: TSpeedButton;
        btnDiscount: TSpeedButton;
        btnChangeQty: TSpeedButton;
        btnChangePrice: TSpeedButton;
        il1: TImageList;
        pnlMainMenu: TPanel;
        ResizeKit1: TResizeKit;
        totalsPanel: TPanel;
        Label1: TLabel;
        Label2: TLabel;
        lblSubTotal: TfcLabel;
        lblTax: TfcLabel;
    lblTotal: TLabel;
    fcLabel1: TfcLabel;
    fcLabel2: TfcLabel;
    lblPayments: TLabel;
    fcLabel3: TfcLabel;
    lblTotalDue: TLabel;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    btnSearchCustomer: TSpeedButton;
    edtCustomerSearch: TEdit;
    tmrUpdateGUI: TTimer;
    btnRefundOrder: TSpeedButton;
    btnReturn: TSpeedButton;
    lblDiscountedAmount: TLabel;
    fcLabel4: TfcLabel;
    Label3: TLabel;
    fcLabel5: TfcLabel;
    Label4: TLabel;
    fcLabel6: TfcLabel;
    TcpServer1: TTcpServer;
    TcpClient1: TTcpClient;
    btnSplit: TSpeedButton;
    btnIncShop: TfcLabel;
    btnIncStore: TfcLabel;
    btnIncShed: TfcLabel;
    btnQuantityLabel: TfcLabel;
    lblStock_SHOP: TfcLabel;
    lblStock_STORE: TfcLabel;
    lblStock_SHED: TfcLabel;
    repTransaction: TfrxReport;
    dsPayments: TfrxDBDataset;
    frxdbtransactionprint: TfrxDBDataset;
    frxdbdStaff: TfrxDBDataset;
    frxdbdTrans: TfrxDBDataset;
    grdTransactionProducts: TwwDBGrid;
    edtBarcode: TEdit;
    edtQuantity: TEdit;
    lblScan: TLabel;
    lblQuantity: TLabel;
    lblErrorMsg: TLabel;
    TillPage: TTabControl;
    frxDBDPayCalc: TfrxDBDataset;
    btnSearch: TSpeedButton;
    MiscPanel: TFlowPanel;
    custlabel: TLabel;
    toolpanel: TFlowPanel;
    btnReplenish: TSpeedButton;
    btnLogout: TSpeedButton;
    PriceCheck: TSpeedButton;
    btnFetchOnHold: TSpeedButton;
    PrevTrans: TSpeedButton;
    nextrans: TSpeedButton;
    btnOpenOrder: TSpeedButton;
    btnNewTransaction: TSpeedButton;
    detailsPanel: TPanel;
    lblstaffName: TfcLabel;
    tnumlabel: TfcLabel;
    fcLabel7: TfcLabel;
    stafflabel: TLabel;
    Label6: TLabel;
    repbtn: TSpeedButton;
    btnHoldOrder: TSpeedButton;
    custbtn: TSpeedButton;
    Laybybtn: TSpeedButton;
    btnAddGiftCard: TSpeedButton;
    FlowPanel1: TFlowPanel;
    btnPay: TSpeedButton;
    Receipt: TSpeedButton;
    SpeedButton1: TSpeedButton;
    TaskBtn: TSpeedButton;
    ProdImage: TfcDBImager;
        procedure FormCreate(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure grdTransactionProductsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        procedure edtBarcodeKeyPress(Sender: TObject; var Key: Char);
        procedure btnNewTransactionClick(Sender: TObject);
        procedure btnDeleteClick(Sender: TObject);
        procedure btnOpenOrderClick(Sender: TObject);
        procedure edtQuantityEnter(Sender: TObject);
        procedure btnPayClick(Sender: TObject);
        procedure printReceipt();
        procedure btnChangeQtyClick(Sender: TObject);
        procedure btnChangePriceClick(Sender: TObject);
        procedure btnDiscountClick(Sender: TObject);
        procedure btnSearchClick(Sender: TObject);
        procedure btnSearchCustomerClick(Sender: TObject);
    procedure tmrUpdateGUITimer(Sender: TObject);
    procedure edtCustomerSearchDblClick(Sender: TObject);
    procedure btnRefundOrderClick(Sender: TObject);
    procedure btnReturnClick(Sender: TObject);
    procedure grdTransactionProductsCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure btnDiscountDollarClick(Sender: TObject);
    procedure btnDiscountPercentageClick(Sender: TObject);
    procedure refreshTransactionStock(currId : Integer = -1);
    procedure updateReplenishStock(fieldKeyPairs : TDictionary<string,string>; conditions : string);
    procedure updateTransactionStock(fieldKeyPairs : TDictionary<string,string>; conditions : string;dateret:integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure refreshCurrentTransaction();
    procedure deleteProduct(id: string);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnFetchOnHoldClick(Sender: TObject);
    procedure prepareuser;
    procedure btnHoldOrderClick(Sender: TObject);
    procedure Replenish(replenishLocation : string; addedValue : integer);

    Function GetUserFromWindows: string;
    procedure TcpServer1Accept(Sender: TObject; ClientSocket: TCustomIpClient);
    procedure TcpClient1Connect(Sender: TObject);
    procedure TcpServer1GetThread(Sender: TObject; var ClientSocketThread: TClientSocketThread);
    procedure btnSplitClick(Sender: TObject);
    procedure edtBarcodeEnter(Sender: TObject);
    procedure btnLastTransactionDownClick(Sender: TObject);
    procedure btnLastTransactionUpClick(Sender: TObject);
    procedure btnSelectTransactionClick(Sender: TObject);
    procedure grdTransactionProductsDrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure btnIncShedClick(Sender: TObject);
    procedure btnIncStoreClick(Sender: TObject);
    procedure btnIncShopClick(Sender: TObject);
    procedure btnQuantityLabelClick(Sender: TObject);
    procedure grdTransactionProductsRowChanged(Sender: TObject);
    procedure btnAddGiftCardClick(Sender: TObject);

    procedure btnReplenishClick(Sender: TObject);
    procedure ReceiptClick(Sender: TObject);
        procedure addToOrder(code: string; quantity: Double);
    procedure startListeningServer;

    procedure logoutUser(forcedToLogout : boolean=False; userName : string='');
    procedure insertNewTransaction;
    procedure moveStock(addedValue: Integer; location : string);
    procedure PriceCheckClick(Sender: TObject);
    procedure PrevTransClick(Sender: TObject);
    procedure nextransClick(Sender: TObject);
    procedure repbtnClick(Sender: TObject);
    procedure TillPageChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure miscbtnClick(Sender: TObject);
    procedure custbtnClick(Sender: TObject);
    procedure repTransactionBeforePrint(Sender: TfrxReportComponent);
    procedure LaybybtnClick(Sender: TObject);
    procedure ResizeKit1ExitResize(Sender: TObject; XScale, YScale: Double);
    procedure TaskBtnClick(Sender: TObject);
    procedure taskcheck;

    procedure ProdImageCalcPictureType(ImageControl: TfcDBImager;
      var PictureType: TfcImagerPictureType; var GraphicClassName: string);
   


    //procedure DrawAntialisedLine(Canvas: TCanvas; const AX1, AY1, AX2, AY2: real; const LineColor: TColor);


    private
    { Private declarations }
        mLineSupplier, mLineCode : string;

    public

        mStaff: string;
        firstRun: Boolean;
        mSubTotal: Double;
        mGrandTotal: Double;
        mTax: Double;
        APP_PATH : string;


        procedure sendRemoteLogout(port : string);
        procedure refreshmiscpanel;


        { Public declarations }
    end;

var
    frmMain: TfrmMain;
    current_location : string;

    decreaseMode : Boolean;
    mStaff: string;
    firstRun: Boolean;
    mSubTotal: Double;
    mGrandTotal: Double;
    mTax: Double;
pricecheckmode : Boolean;
printertest : tprinter;


implementation

{$R *.dfm}
{$WARN SYMBOL_PLATFORM OFF}

uses frmtaskunit,custUnit,repfrm,dmtillunit, frmNumberInputUnit, frmPaymentUnit, frmSearchProductsUnit, frmRefundUnit, frmAddProductUnit, frmReturnUnit,
  frmSearchOnHoldUnit,frmOverrideUnit, frmLoginUnit, frmSelectProductUnit, frmAddGiftCardUnit;

{
procedure TfrmMain.DrawAntialisedLine(Canvas: TCanvas; const AX1, AY1, AX2, AY2: real; const LineColor: TColor);

var
  swapped: boolean;


  procedure plot(const x, y, c: real);
  var
    resclr: TColor;
  begin
    if swapped then
      resclr := Canvas.Pixels[round(y), round(x)]
    else
      resclr := Canvas.Pixels[round(x), round(y)];
    resclr := RGB(round(GetRValue(resclr) * (1-c) + GetRValue(LineColor) * c),
                  round(GetGValue(resclr) * (1-c) + GetGValue(LineColor) * c),
                  round(GetBValue(resclr) * (1-c) + GetBValue(LineColor) * c));
    if swapped then
      Canvas.Pixels[round(y), round(x)] := resclr
    else
      Canvas.Pixels[round(x), round(y)] := resclr;
  end;

  function rfrac(const x: real): real; inline;
  begin
    rfrac := 1 - frac(x);
  end;

  procedure swap(var a, b: real);
  var
    tmp: real;
  begin
    tmp := a;
    a := b;
    b := tmp;
  end;

var
  x1, x2, y1, y2, dx, dy, gradient, xend, yend, xgap, xpxl1, ypxl1,
  xpxl2, ypxl2, intery: real;
  x: integer;

begin

  x1 := AX1;
  x2 := AX2;
  y1 := AY1;
  y2 := AY2;

  dx := x2 - x1;
  dy := y2 - y1;
  swapped := abs(dx) < abs(dy);
  if swapped then
  begin
    swap(x1, y1);
    swap(x2, y2);
    swap(dx, dy);
  end;
  if x2 < x1 then
  begin
    swap(x1, x2);
    swap(y1, y2);
  end;

  gradient := dy / dx;

  xend := round(x1);
  yend := y1 + gradient * (xend - x1);
  xgap := rfrac(x1 + 0.5);
  xpxl1 := xend;
  ypxl1 := floor(yend);
  plot(xpxl1, ypxl1, rfrac(yend) * xgap);
  plot(xpxl1, ypxl1 + 1, frac(yend) * xgap);
  intery := yend + gradient;

  xend := round(x2);
  yend := y2 + gradient * (xend - x2);
  xgap := frac(x2 + 0.5);
  xpxl2 := xend;
  ypxl2 := floor(yend);
  plot(xpxl2, ypxl2, rfrac(yend) * xgap);
  plot(xpxl2, ypxl2 + 1, frac(yend) * xgap);

  for x := round(xpxl1) + 1 to round(xpxl2) - 1 do
  begin
    plot(x, floor(intery), rfrac(intery));
    plot(x, floor(intery) + 1, frac(intery));
    intery := intery + gradient;
  end;

end;
}

procedure TfrmMain.deleteProduct(id: string);
var
  conditions : string;
  updateFields : TDictionary<string,string>;
begin
    // instead of actually deleting, we just mark it as deleted
    updateFields := TDictionary<string,string>.Create;

    updateFields.Add('IsDeleted','Y');
    conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                  ' AND TransactionStockId = ' + QuotedStr(id);

    updateTransactionStock(updateFields, conditions,0);

    updateFields.Clear;
    updateFields.Destroy;
    //SQL := 'DELETE FROM transaction_stock WHERE TransactionStockId='+ id;
    //tilldm.conLocalSQL.Execute(SQL);

end;



procedure TfrmMain.btnAddGiftCardClick(Sender: TObject);
begin
    if frmAddGiftCardDialog.ShowModal = mrOk then
    begin
        addToOrder(frmAddGiftCardDialog.cardNumberAndPin, 1);
    end;
end;



procedure TfrmMain.btnChangePriceClick(Sender: TObject);
var
    newPrice: string;
begin
    if not tilldm.qryTransactionStock.IsEmpty then
    if tilldm.qryTransactionStockIsDeleted.AsString <> 'Y' then
    if tilldm.qryTransactionStockReturned.AsString <> 'Y' then
    begin
       { if frmOverride.ShowModal = mrOk then   override off}
        begin
            frmNumberInputDialog.dialogName := 'Enter price';
            frmNumberInputDialog.initialValue := tilldm.qryTransactionStockSale_Price.AsString;
            frmNumberInputDialog.integerOnly := false;
            frmNumberInputDialog.isCurrency := true;
            if frmNumberInputDialog.ShowModal = mrOk then
            begin
                newPrice := FloatToStr(frmNumberInputDialog.result);
                if (newPrice <> '') and (newPrice <> tilldm.qryTransactionStockSale_Price.AsString) and (newPrice <> '0') then
                begin
                    tilldm.qryTransactionStock.Edit;
                    tilldm.qryTransactionStockSale_Price.AsString := newPrice;
                    tilldm.qryTransactionStock.Post;
                end;
            end;
            edtBarcode.SetFocus;
        end;
    end;
end;

procedure TfrmMain.btnChangeQtyClick(Sender: TObject);
var
    newQty, conditions: string;
    updateFields : TDictionary<string,string>;
    resOverride : Integer;
begin
    if not tilldm.qryTransactionStock.IsEmpty then
    if tilldm.qryTransactionStockIsDeleted.AsString <> 'Y' then
    if tilldm.qryTransactionStockReturned.AsString <> 'Y' then
    begin
        frmNumberInputDialog.dialogName := 'Enter quantity';
        frmNumberInputDialog.initialValue := tilldm.qryTransactionStockQuantity.AsString;
        frmNumberInputDialog.integerOnly := false;
        if frmNumberInputDialog.ShowModal = mrOk then
        begin
            newQty := FloatToStr(frmNumberInputDialog.result);
            if (newQty <> '') and (newQty <> tilldm.qryTransactionStockQuantity.AsString) and (newQty <> '0') then
            begin
                if (StrToFloat(newQty) < tilldm.qryTransactionStockQuantity.AsFloat) and (tilldm.qryPaymentsCalctotal.Value > 0) then
                begin
                    resOverride := frmOverride.ShowModal;
                end
                else
                    resOverride := mrOk;

                if resOverride = mrOk then
                begin
                    updateFields := TDictionary<string,string>.Create;

                    updateFields.Add('Quantity',newQty);
                    conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                                  ' AND TransactionStockId = ' + QuotedStr(tilldm.qryTransactionStockTransactionStockId.AsString);

                    updateTransactionStock(updateFields, conditions,0);

                    updateFields.Clear;
                    updateFields.Destroy;
                    //using the above method instead of bellow to avoid annoying update errors..
                    //tilldm.qryTransactionStock.Edit;
                    //tilldm.qryTransactionStockQuantity.AsString := newQty;
                    //tilldm.qryTransactionStock.Post;
                end;
            end;
        end;
        edtBarcode.SetFocus;

    end;
end;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
begin
    if not tilldm.qryTransactionStock.IsEmpty then
    if tilldm.qryTransactionStocklocation_SHOP.value+tilldm.qryTransactionStocklocation_store.value+tilldm.qryTransactionStocklocation_shed.value = 0 then

    if tilldm.qryTransactionStockReturned.AsString <> 'Y' then
    begin
        deleteProduct(tilldm.qryTransactionStockTransactionStockId.AsString);
        refreshTransactionStock;
    end;
end;

procedure TfrmMain.btnDiscountClick(Sender: TObject);
var
    newDiscount, conditions: string;
    updateFields : TDictionary<string,string>;
begin
    if not tilldm.qryTransactionStock.IsEmpty then
    if tilldm.qryTransactionStockIsDeleted.AsString <> 'Y' then
    if tilldm.qryTransactionStockReturned.AsString <> 'Y' then
    begin
        if frmOverride.ShowModal = mrOk then
        begin
            frmNumberInputDialog.dialogName := 'Enter percentage off';
            frmNumberInputDialog.initialValue := tilldm.qryTransactionStockDiscount.AsString;
            frmNumberInputDialog.isPercentage := true;
            if frmNumberInputDialog.ShowModal = mrOk then
            begin
                newDiscount := FloatToStr(frmNumberInputDialog.result);
                if (newDiscount <> '') and (newDiscount <> tilldm.qryTransactionStockDiscount.AsString) then
                begin
                    updateFields := TDictionary<string,string>.Create;

                    updateFields.Add('Discount',newDiscount);
                    conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                                  ' AND TransactionStockId = ' + QuotedStr(tilldm.qryTransactionStockTransactionStockId.AsString);

                    updateTransactionStock(updateFields, conditions,0);

                    updateFields.Clear;
                    updateFields.Destroy;
                    //refreshTransactionStock;

                    //tilldm.qryTransactionStock.Edit;
                    //tilldm.qryTransactionStockDiscount.AsString := newDiscount;
                    //tilldm.qryTransactionStock.Post;
                end;
            end;
            edtBarcode.SetFocus;
        end;
    end;
end;

procedure TfrmMain.refreshTransactionStock(currId : integer);
var id : integer;
begin
    if currId > -1 then
        id := currId
    else
        id := tilldm.qryTransactionStockTransactionStockId.Value;

    tilldm.qryTransactionStock.Close;
    tilldm.qryTransactionStock.Open;
    tilldm.qryTransactionStock.Locate('TransactionStockId',id, []);
    tilldm.qryTransactionPrint.close;
    tilldm.qryTransactionPrint.open;
    tilldm.qryTransactionStockCalc.Close;
    tilldm.qryTransactionStockCalc.Open;
    tilldm.qryPaymentsCalc.Close;
    tilldm.qryPaymentsCalc.Open;
    tilldm.qryTotalDue.Close;
    tilldm.qryTotalDue.Open;
end;



procedure TfrmMain.repbtnClick(Sender: TObject);
begin
if RepForm.Showing then
RepForm.BringToFront

else
RepForm.show;
end;

Function TfrmMain.GetUserFromWindows: string;
Var
   UserName : string;
   UserNameLen : Dword;
Begin
   UserNameLen := 255;
   SetLength(userName, UserNameLen) ;
   If GetUserName(PChar(UserName), UserNameLen) Then
     Result := Copy(UserName,1,UserNameLen - 1)
   Else
     Result := 'Unknown';
End;

procedure TfrmMain.TaskBtnClick(Sender: TObject);
begin
taskform.show;
end;

procedure TfrmMain.TcpClient1Connect(Sender: TObject);
begin
        TcpClient1.Sendln(AnsiString('logout/' + GetUserFromWindows + '/' + sLineBreak));
        TcpClient1.Close;

        // slinebreak needed, marks "end of message"
end;

procedure TfrmMain.TcpServer1Accept(Sender: TObject; ClientSocket: TCustomIpClient);
var recv : string;
ssplit : TStringDynArray;
msg, username : string;

begin
    recv := string(ClientSocket.Receiveln());
    if Pos('/', recv) <> 0 then
    begin
        try
            ssplit := SplitString(recv,'/');
            msg := ssplit[0];
            username := ssplit[1];
        finally

        end;
        if (msg = 'logout') then
        begin
            TcpServer1.Close;
            TcpServer1.Open;
            logoutUser(true, username);
        end;
    end;
end;

procedure TfrmMain.TcpServer1GetThread(Sender: TObject; var ClientSocketThread: TClientSocketThread);
begin
    TcpServer1.Accept; // accepts connection
end;
procedure TfrmMain.miscbtnClick(Sender: TObject);
var
  btnclick : tspeedbutton;
begin
if Sender is TSpeedButton then
begin
btnclick := TSpeedButton(Sender);
addToOrder(btnclick.hint, 1);
end;
end;
procedure TfrmMain.refreshmiscpanel;
 var prodindex : Integer;
 btnclick : TSpeedButton;
 rc : Integer;
begin

 miscpanel.DestroyComponents;

   tilldm.qrymisc.Close;
tilldm.qrymisc.Open;
tilldm.QryMisc.Last;
tilldm.QryMisc.first;
  prodindex := 0;
    while not tilldm.qrymisc.Eof do

      with btnclick do
      begin
        SetLength(quickprodbuttoncode,prodindex+1);
        SetLength(quickprodbuttonsupplier,prodindex+1);
        quickprodbuttoncode[prodindex] := tilldm.qrymisccode.AsString;
        quickprodbuttonsupplier[prodindex] := tilldm.qrymiscsupplier.AsString;

        btnclick := TSpeedButton.Create(MiscPanel);
        parent :=miscpanel;
        OnClick := miscbtnClick;
        Width := round(MiscPanel.clientwidth/3)-5;
        rc :=  tilldm.qrymisc.RecordCount;
        if (Frac(tilldm.qrymisc.RecordCount/3) > 0) and (Frac(tilldm.qrymisc.RecordCount/3) < 0.4)  then
        rc := rc +2
        else
        if (Frac(tilldm.qrymisc.RecordCount/3) > 0.4) and (Frac(tilldm.qrymisc.RecordCount/3) < 0.7)  then
         rc := rc +1;



        Height  := Round(MiscPanel.clientHeight/(rc/3));
        Margin:= -1;
        AllowAllUp := True;
        GroupIndex := 1;
        Font.Size := 13;
        Font.Style := [fsbold];
        font.Name := 'segoe UI';
        Hint :=   '/'+tilldm.qrymiscsupplier.asstring+'/'+tilldm.qrymisccode.asstring;
        Caption := WrapText(tilldm.qrymiscname.asstring,9);
        tilldm.qrymisc.Next;
     end;
     end;

procedure TfrmMain.TillPageChange(Sender: TObject);
var qs : string;
btnclick : tspeedbutton;
  prodindex : Integer;
  namestring : string;

begin
tilldm.qryTransactionStock.Close;
tilldm.qryTransactionStock.SQL.clear;
qs := 'select transaction_stock.*  '+
'from transaction_stock ' +
' where transaction_stock.Transaction_ID= '+inttostr(tilldm.qrytransactionsid.value)+
' order by TransactionStockId limit '+inttostr(((TillPage.TabIndex+1)*16)-16)+',16';
tilldm.qryTransactionStock.SQL.Add(qs);
tilldm.qryTransactionStock.open;
tilldm.qryTransactionStock.last;
tilldm.qryTransactionStock.first;




end;
procedure TfrmMain.taskcheck;
begin

    tilldm.qrytaskcnt.Open;
    if tilldm.qrytaskcnttcount.Value >= 1 then
    begin
    TaskBtn.Caption := 'Tasks'+#13+#10+tilldm.qrytaskcnttcount.asstring;
    TaskBtn.Enabled := True;

    end
    ELSE
    BEGIN
    TaskBtn.Caption := 'Tasks';
    TaskBtn.Enabled := False;
    end;
    tilldm.qrytaskcnt.Close;
    end;

procedure TfrmMain.refreshCurrentTransaction();
var id : integer;
qs : string;
sql : string;
  begin




     tillpage.tabindex := 0;
    id := tilldm.qryTransactionsId.Value;



    tilldm.qryTransactions.Close;
    tilldm.qryTransactions.Open;


    tilldm.qryTransactionStock.close;
     tilldm.qryTransactions.Locate('id',id, []);
    tilldm.qryCheckedAllStock.Close;
    tilldm.qryCheckedAllStock.open;
    tilldm.qryTransactionStockCalc.close;
    tilldm.qryTransactionStockCalc.open;
    tilldm.qryTotalDueOnHold.Open;
    tilldm.qryTransactionsOnHold.Open;
    tilldm.qryPayments.Open;
    tilldm.qryPaymentsCalc.Open;
    tilldm.qryTotalDue.Open;
    tilldm.qryLastTransactions.Open;
    tilldm.qryTransactionStockDisplay.Open;
     TillPageChange(nil);

     if (tilldm.qryTransactionStock.RecordCount <> 0) then

        if (tilldm.qryTransactionStockCalctotalAmount.AsFloat > 0) then
        BEGIN
         if (tilldm.qrytotalduetotaldue.ascurrency <> 0) or
         ((tilldm.qrytotalduetotaldue.ascurrency = 0) and (tilldm.qryCheckedAllStock.Locate('IsStockChecked', 'N', [loCaseInsensitive])))  then
        begin
        if tilldm.qrytransactionsisonhold.asstring <> 'Y' then
        begin
            // Hold current order if it's active and isn't already on hold
            SQL := 'UPDATE transactions SET IsOnHold=''Y'' WHERE id=' + tilldm.qryTransactionsId.AsString;
            tilldm.conLocalSQL.Execute(SQL);
         end;

           end
           else
           begin
            if tilldm.qrytransactionsisonhold.asstring <> 'N' then
            begin
        SQL := 'UPDATE transactions SET IsOnHold=''N'' WHERE id=' + tilldm.qryTransactionsId.AsString;
        tilldm.conLocalSQL.Execute(SQL);

            end;



        end;
    END
    ELSE
    begin
       if tilldm.qrytransactionsisonhold.asstring <> 'N' then
       begin
       SQL := 'UPDATE transactions SET IsOnHold=''N'' WHERE id=' + tilldm.qryTransactionsId.AsString;
        tilldm.conLocalSQL.Execute(SQL);
       end;
    end;
        tilldm.qryTransactionsOnHold.Close;
    tilldm.qryTransactionsOnHold.open;



    custlabel.Caption := '';
    if (tilldm.qryTransactionscustcode.AsString <> '') and (tilldm.qryTransactionscustcode.AsString <> 'CASH') then
    begin

tilldm.qrycust.close;
qs := 'select * from cust where custcode = '+quotedstr(tilldm.qryTransactionscustcode.asstring);
tilldm.qrycust.SQL.clear;
tilldm.qrycust.SQL.Add(qs);

tilldm.qrycust.open;
if tilldm.qryTransactionsislayby.asstring = 'Y' then
custlabel.Caption := 'Lay By: '+#13+#10
else
if tilldm.qryTransactionsislayby.asstring = 'C' then
custlabel.Caption := 'Completed Lay By: '+#13+#10
else

custlabel.Caption := 'Customer: '+#13+#10;

if tilldm.qrycustcompany.AsString <> '' then
custlabel.Caption := custlabel.Caption +tilldm.qrycustcompany.AsString+#13+#10;
custlabel.Caption := custlabel.Caption +tilldm.qrycustFirstname.AsString+#13+#10+tilldm.qrycustsurname.AsString+#13+#10+tilldm.qrycustMobile.AsString;

    end;

     tilldm.qryTotalDueOnHold.Close;
            tilldm.qryTotalDueOnHold.Open;
            tilldm.qryTransactionsOnHold.Close;
            tilldm.qryTransactionsOnHold.Open;
             if tilldm.qryTransactionsIsOnHold.AsString = 'Y' then
     tnumlabel.Font.Color := clRed
     else
      tnumlabel.Font.Color := clBlue;
      taskcheck;
end;


procedure TfrmMain.updateReplenishStock(fieldKeyPairs : TDictionary<string,string>; conditions : string);
var
    setSQL, Key, SQL : string;
begin
    for Key in fieldKeyPairs.Keys do
    begin
        if setSQL = '' then
            setSQL := Key + '=' + QuotedStr(fieldKeyPairs.Items[Key])
        else
            setSQL := Key + '=' + QuotedStr(fieldKeyPairs.Items[Key]) + ', ' + setSQL;
    end;

    SQL := 'UPDATE stock_replenish SET ' + setSQL + ' WHERE ' + conditions;
    tilldm.conLocalSQL.Execute(SQL);

    tilldm.qryStockReplenish.Close;
    tilldm.qryStockReplenish.Open;
    tilldm.qryStockReplenish.Locate('id',tilldm.qryStockReplenishid.AsString, []);
end;

procedure TfrmMain.updateTransactionStock(fieldKeyPairs : TDictionary<string,string>; conditions : string;dateret:integer);
var
    setSQL, Key, SQL : string;
begin
    for Key in fieldKeyPairs.Keys do
    begin
        if setSQL = '' then
            setSQL := Key + '=' + QuotedStr(fieldKeyPairs.Items[Key])
        else
            setSQL := Key + '=' + QuotedStr(fieldKeyPairs.Items[Key]) + ', ' + setSQL;
    end;
    if dateret=1 then
    begin
    setSQL := setSQl  + ', datereturned = now() ';

    end;


    SQL := 'UPDATE transaction_stock SET ' + setSQL + ' WHERE ' + conditions;
    tilldm.conLocalSQL.Execute(SQL);
    refreshTransactionStock;

    tilldm.qryTransactionStockCalc.Close;
    tilldm.qryTransactionStockCalc.Open;
    tilldm.qryPaymentsCalc.Close;
    tilldm.qryPaymentsCalc.Open;
    tilldm.qryTotalDue.Close;
    tilldm.qryTotalDue.Open;
    mSubTotal := tilldm.qryTransactionStockCalcsubTotal.AsFloat;
    mGrandTotal := tilldm.qryTransactionStockCalctotalAmount.AsFloat;
    mTax := tilldm.qryTransactionStockCalctax.AsFloat;
end;


procedure TfrmMain.btnDiscountDollarClick(Sender: TObject);
var
    newPrice, conditions : string;
    dollarValue, percentageValue : double;
    updateFields : TDictionary<string,string>;
begin
    // TODO: May need to change this so its 2 different fields
    // when products are added or removed from the transaction, the dollar value wont match anymore
    // Discount as Dollar value OR percentage
    if not tilldm.qryTransactionStock.IsEmpty then
    if tilldm.qryTransactionStockReturned.AsString <> 'Y' then
    begin
        frmNumberInputDialog.dialogName := 'Enter discount (Dollar value)';
        frmNumberInputDialog.initialValue := FloatToStr(tilldm.qryTransactionsDiscountDollar.Value);
        //frmNumberInputDialog.initialValue := FloatToStr((tilldm.qryTransactionsDiscount.Value / 100) * tilldm.qryTransactionStockCalctotalAmountNoTransactionDiscount.AsCurrency);
        frmNumberInputDialog.integerOnly := false;
        frmNumberInputDialog.isCurrency := true;
        if frmNumberInputDialog.ShowModal = mrOk then
        begin
            dollarValue := frmNumberInputDialog.result;
            percentageValue := ((dollarValue / tilldm.qryTransactionStockCalctotalAmountNoTransactionDiscount.AsFloat) * 100);
            // percentageValue = (DiscountDollar / TotalAmount) * 100
            newPrice := FloatToStr(percentageValue);
            if (newPrice <> '') and (newPrice <> tilldm.qryTransactionsDiscount.AsString) then
            begin
                tilldm.qryTransactions.Edit;
                tilldm.qryTransactionsDiscount.AsString := newPrice;
                tilldm.qryTransactionsDiscountDollar.Value := dollarValue;
                tilldm.qryTransactions.Post;

                updateFields := TDictionary<string,string>.Create;
                updateFields.Add('TransactionDiscount',newPrice);
                conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                              ' AND Returned <> ' + QuotedStr('Y');
                updateTransactionStock(updateFields, conditions,0);
                updateFields.Clear;
                updateFields.Destroy;

                {SQL := 'UPDATE transaction_stock SET TransactionDiscount = ' + QuotedStr(newPrice) +
                       ' WHERE Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                       ' AND Returned <> ' + QuotedStr('Y');
                tilldm.conLocalSQL.Execute(SQL); }

                tilldm.qryTransactionStock.Close;
                tilldm.qryTransactionStock.Open;

                tilldm.qryPaymentsCalc.Close;
                tilldm.qryPaymentsCalc.Open;

                tilldm.qryTransactionStockCalc.Close;
                tilldm.qryTransactionStockCalc.Open;
            end;
        end;
        edtBarcode.SetFocus;
    end;
end;

procedure TfrmMain.btnDiscountPercentageClick(Sender: TObject);
var
    newPrice, SQL : string;
begin
    if not tilldm.qryTransactionStock.IsEmpty then
    if tilldm.qryTransactionStockReturned.AsString <> 'Y' then
    begin
        frmNumberInputDialog.dialogName := 'Enter discount (Percentage value)';
        frmNumberInputDialog.initialValue := tilldm.qryTransactionsDiscount.AsString;
        frmNumberInputDialog.integerOnly := false;
        frmNumberInputDialog.isPercentage := true;
        if frmNumberInputDialog.ShowModal = mrOk then
        begin
            newPrice := FloatToStr(frmNumberInputDialog.result);
            if (newPrice <> '') and (newPrice <> tilldm.qryTransactionsDiscount.AsString) then
            begin
                tilldm.qryTransactions.Edit;
                tilldm.qryTransactionsDiscount.AsString := newPrice;
                tilldm.qryTransactionsDiscountDollar.Value := 0;
                tilldm.qryTransactions.Post;

                SQL := 'UPDATE transaction_stock SET TransactionDiscount = ' + QuotedStr(newPrice) +
                       ' WHERE Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                       ' AND Returned <> ' + QuotedStr('Y');
                tilldm.conLocalSQL.Execute(SQL);

                tilldm.qryTransactionStock.Close;
                tilldm.qryTransactionStock.Open;

                tilldm.qryPaymentsCalc.Close;
                tilldm.qryPaymentsCalc.Open;

                tilldm.qryTransactionStockCalc.Close;
                tilldm.qryTransactionStockCalc.Open;

                tilldm.qryTotalDue.Close;
                tilldm.qryTotalDue.Open;
            end;
        end;
        edtBarcode.SetFocus;
    end;

end;


procedure TfrmMain.btnLastTransactionDownClick(Sender: TObject);
begin
    tilldm.qryLastTransactions.Next;
end;

procedure TfrmMain.btnLastTransactionUpClick(Sender: TObject);
begin
    tilldm.qryLastTransactions.Prior;
end;

procedure TfrmMain.btnLogoutClick(Sender: TObject);
begin
    logoutUser;
end;

procedure TfrmMain.btnFetchOnHoldClick(Sender: TObject);
var
    orderNo, SQL: string;
begin
refreshCurrentTransaction;
    frmSearchOnHoldDialog.PopupMode := pmExplicit;
frmSearchOnHoldDialog.PopupParent := self;


    if frmSearchOnHoldDialog.Showmodal = mrOk then
    begin

        orderNo := frmSearchOnHoldDialog.result;
        if orderNo <> '' then
        begin
            // Set the selected order to "not on hold"
         {   SQL := 'UPDATE transactions SET IsOnHold=''N'' WHERE id=' + orderNo;
            tilldm.conLocalSQL.Execute(SQL);    }



            tilldm.qryTransactions.Locate('id', orderNo, []);
            refreshCurrentTransaction;

        end;
    end;
    edtBarcode.SetFocus;

end;


procedure TfrmMain.btnHoldOrderClick(Sender: TObject);
var
    SQL : string;
begin
refreshCurrentTransaction;



    if (tilldm.qryTransactionStock.RecordCount <> 0) then
    begin

        btnNewTransactionClick(Sender);



    end
    else
    begin
        ShowDisplayDialog('Error', 'You cannot put an empty order on hold!', mbOkOnly, false, True);
    end;

end;
procedure TfrmMain.Replenish(replenishLocation : string; addedValue : integer);
var
    current_quantity, SQL, conditions : string;
    updateFields : TDictionary<string,string>;
    movetype : string[1];
    TransIDstr : string;
    qs : string;
begin
    tilldm.qryStockReplenish.Close;
    tilldm.qrystockreplenish.DataSource := tilldm.qryTransactionStock.DataSource;
    TransIDstr:=inttoStr(tilldm.qryTransactionStockTransaction_ID.Value);
  {  if (replenishLocation = 'STORE') or ((replenishLocation = 'SHOP') and (tilldm.qryTransactionStockBox.AsString = 'Y')) then
    qs := 'select * from stock_replenish where Supplier='+quotedstr(tilldm.qrytransactionstocksupplier.asstring)+' and Code='+quotedstr(tilldm.qrytransactionstockcode.asstring)+' and Location = '+quotedstr(replenishLocation) +' and Transaction_ID = '+quotedstr(TransIDstr)+' Order by Supplier, Code'
    ELSE}
    qs := 'select * from stock_replenish where Supplier='+quotedstr(tilldm.qrytransactionstocksupplier.asstring)+' and Code='+quotedstr(tilldm.qrytransactionstockcode.asstring)+' and  Location = '+quotedstr(replenishLocation) +' Order by Supplier, Code';
     tilldm.qrystockreplenish.sql.Clear;
    tilldm.qrystockreplenish.sql.Add(qs);

    current_location := replenishLocation;
    tilldm.qryStockReplenish.Open;

    if (tilldm.qryStockReplenishid.Value = 0) then
    begin
        if addedValue = 1 then
        begin
            tilldm.qryStockRepadd.SQL.Clear;

            current_quantity := IntToStr(tilldm.qryStockLookupQuantity.Value - addedValue);
         {      if (replenishLocation = 'STORE') or ((replenishLocation = 'SHOP') and (tilldm.qryTransactionStockBox.AsString = 'Y')) then
              movetype := 'M'
              else  }
              movetype := 'R';

            tilldm.qryStockRepadd.SQL.Text :=
            'insert into stock_replenish (Supplier, Code, Quantity_Required, Current_Quantity, Location, Request_type, Transaction_ID, Nickname) Values ' +
              ' (' +
              QuotedStr(tilldm.qryTransactionStockSupplier.AsString) + ',' + // Supplier
              QuotedStr(tilldm.qryTransactionStockCode.AsString) + ',' +     // Code
              QuotedStr('1') + ',' +                                         // Quantity_Required
              QuotedStr(current_quantity) + ',' +                            // Current_Quantity
              QuotedStr(replenishLocation) +                                 // Location
              ','+ QuotedStr(movetype)+
              ','+ QuotedStr(TransIDstr)+
              ','+ QuotedStr(tilldm.qrystaffNickName.asstring)+')';

            tilldm.qryStockRepadd.ExecSQL;
        end;
    end
    else
    begin
        tilldm.qryStockReplenish.Edit;
        if tilldm.qryStockReplenishQuantity_Required.Value + addedValue = 0 then
        begin
            SQL := 'DELETE FROM stock_replenish WHERE id='+ tilldm.qryStockReplenishid.AsString;
            tilldm.conLocalSQL.Execute(SQL);
            //tilldm.qryStockReplenish.Delete
        end
        else
        begin
            updateFields := TDictionary<string,string>.Create;
            updateFields.Add('Current_Quantity',IntToStr(tilldm.qryStockLookupQuantity.Value - addedValue));
            updateFields.Add('Quantity_Required',IntToStr(tilldm.qryStockReplenishQuantity_Required.Value + addedValue));
            conditions := 'id=' + QuotedStr(tilldm.qryStockReplenishid.AsString);
            updateReplenishStock(updateFields, conditions);
            updateFields.Clear;
             updateFields.Destroy;

            //tilldm.qryStockReplenishCurrent_Quantity.Value := tilldm.qryStockLookupQuantity.Value - addedValue;
            //tilldm.qryStockReplenishQuantity_Required.Value := tilldm.qryStockReplenishQuantity_Required.Value + addedValue;
            //tilldm.qryStockReplenish.Post;
        end;
    end;
    tilldm.qryStockReplenish.Close;
    tilldm.qryStockReplenish.Open;
end;

procedure TfrmMain.repTransactionBeforePrint(Sender: TfrxReportComponent);
begin
if tilldm.qryTransactionscustcode.AsString <> 'CASH' then
begin
if tilldm.qrycustCompany.AsString = '' then
TfrxMemoView(repTransaction.FindObject('custmemo')).Memo.Text := 'CUSTOMER: '+tilldm.qrycustfirstname.asstring+' '+tilldm.qrycustsurname.asstring
else
TfrxMemoView(repTransaction.FindObject('custmemo')).Memo.Text := 'CUSTOMER: '+tilldm.qrycustcompany.AsString;

if tilldm.qryTransactionsIsLayby.AsString = 'Y' then
begin
TfrxMemoView(repTransaction.FindObject('custmemo')).Memo.Text := 'LAY BY: '+tilldm.qrycustfirstname.asstring+' '+tilldm.qrycustsurname.asstring;
TfrxMemoView(repTransaction.FindObject('LayBy')).Memo.Text := 'Terms: minimum 10% deposit.'+#13+#10+'Balance in full by '
+datetostr(Incmonth(tilldm.qryTransactionsDateCreated.AsDateTime,3))+' (3 months)';

end
else

end;
end;

procedure TfrmMain.ResizeKit1ExitResize(Sender: TObject; XScale,
  YScale: Double);
begin
refreshmiscpanel;
end;

procedure TfrmMain.btnIncShedClick(Sender: TObject);
var
    updateFields : TDictionary<string,string>;
    conditions : string;
    newValue : string;
    addedValue : Integer;
begin
    grdTransactionProducts.SetActiveField('Location_SHED');
    if (tilldm.qryTransactionStockReturned.AsString <> 'Y') and (tilldm.qryTransactionStockIsDeleted.AsString <> 'Y') and (tilldm.qryTransactionStockIsGiftCard.AsString <> 'Y') then
    if (decreaseMode = true) or ((tilldm.qryTransactionStockLocation_STORE.Value + tilldm.qryTransactionStockLocation_SHED.Value + tilldm.qryTransactionStockLocation_SHOP.Value) < tilldm.qryTransactionStockQuantity.Value) then
    begin
        if decreaseMode = true then
            newValue := IntToStr(tilldm.qryTransactionStockLocation_SHED.Value-1)
        else
            newValue := IntToStr(tilldm.qryTransactionStockLocation_SHED.Value+1);

        if StrToInt(newValue) < 0 then exit; // Negative values are not allowed

        // Check if there exists stock for this product
        tilldm.qryStockLookup.Close;
        tilldm.qryStockLookup.SQL.Text := 'select *, sum(quantity) as totalqty from stock where code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString) +
          ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString) +
          ' and Location=' + QuotedStr('SHED') +
          ' and stock_status = "RE"'  +
          ' group by location';
        tilldm.qryStockLookup.Open;
        if tilldm.qryStockLookup.Locate('Location;Stock_Status', VarArrayOf(['SHED', 'RE']), [loCaseInsensitive]) or decreaseMode then
        begin
            if not decreaseMode then
            begin
                if tilldm.qryStockLookupQuantity.Value <= 0 then
                    Exit;
            end;
        end
        else
        begin
            Exit;
        end;

        updateFields := TDictionary<string,string>.Create;

        updateFields.Add('Location_SHED',newValue);

        if decreaseMode then
            addedValue := -1
        else
            addedValue := 1;
        Replenish('SHED', addedValue);
        if ((addedValue + tilldm.qryTransactionStockLocation_STORE.Value + tilldm.qryTransactionStockLocation_SHED.Value + tilldm.qryTransactionStockLocation_SHOP.Value) = tilldm.qryTransactionStockQuantity.Value) then
        begin
            updateFields.Add('IsStockChecked','Y');
        end
        else
        begin
            if (tilldm.qryTransactionStockMustCheckForStock.AsString = 'Y') then
                updateFields.Add('IsStockChecked','N')
            else
                updateFields.Add('IsStockChecked','Y');
        end;

        conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                      ' AND TransactionStockId = ' + QuotedStr(tilldm.qryTransactionStockTransactionStockId.AsString);

        updateTransactionStock(updateFields, conditions,0);

        updateFields.Clear;
        updateFields.Destroy;

        {// Now modify stock
        if tilldm.qryTransactionStockCalcStore.Locate('Location', 'SHED', [loCaseInsensitive]) then
        begin
            tilldm.qryTransactionStockCalcStore.Edit;
            tilldm.qryTransactionStockCalcStoreQuantity.Value := tilldm.qryTransactionStockCalcStoreQuantity.Value + (addedValue * -1);
            tilldm.qryTransactionStockCalcStore.Post;
        end; }

        // Now modify stock
        moveStock(addedValue, 'SHED');

        tilldm.qryTransactionStockDisplay.close;
        tilldm.qryTransactionStockDisplay.open;
        btnIncShed.Caption := tilldm.qryTransactionStockLocation_SHED.AsString;
        lblStock_SHED.Caption := tilldm.qryTransactionStockDisplayQuantity.AsString;
        decreaseMode := false;
        lblErrorMsg.Caption := '';
        lblErrorMsg.Visible := False;
    end;
end;
procedure TfrmMain.btnIncShopClick(Sender: TObject);
var
    updateFields : TDictionary<string,string>;
    conditions : string;
    newValue : string;
    addedValue : Integer;


begin
    grdTransactionProducts.SetActiveField('Location_SHOP');
    if (tilldm.qryTransactionStockReturned.AsString <> 'Y') and (tilldm.qryTransactionStockIsDeleted.AsString <> 'Y') and (tilldm.qryTransactionStockIsGiftCard.AsString <> 'Y') then
    if (decreaseMode = true) or ((tilldm.qryTransactionStockLocation_STORE.Value + tilldm.qryTransactionStockLocation_SHED.Value + tilldm.qryTransactionStockLocation_SHOP.Value) < tilldm.qryTransactionStockQuantity.Value) then
    begin
        if decreaseMode = true then
            newValue := IntToStr(tilldm.qryTransactionStockLocation_SHOP.Value-1)
        else
            newValue := IntToStr(tilldm.qryTransactionStockLocation_SHOP.Value+1);
        if StrToInt(newValue) < 0 then exit; // Negative values are not allowed

        // Check if there exists stock for this product
        tilldm.qryStockLookup.Close;
        tilldm.qryStockLookup.SQL.Text := 'select *, sum(quantity) as totalqty from stock where code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString) +
          ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString) +
          ' and Location=' + QuotedStr('SHOP') +
          ' and stock_status = "RE"'  +
          ' and (Transaction_ID is null or Transaction_ID = "") group by location';
        tilldm.qryStockLookup.Open;
        if tilldm.qryStockLookup.Locate('Location;Stock_Status', VarArrayOf(['SHOP', 'RE']), [loCaseInsensitive]) or decreaseMode then
        begin
            if not decreaseMode then
            begin
                if tilldm.qryStockLookupTotalqty.Value <= 0 then
                    Exit;
            end;
        end
        else
        begin
            Exit;
        end;

        updateFields := TDictionary<string,string>.Create;

        updateFields.Add('Location_SHOP',newValue);

        if decreaseMode then
            addedValue := -1
        else
            addedValue := 1;
        Replenish('SHOP', addedValue);

        if ((addedValue + tilldm.qryTransactionStockLocation_STORE.Value + tilldm.qryTransactionStockLocation_SHED.Value + tilldm.qryTransactionStockLocation_SHOP.Value) = tilldm.qryTransactionStockQuantity.Value) then
        begin
            updateFields.Add('IsStockChecked','Y');
        end
        else
        begin
            if (tilldm.qryTransactionStockMustCheckForStock.AsString = 'Y') then
                updateFields.Add('IsStockChecked','N')
            else
                updateFields.Add('IsStockChecked','Y');
        end;

        conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                      ' AND TransactionStockId = ' + QuotedStr(tilldm.qryTransactionStockTransactionStockId.AsString);

        updateTransactionStock(updateFields, conditions,0);


        updateFields.Clear;
        updateFields.Destroy;
        moveStock(addedValue, 'SHOP');

        tilldm.qryTransactionStockDisplay.close;
        tilldm.qryTransactionStockDisplay.open;
        btnIncShop.Caption := tilldm.qryTransactionStockLocation_SHOP.AsString;
        lblStock_SHOP.Caption := tilldm.qryTransactionStockDisplayQuantity.AsString;
        decreaseMode := false;
        lblErrorMsg.Caption := '';
        lblErrorMsg.Visible := False;
    end;
end;

procedure TfrmMain.btnIncStoreClick(Sender: TObject);
var
    updateFields : TDictionary<string,string>;
    conditions : string;
    newValue : string;
    addedValue : Integer;
begin
    grdTransactionProducts.SetActiveField('Location_STORE');
    if (tilldm.qryTransactionStockReturned.AsString <> 'Y') and (tilldm.qryTransactionStockIsDeleted.AsString <> 'Y') and (tilldm.qryTransactionStockIsGiftCard.AsString <> 'Y') then
    if (decreaseMode = true) or ((tilldm.qryTransactionStockLocation_STORE.Value + tilldm.qryTransactionStockLocation_SHED.Value + tilldm.qryTransactionStockLocation_SHOP.Value) < tilldm.qryTransactionStockQuantity.Value) then
    begin
        if decreaseMode = true then
            newValue := IntToStr(tilldm.qryTransactionStockLocation_STORE.Value-1)
        else
        begin
            newValue := IntToStr(tilldm.qryTransactionStockLocation_STORE.Value+1);
        end;
        if StrToInt(newValue) < 0 then
        begin
            //lblErrorMsg.Caption := 'Can''t go negative!';
            //lblErrorMsg.Visible := True;
            exit; // Negative values are not allowed
        end;

        // Check if there exists stock for this product
        tilldm.qryStockLookup.Close;
        tilldm.qryStockLookup.SQL.Text := 'select *, sum(quantity) as totalqty from stock where code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString) +
          ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString) +
          ' and Location=' + QuotedStr('STORE') +
          ' and stock_status = "RE"'  +
          '  group by location';
        tilldm.qryStockLookup.Open;
        if (tilldm.qryStockLookup.Locate('Location;Stock_Status', VarArrayOf(['STORE', 'RE']), [loCaseInsensitive])) or (decreasemode) then
        begin
            if not decreaseMode then
            begin
                if tilldm.qryStockLookupQuantity.Value <= 0 then
                begin
                    //lblErrorMsg.Caption := 'Not decrease mode, and stock qty <= 0';
                    //lblErrorMsg.Visible := True;
                    Exit;
                end;
            end;
        end
        else
        begin
            //lblErrorMsg.Caption := 'Can''t find stock!';
            //lblErrorMsg.Visible := True;
            Exit;
        end;


        updateFields := TDictionary<string,string>.Create;

        updateFields.Add('Location_STORE',newValue);

        if decreaseMode then
            addedValue := -1
        else
            addedValue := 1;
        Replenish('STORE', addedValue);

        if ((addedValue + tilldm.qryTransactionStockLocation_STORE.Value + tilldm.qryTransactionStockLocation_SHED.Value + tilldm.qryTransactionStockLocation_SHOP.Value) = tilldm.qryTransactionStockQuantity.Value) then
        begin
            updateFields.Add('IsStockChecked','Y');
        end
        else
        begin
            if (tilldm.qryTransactionStockMustCheckForStock.AsString = 'Y') then
                updateFields.Add('IsStockChecked','N')
            else
                updateFields.Add('IsStockChecked','Y');
        end;

        conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                      ' AND TransactionStockId = ' + QuotedStr(tilldm.qryTransactionStockTransactionStockId.AsString);

        updateTransactionStock(updateFields, conditions,0);

        updateFields.Clear;
        updateFields.Destroy;

        {// Now modify stock
        if tilldm.qryTransactionStockCalcStore.Locate('Location', 'STORE', [loCaseInsensitive]) then
        begin
            tilldm.qryTransactionStockCalcStore.Edit;
            tilldm.qryTransactionStockCalcStoreQuantity.Value := tilldm.qryTransactionStockCalcStoreQuantity.Value + (addedValue * -1);
            tilldm.qryTransactionStockCalcStore.Post;
        end; }

        // Now modify stock
        moveStock(addedValue, 'STORE');

        tilldm.qryTransactionStockDisplay.close;
        tilldm.qryTransactionStockDisplay.open;
        btnIncStore.Caption := tilldm.qryTransactionStockLocation_STORE.AsString;
        lblStock_STORE.Caption := tilldm.qryTransactionStockDisplayQuantity.AsString;
        decreaseMode := false;
        lblErrorMsg.Caption := '';
        lblErrorMsg.Visible := False;
    end;
end;

procedure TfrmMain.btnNewTransactionClick(Sender: TObject);
var
    SQL : string;
    //state : TDataSetState;
begin
    //tilldm.qryTransactionsOnHoldCount.Requery();

    btnIncShop.Visible := false;
    btnIncStore.Visible := false;
    btnIncShed.Visible := false;
    btnQuantityLabel.Visible := false;
    refreshCurrentTransaction;

   

        tilldm.qryTransactionsNoStock.Close;
        tilldm.qryTransactionsNoStock.Open;
        //state := tilldm.qryTransactionsNoStock.State;
        if tilldm.qryTransactionsNoStock.Locate('staffcode', mStaff, [loCaseInsensitive]) then
        begin
            tilldm.qryTransactions.Locate('id', tilldm.qryTransactionsNoStockid.Value, [loCaseInsensitive]);
            refreshCurrentTransaction;
        end
        else
        begin
            insertNewTransaction;
        end;

    edtBarcode.Clear;
    edtBarcode.SetFocus;
end;

procedure TfrmMain.btnOpenOrderClick(Sender: TObject);
var
    orderNo, SQL: string;
begin
    frmNumberInputDialog.dialogName := 'Enter order number';
    frmNumberInputDialog.initialValue := '';
    frmNumberInputDialog.integerOnly := true;
      tilldm.qryCheckedAllStock.Close;
    tilldm.qryCheckedAllStock.open;
    if frmNumberInputDialog.ShowModal = mrOk then
    begin
   refreshCurrentTransaction;

   

        orderNo := FloatToStr(frmNumberInputDialog.result);
        if orderNo <> '' then
        begin
            tilldm.qryTransactions.Locate('id', orderNo, []);
        end;
    end;
    refreshCurrentTransaction;
    edtBarcode.SetFocus;
end;

procedure TfrmMain.btnPayClick(Sender: TObject);
var
    conditions : string;
    updateFields : TDictionary<string,string>;
    resOverride : integer;
    sql : string;
begin
    //TODO: If a "transactionCompleted" bool is added, use that here instead.
    //if (mGrandTotal - tilldm.qryPaymentsCalctotal.AsFloat > 0) then
    begin
        tilldm.qryCheckedAllStock.Close;
        tilldm.qryCheckedAllStock.Open;
        resOverride := mrOk;
        if (tilldm.qryCheckedAllStock.Locate('IsStockChecked', 'N', [loCaseInsensitive])) then
        begin
        tilldm.qryTransactionStock.First;
        tilldm.qryTransactionStock.Locate('IsStockChecked', 'N',[loCaseInsensitive]);
            // They haven't checked all stock (Added up SHOP, STORE, SHED to Quantity)
            // So now, we mark all the unchecked stock to PENDING
            resOverride := ShowOverrideDialog('Stock has not been accounted for!');

            if resOverride = mrOk then
            begin
              {  updateFields := TDictionary<string,string>.Create;

                updateFields.Add('IsStockChecked','P');
                conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                              ' AND IsStockChecked=' + QuotedStr('N');

                updateTransactionStock(updateFields, conditions,0);

                updateFields.Clear;
                updateFields.Destroy; }
            end;
        end;
        if (resOverride = mrOk) and (frmPayment.ShowModal = mrOk)  then
        begin
            // Payment equal to or greater than total cost was made

            // TODO: There seems to be an error with this. Incorrect change is being printed.
            ShowDisplayDialog(
                'Cash Change:',
                FormatFloat('$###,###,##0.00', tilldm.qryPaymentsCalctotal.AsFloat - mTotalDue),
                mbOkOnly,
                true);
                tilldm.qryCheckedAllStock.First;
            if tilldm.qryPaymentsCalctotal.AsFloat - mTotalDue > 0 then
            frmPayment.addPayment('CHANGE', -1*(tilldm.qryPaymentsCalctotal.AsFloat - mTotalDue ), '');
            refreshCurrentTransaction;

            if ShowDisplayDialog('Receipt','Would you like to print a receipt?', mbYesNo) = mrOK then
            begin
                printReceipt();
                // TODO: New Transaction?
            end;

            if ShowDisplayDialog('Completed','New Transaction?', mbYesNo) = mrOK then
            begin
            btnNewTransactionClick(nil);

                // TODO: New Transaction?
            end;

            //ELSE: Do not print
        end
        else
        begin

        end;

        // ELSE: Form was closed before required amount was received



    end;
end;

procedure TfrmMain.btnQuantityLabelClick(Sender: TObject);
begin
    if decreaseMode then
    begin
        decreaseMode := false;
        lblErrorMsg.Caption := '';
        lblErrorMsg.Visible := False;
    end
    else
    begin
        if (tilldm.qryTransactionStockLocation_STORE.Value + tilldm.qryTransactionStockLocation_SHED.Value + tilldm.qryTransactionStockLocation_SHOP.Value) <> 0 then
        begin
            decreaseMode := True;
            lblErrorMsg.Caption := 'Decrease Mode: On';
            lblErrorMsg.Visible := True;
        end
        else
        begin
            decreaseMode := false;
            lblErrorMsg.Caption := '';
            lblErrorMsg.Visible := False;
        end;
    end;
    grdTransactionProducts.SetActiveField('Quantity');
end;

procedure TfrmMain.btnRefundOrderClick(Sender: TObject);
begin
    frmRefundDialog.ShowModal;
end;

procedure TfrmMain.btnReplenishClick(Sender: TObject);
begin
    {$IFDEF DEBUG}
    if DebugHook <> 0 then   // Check if debugged is attached
    begin
        APP_PATH := '..\..\..\stock mover\Win32\Debug\';
    end;
    {$ENDIF}

    if (APP_PATH <> '') and (FileExists(APP_PATH + '\StockMover.exe')) then
    begin
        ShellExecute(Handle, 'open', PWideChar(APP_PATH + '\StockMover.exe'), nil, nil, SW_NORMAL);
    end
    else
    begin
        ShowDisplayDialog('ERROR', 'StockMover.exe was not found! Please reinstall the program.', TDisplayDlgBtn.mbOkOnly, false, true);
    end;

    {$IFDEF DEBUG}
        APP_PATH := ExtractFilePath(Application.ExeName);
    {$ENDIF}

end;

procedure TfrmMain.btnReturnClick(Sender: TObject);
var
    updateFields : TDictionary<string,string>;
    conditions : string;
begin
    if not tilldm.qryTransactionStock.IsEmpty then
    begin
        if tilldm.qryTransactionStockIsDeleted.AsString <> 'Y' then
        if tilldm.qryTransactionStockReturned.AsString <> 'Y' then
        begin
            if frmReturnDialog.ShowModal = mrOk then
            begin
                // update thing here
                updateFields := TDictionary<string,string>.Create;

                updateFields.Add('Returned','Y');
                updateFields.Add('ReturnType',frmReturnDialog.returnType);
                updateFields.Add('ReturnReason',frmReturnDialog.returnReason);
                            conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                              ' AND TransactionStockId = ' + QuotedStr(tilldm.qryTransactionStockTransactionStockId.AsString);

                updateTransactionStock(updateFields, conditions,1);

                updateFields.Clear;
                updateFields.Destroy;
            end;
        end
        else if tilldm.qryTransactionStockReturned.AsString = 'Y' then
        begin
            // Allow them to edit the return reason
            frmReturnDialog.initialReturnReason := tilldm.qryTransactionStockReturnReason.AsString;
            frmReturnDialog.initialReturnType   := tilldm.qryTransactionStockReturnType.AsString;
            if frmReturnDialog.ShowModal = mrOk then
            begin
                // update thing here
                updateFields := TDictionary<string,string>.Create;

                updateFields.Add('Returned','Y');
                updateFields.Add('ReturnType',frmReturnDialog.returnType);
                updateFields.Add('ReturnReason',frmReturnDialog.returnReason);

                conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                              ' AND TransactionStockId = ' + QuotedStr(tilldm.qryTransactionStockTransactionStockId.AsString);

                updateTransactionStock(updateFields, conditions,1);

                updateFields.Clear;
                updateFields.Destroy;
            end;
        end;
    end;
end;

procedure TfrmMain.printReceipt();
var
  printer:TPrinter;
  index:Integer;
  printerName:String;
  qs : string;
begin
tilldm.qryTransactionprint.Close;
tilldm.qryTransactionprint.SQL.clear;


qs := 'select transaction_stock.*,  if(products.name<>"",products.name,b.title) as name'+
' from transaction_stock left join book b on transaction_stock.supplier = "B2BAV" and transaction_stock.code = b.book_code '+
'left join products on transaction_stock.supplier  = products.supplier and transaction_stock.code = products.code'+
' where transaction_stock.Transaction_ID = '+tilldm.qrytransactionsid.asstring+' and IsDeleted = "N"'
+' order by TransactionStockId';

tilldm.qryTransactionprint.SQL.Add(qs);

tilldm.qryTransactionprint.open;
    //TODO: Attempt to read the printer name from an .ini
    // or just make all our clients name their receipt printer as 'Receipt Printer'. Whatever works.
    printerName:='Receipt';

    // Search for the printerName in the list of device printers
    printer:=TPrinter.Create;
    index := printer.Printers.IndexOf(printerName);
     if index = -1 then
    begin
     printerName:='Receipt2';
      index := printer.Printers.IndexOf(printerName);

    end;
    if index = -1 then
    begin
      // If the device is NOT found
      repTransaction.PrintOptions.ShowDialog:=True;
      repTransaction.PrepareReport();
      repTransaction.Print();

      //TODO: Write whatever printer the user selected to the .ini


    end
    else
    begin
      // If the device IS found
      repTransaction.PrintOptions.Printer:=printerName;
      repTransaction.PrintOptions.ShowDialog:=False;
      repTransaction.PrepareReport();
      repTransaction.Print();
    end;

    //repTransaction.PrepareReport();
    //repTransaction.ShowReport();

     tilldm.qryTransactionPrint.close;
end;

procedure TfrmMain.tmrUpdateGUITimer(Sender: TObject);
begin

    frmMain.Caption := 'Cash Register '+ FormatDateTime('dd/mm/yyyy hh:mm AM/PM', Now);
    stafflabel.Caption := Copy(mStaff,1,4);
    taskcheck;
end;



procedure TfrmMain.btnSearchClick(Sender: TObject);
begin
    if frmSearchProductsDialog.ShowModal = mrOk then
    begin
        addToOrder(frmSearchProductsDialog.result, 1.0);
    end;
end;

procedure TfrmMain.btnSearchCustomerClick(Sender: TObject);
begin
    ShowKeyboardDialog('Test Dialog', 'initial text');
end;



procedure TfrmMain.btnSelectTransactionClick(Sender: TObject);
var
    orderNo, SQL : string;
begin
    orderNo := tilldm.qryLastTransactionsid.AsString;
      tilldm.qryCheckedAllStock.Close;
    tilldm.qryCheckedAllStock.open;

     refreshcurrenttransaction;
    if orderNo <> '' then
    begin



        tilldm.qryTransactions.Locate('id', orderNo, []);
    end;

    edtBarcode.SetFocus;
end;

procedure TfrmMain.btnSplitClick(Sender: TObject);
var
    oldQty, newQty : double;
    conditions : string;
    updateFields : TDictionary<string,string>;


    oldCode, oldSupplier : string;
    oldSalePrice : double;
    oldTransactionId : integer;
begin
    if not tilldm.qryTransactionStock.IsEmpty then
    if tilldm.qryTransactionStockIsDeleted.AsString <> 'Y' then
    if tilldm.qryTransactionStockReturned.AsString <> 'Y' then
    if tilldm.qryTransactionStockQuantity.Value > 1 then
    begin
        oldCode := tilldm.qryTransactionStockCode.AsString;
        oldSupplier := tilldm.qryTransactionStockSupplier.AsString;
        oldSalePrice := tilldm.qryTransactionStockSale_Price.Value;
        oldTransactionId := tilldm.qryTransactionStockTransaction_ID.Value;
        oldQty := tilldm.qryTransactionStockQuantity.Value;
        newQty := oldQty - 1;


        updateFields := TDictionary<string,string>.Create;

        updateFields.Add('Quantity',FloatToStr(newQty));
        conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                      ' AND TransactionStockId = ' + QuotedStr(tilldm.qryTransactionStockTransactionStockId.AsString);

        updateTransactionStock(updateFields, conditions,0);

        updateFields.Clear;
        updateFields.Destroy;

        // Duplicate
        tilldm.qryTransactionStock.Insert;
        tilldm.qryTransactionStockCode.AsString := oldCode;
        tilldm.qryTransactionStockSupplier.AsString := oldSupplier;
        tilldm.qryTransactionStockQuantity.Value := 1;
        tilldm.qryTransactionStockSale_Price.Value := oldSalePrice;
        tilldm.qryTransactionStockTransaction_ID.Value := oldTransactionId;
        tilldm.qryTransactionStock.Post;
        refreshTransactionStock;
    end;
end;



procedure TfrmMain.custbtnClick(Sender: TObject);
begin
   custform.Show;
end;

procedure TfrmMain.addToOrder(code: string; quantity: Double);
var
    searchField: string;
    searchValue,searchvalue2: string;
    searchSupplier : string;
    updateFields : TDictionary<string,string>;
    conditions : string;
    sc : string;
    productSelected : boolean;
    outValue : Int64;
    giftCardNumber, giftCardPin : string;
    x: integer;
    storecode : string;
    storename : string;
    storeretail : real;
    storesupplier : string;
    suppliercode : string;
    passcheck : Integer;
    sql : string;
    i : Integer;
    adoclose : TADOQuery;
    storeid : integer;
    begin
    lblErrorMsg.Visible := false;
    code := Trim(code);
    productSelected := false;
    if tilldm.qryTransactionStock.RecordCount = 17 then
    TillPage.TabIndex := TillPage.TabIndex + 1;
    TillPageChange(nil);

    if Pos('?P=', code) <> 0 then
    begin

    code := copy(code,4,length(code)-1);
      tilldm.qryStafflook.Close;
            tilldm.qryStafflook.Open;
      if   tilldm.qryStafflook.Locate('password', code, [loCaseInsensitive]) then
      begin
      if tilldm.qryStafflookuserid.asstring = tilldm.qryTransactionsstaffcode.asstring then
      begin
         btnLogoutClick(nil);

      end
      else
      begin
        frmLogin.pnlErrorMessage.Caption := '';
        frmLogin.pnlErrorMessage.Visible := false;
        SQL := 'UPDATE staff SET port="0", lastTransactionID="' + tilldm.qryTransactionsid.AsString + '"  WHERE id=' + tilldm.qryStaffId.AsString;
        tilldm.conLocalSQL.Execute(SQL);
        storeid :=  tilldm.qrystafflookid.value;
        for I := 0 to tilldm.ComponentCount-1 do
        if tilldm.Components[i] is TADOQuery then
        begin
        adoclose :=  TADOQuery(tilldm.Components[i]);
        if adoclose.Active then

        adoclose.Active := False;


        end;



        tilldm.qryStaff.open;
        tilldm.qrystaff.locate('Id', storeid, [loCaseInsensitive]);
         if tilldm.qryStaffport.AsString <> '0' then
            begin
                frmMain.sendRemoteLogout(tilldm.qryStaffport.AsString);
            end;
        frmMain.mStaff := tilldm.qryStaffuserId.AsString;
        prepareuser;
        edtBarcode.Clear;
          edtBarcode.PasswordChar := #0;
    end;



      end;
    end
    else

    if Pos('?G=', Code) <> 0 then
    begin
        // gift card!
        giftCardNumber := MidStr(Code, Pos('?G=', Code)+3, (LastDelimiter('/', Code)) - (Pos('?G=', Code)+3)  );
        giftCardPin := Copy(Code, LastDelimiter('/', Code)+1);

        tilldm.qryGiftCardsLookup.Close;
        tilldm.qryGiftCardsLookup.SQL.Text := 'select * from gift_cards where CardNumber=' + QuotedStr(giftCardNumber);
        tilldm.qryGiftCardsLookup.Open;

        if not tilldm.qryGiftCardsLookup.IsEmpty then
        begin
            if tilldm.qryGiftCardsLookupCardPin.AsString = giftCardPin then
            begin
                // add to transaction
                tilldm.qryTransactionStock.Insert;
                tilldm.qryTransactionStockCode.AsString := giftCardNumber;
                tilldm.qryTransactionStockSupplier.AsString := 'GIFTCARD';
                tilldm.qryTransactionStockQuantity.Value := 1;
                tilldm.qryTransactionStockDateEntered.Value := now;
                tilldm.qryTransactionStockSale_Price.Value := tilldm.qryGiftCardsLookupInitialBalance.Value;
                tilldm.qryTransactionStockTransaction_ID.Value := tilldm.qryTransactionsid.Value;
                // MISC and some other products don't need to be checked/accounted for
                tilldm.qryTransactionStockMustCheckForStock.AsString := 'N';
                tilldm.qryTransactionStockIsStockChecked.AsString := 'Y';
                tilldm.qryTransactionStockIsGiftCard.AsString := 'Y';
                tilldm.qryTransactionStock.Post;
                refreshTransactionStock;
            end
            else
            begin
                lblErrorMsg.Caption := 'Gift card PIN is incorrect!';
                lblErrorMsg.Visible := true;
            end;
        end
        else
        begin
            lblErrorMsg.Caption := 'Gift card not found!';
            lblErrorMsg.Visible := true;
        end;
        edtBarcode.Clear;
          edtBarcode.PasswordChar := #0;
    end
    else
    begin
       if Pos(' ',code) = 7  then
       if Pos('/',code) = 0 then
       code := '/RB'+copy(code,1,6);

        if Pos('/', code) > 0 then
        begin
            // if a "/" is found, we know it's a code
            searchValue := Copy(code, LastDelimiter('/', code) + 1);
            searchField := 'Code';
             supplierCode := Copy(code, 1,LastDelimiter('/', code) - 1);
            supplierCode := Copy(supplierCode, LastDelimiter('/', supplierCode) + 1);


            if (Pos('B2BAV',code) = 0) and (Pos('b2bav',code) = 0) then
            begin
            tilldm.qryProducts.Close;
            tilldm.qryProducts.SQL.Text := 'select * from products where supplier = ' + QuotedStr(suppliercode) +' and '+ searchField + ' = ' + QuotedStr(searchValue);
            tilldm.qryProducts.Open;
            tilldm.qryProducts.Last;
            tilldm.qryProducts.First;




            if tilldm.qryProducts.RecordCount > 1 then
            begin
                // Multiple products found with the code or barcode entered
                // Pop up window and prompt them to choose which product to add
                productSelected := (frmSelectProductDialog.ShowModal = mrOk);
            end
            else if tilldm.qryProducts.RecordCount = 1 then
            begin
                productSelected := true;
            end;
            end
            else
            begin



            end;
        end
        else
        begin
            // else, we have to figured out if it's a barcode or code
            // possible ways:
            // - contains letters -> code
            // - query barcode="input" or code="input" , then check resultset and match the barcode/code to the input
            searchField := 'Barcode';
                if copy(code,1,1) = '0' then
                begin
                    if Length(copy(code, 2, Length(code))) >= 2 then  // Searching 1 digit causes problems
                        searchValue := copy(code, 2, Length(code))
                    else
                        searchValue := '';
                end
                else
                    searchValue := code;


            tilldm.qryProducts.Close;
            tilldm.qryProducts.SQL.Text := 'select * from products where Barcode=' + QuotedStr(searchValue) +' or Barcode2=' + QuotedStr(searchValue) + ' or Code=' + QuotedStr(searchValue);
            tilldm.qryProducts.Open;
            tilldm.qryProducts.Last;
            tilldm.qryProducts.First;

            if tilldm.qryProducts.RecordCount > 1 then
            begin
                // Multiple products found with the code or barcode entered
                // Pop up window and prompt them to choose which product to add
                productSelected := (frmSelectProductDialog.ShowModal = mrOk);
            end
            else if tilldm.qryProducts.RecordCount = 1 then
            begin
                // Check which field matches the search value, code or barcode
                if tilldm.qryProductsCode.AsString = searchValue then
                begin
                    searchField := 'Code';
                    productSelected := true;
                end
                else if tilldm.qryProductsBarcode.AsString = searchValue then
                begin
                    searchField := 'Barcode';
                    productSelected := true;
                end

 		else if tilldm.qryProductsBarcode2.AsString = searchValue then
                begin
                    searchField := 'Barcode2';
                    productSelected := true;
                end
                else
                begin
                    productSelected := false;
                end;
            end
            else  if tilldm.qryProducts.RecordCount = 0 then
            begin



                // Means the product was not found.. so we've to guess if it's a barcode or code
                if TryStrToInt64(searchValue, outValue) then
                begin
                    searchField := 'Barcode';
                end
                else
                begin
                    searchField := 'Code';
                end;
                productSelected := false;

            end;
        end;

        // Eventually, we'll use the table "products_barcode" to search for barcodes/codes
        // this will be specially useful for products with multiple barcodes
        if pricecheckmode and productSelected then
        begin
          sc := 'select sum(if(s.location="SHOP",s.quantity,0)) as shop,sum(if(s.location="STORE",s.quantity,0)) as store, sum(if(s.location="SHED",s.quantity,0)) as shed FROM products '+
          ' p left join stock s on p.supplier = s.supplier and p.code = s.code and s.stock_status = "RE"'+
          ' where  p.supplier = '+quotedstr(tilldm.qryProductssupplier.Asstring)+' and p.code = '+quotedstr(tilldm.qryProductsCode.Asstring);
          tilldm.qrystockcheck.Close;
          tilldm.qrystockcheck.SQL.Clear;
          tilldm.qrystockcheck.SQL.Add(sc);
          tilldm.qrystockcheck.open;

          lblErrorMsg.Caption := tilldm.qryProductsCode.Asstring+' '+tilldm.qryProductsname.Asstring+#13+#10+'$'+tilldm.qryProductsRetail_Price.Asstring+
          ' SHOP:'+inttostr(tilldm.qrystockcheckshop.asinteger)+' STORE:'+inttostr(tilldm.qrystockcheckstore.asinteger)+' SHED:'+inttostr(tilldm.qrystockcheckshed.AsInteger);
          lblErrorMsg.Visible := true;
          pricecheck.caption := 'Price'+#13#10+'Check'+#13#10+'Off';
          pricecheckmode := False;
          tilldm.qrystockcheck.Close;
        end
        else
        begin

        if productSelected then
        begin
            if tilldm.qryTransactionStock.Locate('Code;Supplier;Returned;Discount;IsDeleted;Sale_price', VarArrayOf([tilldm.qryProductsCode.AsString, tilldm.qryProductsSupplier.AsString, 'N', 0.00, 'N',tilldm.qryProductsRetail_Price.value]), [loCaseInsensitive]) then


            begin
                // Product already exists in transaction,
                // so we just increment the quantity
                updateFields := TDictionary<string,string>.Create;

                updateFields.Add('Quantity',FloatToStr(tilldm.qryTransactionStockQuantity.Value + quantity));
                conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                              ' AND TransactionStockId = ' + QuotedStr(tilldm.qryTransactionStockTransactionStockId.AsString);

                updateTransactionStock(updateFields, conditions,0);

                updateFields.Clear;
                updateFields.Destroy;
            end
            else
            begin
                // add to transaction
                tilldm.qryTransactionStock.Insert;
                tilldm.qryTransactionStockCode.AsString := tilldm.qryProductsCode.AsString;
                tilldm.qryTransactionStockSupplier.AsString := tilldm.qryProductsSupplier.AsString;
                tilldm.qryTransactionStockQuantity.Value := quantity;
                tilldm.qryTransactionStockSale_Price.Value := tilldm.qryProductsRetail_Price.Value;
                tilldm.qryTransactionStockTransaction_ID.Value := tilldm.qryTransactionsid.Value;
                tilldm.qryTransactionStockBox.asstring := tilldm.qryProductsbox.asstring;
                tilldm.qryTransactionStockDateEntered.Value := now;
                // MISC and some other products don't need to be checked/accounted for
                tilldm.qryTransactionStockMustCheckForStock.AsString := tilldm.qryProductsMustCheckForStock.AsString;
                if tilldm.qryProductsMustCheckForStock.AsString = 'N' then
                    tilldm.qryTransactionStockIsStockChecked.AsString := 'Y'
                else
                    tilldm.qryTransactionStockIsStockChecked.AsString := 'N';
                tilldm.qryTransactionStock.Post;
                   if tilldm.qryTransactionStockretail_price.value = 0 then
                   btnChangePriceClick(nil);
                   refreshTransactionStock;
            end;
        end
        else

        begin
            // barcode not found, derp!
            // Ask if user wants to enter it in the system
            //but first check if it is a book
             if (Pos('B2BAV',code) <> 0)  or (Pos('b2bav',code) <> 0) then
             begin
                        code := ReplaceStr(code,'http://www.b2bp.com.au/b2bav/','');
                        code := ReplaceStr(code,'HTTP://WWW.B2BP.COM.AU/B2BAV/','');

            code := replacestr(code,'/B2BAV/','');
            tilldm.qrybookmusic.Close;
            tilldm.qrybookmusic.SQL.Text := 'select * from book where book_code = '+QuotedStr(code);
            tilldm.qrybookmusic.Open;
            tilldm.qrybookmusic.First;
            end
            else
            begin
             tilldm.qrybookmusic.Close;
            tilldm.qrybookmusic.SQL.Text := 'select * from book where barcode = '+QuotedStr(searchvalue);
            tilldm.qrybookmusic.Open;
            tilldm.qrybookmusic.First;
            end;

            if tilldm.qrybookmusic.RecordCount > 0 then
            begin
            if pricecheckmode  then
        begin
         sc := 'select sum(if(s.location="SHOP",s.quantity,0)) as shop,sum(if(s.location="STORE",s.quantity,0)) as store, sum(if(s.location="SHED",s.quantity,0)) as shed FROM book '+
          ' b left join stock s on s.supplier = "B2BAV" and s.code = B.book_code and s.stock_status = "RE"'+
          ' where  b.book_code = '+quotedstr(tilldm.qrybookmusic.FieldByName('Book_code').Asstring);
          tilldm.qrystockcheck.Close;
          tilldm.qrystockcheck.SQL.Clear;
          tilldm.qrystockcheck.SQL.Add(sc);
          tilldm.qrystockcheck.open;
          if tilldm.qrybookmusic.FieldByName('Saleprice').AsString <> '' then

          lblErrorMsg.Caption := Copy(tilldm.qrybookmusic.fieldbyname('title').Asstring,1,30)+#13+#10+'$'+tilldm.qrybookmusic.fieldbyname('Price').Asstring+'Was $'+tilldm.qrybookmusic.fieldbyname('Saleprice').Asstring+
          ' SHOP:'+inttostr(tilldm.qrystockcheckshop.asinteger)+' STORE:'+inttostr(tilldm.qrystockcheckstore.asinteger)+' SHED:'+inttostr(tilldm.qrystockcheckshed.AsInteger)

          else
          lblErrorMsg.Caption := Copy(tilldm.qrybookmusic.fieldbyname('title').Asstring,1,30)+#13+#10+'$'+tilldm.qrybookmusic.fieldbyname('Price').Asstring+
          ' SHOP:'+inttostr(tilldm.qrystockcheckshop.asinteger)+' STORE:'+inttostr(tilldm.qrystockcheckstore.asinteger)+' SHED:'+inttostr(tilldm.qrystockcheckshed.AsInteger);
          lblErrorMsg.Visible := true;
          pricecheck.caption := 'Price'+#13#10+'Check'+#13#10+'Off';
          pricecheckmode := False;
        end
        else
        begin
              tilldm.qryTransactionStock.Insert;
                        tilldm.qryTransactionStockCode.AsString := tilldm.qrybookmusic.FieldByName('Book_code').AsString;
                        tilldm.qryTransactionStockSupplier.AsString := 'B2BAV';
                        tilldm.qryTransactionStockQuantity.Value := quantity;
                        tilldm.qryTransactionStockDateEntered.Value := now;
                        tilldm.qryTransactionStockSale_Price.Value := tilldm.qryBOOKMUSIC.FieldByName('Price').Value;
                        tilldm.qryTransactionStockTransaction_ID.Value := tilldm.qryTransactionsid.Value;
                        tilldm.qryTransactionStock.Post;
             end;


            end
            else
            if (ShowDisplayDialog('Product not found!', 'Would you like to add it to the system?', mbOkCancel, false, True)) = mrOk then
            begin

		 x:=1;


                if searchField = 'Code' then
                    frmAddProductDialog.code := searchValue
                else
                    frmAddProductDialog.barcode := searchValue;

                frmAddProductDialog.searchField := searchField;

                if frmAddProductDialog.ShowModal = mrOk then
                begin
                    // User has successfully added a new item
                    searchSupplier := frmAddProductDialog.searchSupplier;

                    tilldm.qryProducts.Close;
                    tilldm.qryProducts.SQL.Text := 'select * from products where ' + searchField + ' = ' + QuotedStr(searchValue) + ' and Supplier=' + QuotedStr(searchSupplier);
                    tilldm.qryProducts.Open;

                    if tilldm.qryTransactionStock.Locate('Code;Supplier;Returned;Discount', VarArrayOf([tilldm.qryProductsCode.AsString, tilldm.qryProductsSupplier.AsString, 'N', 0.00]), [loCaseInsensitive]) then
                    begin
                        // Pretty sure that this should never happen...
                        // but who knows!

                        // Product already exists in transaction,
                        // so we just increment the quantity
                        updateFields := TDictionary<string,string>.Create;

                        updateFields.Add('Quantity',FloatToStr(tilldm.qryTransactionStockQuantity.Value + quantity));
                        conditions := 'Transaction_ID=' + QuotedStr(tilldm.qryTransactionsid.AsString) +
                                      ' AND TransactionStockId = ' + QuotedStr(tilldm.qryTransactionStockTransactionStockId.AsString);

                        updateTransactionStock(updateFields, conditions,0);

                        updateFields.Clear;
                        updateFields.Destroy;

                    end
                    else
                    begin
                        // add to transaction
                        tilldm.qryTransactionStock.Insert;
                        tilldm.qryTransactionStockCode.AsString := tilldm.qryProductsCode.AsString;
                        tilldm.qryTransactionStockSupplier.AsString := tilldm.qryProductsSupplier.AsString;
                        tilldm.qryTransactionStockQuantity.Value := quantity;
                        tilldm.qryTransactionStockDateEntered.Value := now;
                        tilldm.qryTransactionStockSale_Price.Value := tilldm.qryProductsRetail_Price.Value;
                        tilldm.qryTransactionStockTransaction_ID.Value := tilldm.qryTransactionsid.Value;
                        tilldm.qryTransactionStock.Post;
                    end;
                end
                else
                begin
                    // User pressed cancel, or closed the window
                    // User did not add the new item to the system
                    // what now?
                    lblErrorMsg.Caption := 'Product not found!';
                    lblErrorMsg.Visible := true;
                end;
                 Beep;
            end;

        end;
    end;
    end;


end;

procedure TfrmMain.startListeningServer;
begin
  Randomize;
  TcpServer1.Close;
  TcpServer1.LocalHost := '127.0.0.1';
  TcpServer1.LocalPort := AnsiString(IntToStr(1337 + Random(16535) * 2));
  TcpServer1.Open;
  // save port to db
end;


procedure TfrmMain.sendRemoteLogout(port : string);
begin
  TcpClient1.Close;
  TcpClient1.RemotePort := AnsiString(port);
  TcpClient1.RemoteHost := '127.0.0.1';
  TcpClient1.Connect;
end;



procedure TfrmMain.SpeedButton1Click(Sender: TObject);
var
  hPrinter, hDeviceMode: THandle;
  N: DWORD;
  DocInfo1: TDocInfo1;
  Device, Driver, Port: array [0 .. 255] of Char;
  PrinterName, ThePrinter: string;
  Code: AnsiString;
begin
  ThePrinter := 'Receipt';
  Code := AnsiChar(27) + AnsiChar(112) + AnsiChar(0) + AnsiChar(64) + AnsiChar(240);
  Printer.PrinterIndex := Printer.Printers.IndexOf(ThePrinter);
  Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
  PrinterName := Format('%s', [Device]);
  if not WinSpool.OpenPrinter(PChar(PrinterName), hPrinter, nil) then
  begin
    ShowMessage('Error : ' + IntToStr(GetLastError));
    Exit;
  end;
  with DocInfo1 do
  begin
    pDocName := 'Test';
    pOutputFile := nil;
    pDataType := 'RAW';
  end;
  WinSpool.StartDocPrinter(hPrinter, 1, @DocInfo1);
  WinSpool.StartPagePrinter(hPrinter);
  WinSpool.WritePrinter(hPrinter, PAnsiChar(Code), Length(Code), N);
  WinSpool.EndPagePrinter(hPrinter);
  WinSpool.EndDocPrinter(hPrinter);
  WinSpool.ClosePrinter(hPrinter);

end;
procedure TfrmMain.PrevTransClick(Sender: TObject);
var
    orderNo, SQL: string;
begin
      refreshCurrentTransaction;




            tilldm.qryTransactions.prior;
            refreshCurrentTransaction;
    edtBarcode.SetFocus;
end;


procedure TfrmMain.PriceCheckClick(Sender: TObject);
begin
if PriceCheck.caption = 'Price'+#13#10+'Check'+#13#10+'Off' then
begin
pricecheck.caption := 'Price'+#13#10+'Check'+#13#10+'On';
pricecheckmode := True;
end
else
begin
pricecheck.caption := 'Price'+#13#10+'Check'+#13#10+'Off';
pricecheckmode := False;

end;
end;

procedure TfrmMain.ReceiptClick(Sender: TObject);
begin
printReceipt();
end;

procedure TfrmMain.moveStock(addedValue: Integer; location : string);
var
  SQL: string;
  mstatus : string;
begin
{
 if location = 'STORE' then
            mstatus := 'RM'
            else
 if (location = 'SHOP') and (tilldm.qryTransactionStockBox.AsString = 'Y') then
            mstatus := 'RB'
            ELSE    }

            mstatus := 'DI';
  // Now modify stock
    tilldm.qryTransactionStockCalcStore.Close;
    tilldm.qryTransactionStockCalcStore.Open;
    if (tilldm.qryTransactionStockCalcStore.Locate('Location;Transaction_ID;Stock_Status',
      VarArrayOf([location, tilldm.qryTransactionsid.Value, mstatus]), [loCaseInsensitive]))

       then
    begin
        tilldm.qryStockLookup.Close;
        tilldm.qryStockLookup.SQL.Text := 'select *, sum(quantity) as totalqty from stock where code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString) +
          ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString) +
          ' and Location=' + QuotedStr(location) +
          ' and Stock_status = "RE"' +

          IIF(addedValue <> -1,' and Quantity <> ' + QuotedStr('0'), '') +
          '  group by Location';
        tilldm.qryStockLookup.Open;

        if (tilldm.qryStockLookup.Locate('Location;Stock_Status', VarArrayOf([location, 'RE']), [loCaseInsensitive])) then
        begin
        if (tilldm.qryStockLookupTotalQty.Value > 0) or ((tilldm.qryStockLookupTotalQty.Value <= 0) and (addedValue = -1)) then
        begin
            if (tilldm.qryStockLookupTotalQty.Value <= 0) then
               SQL := 'UPDATE stock SET Quantity=(' + IntToStr(1) +
                  ') WHERE code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString) +
                  ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString) +
                  ' and Location=' + QuotedStr(location) +
                  ' and Stock_Status="RE"' + '  limit 1'
            else
            {try this}
            if tilldm.qryStockLookupQuantity.Value + (addedValue * -1) >= 1 then
            SQL := 'UPDATE stock SET Quantity=(' + IntToStr(tilldm.qryStockLookupQuantity.Value + (addedValue * -1)) +
                  ') WHERE code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString) +
                  ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString) +
                  ' and Location=' + QuotedStr(location) +
                  ' and Stock_Status="RE"' + '  limit 1'
                 else
              SQL :=   'delete from stock WHERE code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString) +
                  ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString) +
                  ' and Location=' + QuotedStr(location) +
                  ' and Stock_Status="RE"' + ' and Quantity = 1   limit 1';
                tilldm.conLocalSQL.Execute(SQL);
                tilldm.qryStockLookup.Close;
                tilldm.qryStockLookup.Open;

        {    if mstatus = 'RB' then

            SQL := 'UPDATE stock SET Quantity=(' + IntToStr(tilldm.qryTransactionStockCalcStoreQuantity.Value + addedValue) +
              ') WHERE code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString)
              + ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString)
              + ' and Location=' + QuotedStr('STORE') +
              ' and Stock_Status='+quotedstr(mstatus)
               + ' and Transaction_ID = ' + QuotedStr(tilldm.qryTransactionsid.AsString)
               else  }
               SQL := 'UPDATE stock SET Quantity=(' + IntToStr(tilldm.qryTransactionStockCalcStoreQuantity.Value + addedValue) +
              ') WHERE code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString)
              + ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString)
              + ' and Location=' + QuotedStr(location) +
              ' and Stock_Status='+quotedstr(mstatus)
               + ' and Transaction_ID = ' + QuotedStr(tilldm.qryTransactionsid.AsString);

            tilldm.conLocalSQL.Execute(SQL);
            tilldm.qryTransactionStockCalcStore.Close;
            tilldm.qryTransactionStockCalcStore.Open;
        end;
        end
        else
        if DECREASEMODE then
    BEGIN

                 sql := 'UPDATE stock SET Quantity=(' + IntToStr(1) +
                  '), Transaction_id = null, stock_status = "RE" WHERE code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString) +
                  ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString) +
                  ' and Location=' + QuotedStr(location) +
                  ' and Stock_Status="DI"' + '  limit 1';

                tilldm.conLocalSQL.Execute(SQL);

    END;

    end
    else
    begin
        // Split/Duplicate
        tilldm.qryStockLookup.Close;
        tilldm.qryStockLookup.SQL.Text := 'select *, sum(quantity) as totalqty from stock where code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString) +
          ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString) +
           ' and Stock_status = "RE"' +
          ' and Location=' + QuotedStr(location);

        tilldm.qryStockLookup.Open;
        // See if we can find a stock at the SHOP, not assigned to a transaction, that has been received
        if addedValue = 1 then
            if tilldm.qryStockLookup.Locate('Location;Stock_Status', VarArrayOf([location, 'RE']), [loCaseInsensitive]) then
            if (tilldm.qryStockLookupTotalQty.Value > 0) then
            begin
                tilldm.qryTransactionStockCalcStore.Insert;
                tilldm.qryTransactionStockCalcStoreCode.AsString := tilldm.qryStockLookupCode.AsString;
                tilldm.qryTransactionStockCalcStoreSupplier.AsString := tilldm.qryStockLookupSupplier.AsString;
                tilldm.qryTransactionStockCalcStoreCost_Price.Value := tilldm.qryStockLookupCost_Price.Value;
                tilldm.qryTransactionStockCalcStoreSale_Price.Value := tilldm.qryTransactionStockPrice.Value;
                if tilldm.qryStockLookupDate_Ordered.AsFloat <> 0 then
                    tilldm.qryTransactionStockCalcStoreDate_Ordered.Value := tilldm.qryStockLookupDate_Ordered.Value;
                if tilldm.qryStockLookupDate_Received.AsFloat <> 0 then
                    tilldm.qryTransactionStockCalcStoreDate_Received.Value := tilldm.qryStockLookupDate_Received.Value;
                tilldm.qryTransactionStockCalcStoreDate_Sold.Value := Now;
                tilldm.qryTransactionStockCalcStoreQuantity.Value := 1;
                tilldm.qryTransactionStockCalcStoreOrder_Number.Value := tilldm.qryStockLookupOrder_Number.Value;
                tilldm.qryTransactionStockCalcStoreInvoice_Number.Value := tilldm.qryStockLookupInvoice_Number.Value;
                tilldm.qryTransactionStockCalcStoreTransaction_ID.Value := tilldm.qryTransactionsid.Value;
            {  if mstatus = 'RB' then
                tilldm.qryTransactionStockCalcStoreLocation.Value := 'STORE'
                ELSE     }

                tilldm.qryTransactionStockCalcStoreLocation.Value := tilldm.qryStockLookupLocation.Value;

                tilldm.qryTransactionStockCalcStoreStock_Type.Value := tilldm.qryStockLookupStock_Type.Value;
                tilldm.qryTransactionStockCalcStoreStock_Status.Value := mstatus; // Dispatched
                tilldm.qryTransactionStockCalcStore.Post;
                tilldm.qryTransactionStockCalcStore.Close;
                tilldm.qryTransactionStockCalcStore.Open;
              {  if mstatus = 'RB' then
                SQL := 'UPDATE stock SET Quantity=(' + IntToStr(tilldm.qryStockLookupQuantity.Value + (addedValue * -1)) +
                  ') WHERE code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString)
                  + ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString)
                  + ' and Location=' + QuotedStr('STORE') +
                  ' and Stock_Status='+quotedstr('RE') + ' and (Transaction_ID is null or Transaction_ID = "") limit 1'
                  else      }
                  if tilldm.qryStockLookupQuantity.Value + (addedValue * -1) <> 0 then

                 SQL := 'UPDATE stock SET Quantity=(' + IntToStr(tilldm.qryStockLookupQuantity.Value + (addedValue * -1)) +
                  ') WHERE code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString)
                  + ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString)
                  + ' and Location=' + QuotedStr(location) +
                  ' and Stock_Status='+quotedstr('RE') + '  limit 1'
                  else
                 SQL := 'delete from stock '+
                  ' WHERE code=' + QuotedStr(tilldm.qryTransactionStockCode.AsString)
                  + ' and supplier=' + QuotedStr(tilldm.qryTransactionStockSupplier.AsString)
                  + ' and Location=' + QuotedStr(location) +
                  ' and Stock_Status='+quotedstr('RE') + '  limit 1';

                tilldm.conLocalSQL.Execute(SQL);
                tilldm.qryStockLookup.Close;
               { tilldm.qryStockLookup.Open;  }
            end;
    end;




end;

procedure TfrmMain.nextransClick(Sender: TObject);
var
    orderNo, SQL: string;
begin
  refreshCurrentTransaction;
    


            tilldm.qryTransactions.next;
           refreshCurrentTransaction;
    edtBarcode.SetFocus;
end;

procedure TfrmMain.insertNewTransaction;
begin
  tilldm.qryTransactions.Insert;
  tilldm.qryTransactionsDatecreated.Value := now;
  tilldm.qryTransactionsstaffcode.AsString := mStaff;
  tilldm.qryTransactionscustcode.AsString := 'CASH';
  tilldm.qryTransactions.Post;
  refreshCurrentTransaction;
end;

procedure TfrmMain.LaybybtnClick(Sender: TObject);
begin
if tilldm.qryTransactionscustcode.AsString = 'CUST' then
begin
   custform.Show;
   if tilldm.qryTransactionscustcode.AsString = 'CUST' then
   begin
      tilldm.qryTransactions.Edit;
   tilldm.qryTransactionsIsLayby.AsString := 'Y';
   tilldm.qryTransactions.Post;
   refreshCurrentTransaction;
   end;

end
ELSE
begin
   tilldm.qryTransactions.Edit;
   tilldm.qryTransactionsIsLayby.AsString := 'Y';
   tilldm.qryTransactions.Post;
   refreshCurrentTransaction;
end;
end;

procedure TfrmMain.logoutUser(forcedToLogout : boolean; userName : string);
var
  SQL : string;
  adoclose : TADOQuery;
  i : Integer;
begin
    //TODO: login and logout times

    if forcedToLogout then
    begin
        frmLogin.pnlErrorMessage.Caption := 'Logged out from ' + UpperCase(userName) + ' at ' + FormatDateTime('dd/mm/yyyy hh:mm AMPM', Now);
        frmLogin.pnlErrorMessage.Visible := true;
    end
    else
    begin
        frmLogin.pnlErrorMessage.Caption := '';
        frmLogin.pnlErrorMessage.Visible := false;
        //id := tilldm.qryStaffid.Value;
        SQL := 'UPDATE staff SET port="0", lastTransactionID="' + tilldm.qryTransactionsid.AsString + '"  WHERE id=' + tilldm.qryStaffId.AsString;
        tilldm.conLocalSQL.Execute(SQL);
        //tilldm.qryStaff.Edit;
        //tilldm.qryStaffport.AsString := '0';
        //tilldm.qryStaff.Post;
    end;
    frmMain.Hide;

  for I := 0 to tilldm.ComponentCount-1 do
        if tilldm.Components[i] is TADOQuery then
        begin
        adoclose :=  TADOQuery(tilldm.Components[i]);
        if adoclose.Active then

        adoclose.Active := False;


        end;


    tilldm.qryStaff.Open;
    frmLogin.Show;
end;


procedure TfrmMain.edtBarcodeEnter(Sender: TObject);
begin
    edtBarcode.Clear;
end;

procedure TfrmMain.edtBarcodeKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) and (edtBarcode.Text <> '') then
    begin

        addToOrder(edtBarcode.Text, StrToFloat(edtQuantity.Text));

        edtBarcode.Text := '';
        edtQuantity.Text := '1';
    end;
    if key = '?' then
    begin
      edtBarcode.PasswordChar := #35;

     end;

 end;

procedure TfrmMain.edtCustomerSearchDblClick(Sender: TObject);
begin
    edtCustomerSearch.Text := ShowKeyboardDialog('Enter customer code');
end;

procedure TfrmMain.edtQuantityEnter(Sender: TObject);
begin
    frmNumberInputDialog.dialogName := 'Enter quantity';
    frmNumberInputDialog.initialValue := '';
    frmNumberInputDialog.integerOnly := false;
    if frmNumberInputDialog.ShowModal = mrOk then
    begin
        if frmNumberInputDialog.result <> 0 then
            edtQuantity.Text := FloatToStr(frmNumberInputDialog.result);
    end;
    edtBarcode.SetFocus;
end;



procedure TfrmMain.ProdImageCalcPictureType(ImageControl: TfcDBImager;
  var PictureType: TfcImagerPictureType; var GraphicClassName: string);
begin
  if GetClass('TJPEGImage') = nil then
        RegisterClass(tjpegimage);


end;



procedure TfrmMain.prepareuser;
var qs : string;
begin


    tmrUpdateGUITimer(nil);
     tilldm.qryTransactions.Open;
 tilldm.qryTransactionsNoStock.Close;
        tilldm.qryTransactionsNoStock.Open;
        //state := tilldm.qryTransactionsNoStock.State;
        if tilldm.qryTransactionsNoStock.Locate('staffcode', mStaff, [loCaseInsensitive]) then
        begin
            tilldm.qryTransactions.Locate('id', tilldm.qryTransactionsNoStockid.Value, [loCaseInsensitive]);
            refreshCurrentTransaction;
        end
        else
        begin
            insertNewTransaction;
        end;
   { if (datetostr(TILLDm.qryTransactionsDateCreated.AsDateTime) <> datetostr(now)) then
    insertNewTransaction
    else
    if mStaff <> TILLDm.qryTransactionsstaffcode.asstring then
    insertNewTransaction;
     end; }



end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var SQL : string;
begin
  tilldm.qryCheckedAllStock.Close;
    tilldm.qryCheckedAllStock.open;
    tilldm.qryTransactionStock.Last;
    tilldm.qryTransactionStock.First;
    tilldm.qryCheckedAllStock.Close;
    tilldm.qryCheckedAllStock.open;
     refreshCurrentTransaction;

    SQL := 'UPDATE staff SET port=''0'' WHERE id=' + tilldm.qryStaffId.AsString;
    tilldm.conLocalSQL.Execute(SQL);
    TcpServer1.Close;
    TcpClient1.Close;
    Application.Terminate;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    APP_PATH := ExtractFilePath(Application.ExeName);

    firstRun := true;
    il1.GetBitmap(0, btnSearch.Glyph);
    il1.GetBitmap(11, btnSearchCustomer.Glyph);
    il1.GetBitmap(12, btnSearchCustomer.Glyph);
    il1.GetBitmap(1, btnDelete.Glyph);
    il1.GetBitmap(5, btnDiscount.Glyph);
    il1.GetBitmap(7, btnChangePrice.Glyph);
    il1.GetBitmap(8, btnChangeQty.Glyph);
     pricecheckmode := False;



    startListeningServer;



end;

procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    case Key of
        VK_UP:
            begin
                tilldm.qryTransactionStock.Prior;
                Key := 0;
            end;
        VK_DOWN:
            begin
                tilldm.qryTransactionStock.Next;
                Key := 0;
            end;
    else
        begin
            edtBarcode.SetFocus;

        end;
    end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
   { if (firstRun) then
    begin
        // First run stuff here
        tilldm.qryTransactionStock.Open;
        tilldm.qryTransactions.Open;
        tilldm.qryTotalDueOnHold.Open;
        tilldm.qryTransactionsOnHold.Open;
        tilldm.qryTransactionStockCalc.Open;
        tilldm.qryPayments.Open;
        tilldm.qryPaymentsCalc.Open;
        tilldm.qryTotalDue.Open;
        tilldm.qryDistributors.Open;
        tilldm.qryLastTransactions.Open;

        if tilldm.qryStafflastTransactionID.AsString <> '' then
        begin
            tilldm.qryTransactions.Locate('id', tilldm.qryStafflastTransactionID.AsString, []);
            if tilldm.qryTransactionStock.RecordCount = 0 then
            begin
            tilldm.qryTransactions.Edit;
            tilldm.qryTransactionsDateCreated.AsDateTime := now;
            end;
        end
        else
        begin
            btnNewTransactionClick(Sender);
        end;
    end;  }

end;

procedure TfrmMain.grdTransactionProductsCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
  AFont: TFont; ABrush: TBrush);
begin
    if tilldm.qryTransactionStockReturned.AsString = 'Y' then
    begin
        afont.Color := clBlack;
        if gdSelected in State then
            ABrush.Color := 9948159
        else
            ABrush.Color := 13822207;
    end
    else if tilldm.qryTransactionStockIsDeleted.AsString = 'Y' then
    begin
        afont.Color := clBlack;
        if gdSelected in State then
            ABrush.Color := $9999FF
        else
            ABrush.Color := $ccccFF;
    end
    else
    begin

    end;
end;

procedure TfrmMain.grdTransactionProductsDrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
Var DataRect : TRect ;
    grid : TwwDBGrid;
    fontColor : integer;
    stockQty : string;
    //bgColor : Integer;
begin
    grid := TwwDBGrid(grdTransactionProducts);

    if (tilldm.qryTransactionStockReturned.AsString = 'Y') then
    begin
        fontColor := clBlack;
        //bgColor := 9948159;
    end
    else if (tilldm.qryTransactionStockIsDeleted.AsString = 'Y') then
    begin
        fontColor := clBlack;
        //bgColor := $9999FF;
    end
    else
    begin
        fontColor := clWhite;
    end;


    if grid.row = tilldm.qryTransactionStock.RecNo then
    begin
        if Field.FieldName = 'Location_SHOP' then
        begin
            //DrawAntialisedLine(grdTransactionProducts.Canvas, Rect.Left + Rect.Width, Rect.Top, Rect.Left, Rect.Top + Rect.Height, clBlack);

            btnIncShop.Visible := True;
            DataRect := Rect; //grid.CellRect(grid.GetActiveCol,grid.GetActiveRow);
            btnIncShop.Width := round((Rect.Width-1)/2);
            btnIncShop.Parent := grdTransactionProducts;
            btnIncShop.Left := DataRect.Left-1 + btnIncShop.Width; //(DataRect.Right - btnIncShop.Width);
            btnIncShop.Top := DataRect.Top +2;
            btnIncShop.Height := DataRect.Height-3; //(DataRect.Bottom-Rect.Top);
            btnIncShop.Font.Color := fontColor;
            btnIncShop.Caption := tilldm.qryTransactionStockLocation_SHOP.AsString;

            tilldm.qryTransactionStockCalcStore.Close;
            tilldm.qryTransactionStockCalcStore.Open;
            if tilldm.qryTransactionStockDisplay.Locate('Location', 'SHOP', [loCaseInsensitive]) then
            begin
            {lblStock_SHOP.Caption := tilldm.qryTransactionStockDisplayQuantity.AsString;}
                lblStock_SHOP.Caption := tilldm.qryTransactionStockDisplaytotalQty.AsString;
            end
            else
                lblStock_SHOP.Caption := '0';

            lblStock_SHOP.Visible := True;
            lblStock_SHOP.Width := round((Rect.Width-1)/2)-3;
            lblStock_SHOP.Parent := grdTransactionProducts;
            lblStock_SHOP.Left := DataRect.Left+2; //(DataRect.Right - btnIncShop.Width);
            lblStock_SHOP.Top := DataRect.Top +1;
            lblStock_SHOP.Height := DataRect.Height-3; //(DataRect.Bottom-Rect.Top);
            lblStock_SHOP.Font.Color := fontColor;


        end
        else if Field.FieldName = 'Location_STORE' then
        begin
            //DrawAntialisedLine(grdTransactionProducts.Canvas, Rect.Left + Rect.Width, Rect.Top, Rect.Left, Rect.Top + Rect.Height, clBlack);

            btnIncStore.Visible := True;
            DataRect := Rect; //grid.CellRect(grid.Columns[grid.Col].Index,grid.Row);
            btnIncStore.Width := round((Rect.Width-1)/2);
            btnIncStore.Parent := grdTransactionProducts;
            btnIncStore.Left := DataRect.Left-1 + btnIncShop.Width; //(DataRect.Right - btnIncStore.Width);
            btnIncStore.Top := DataRect.Top +2;
            btnIncStore.Height := DataRect.Height-3; //(DataRect.Bottom-Rect.Top);
            btnIncStore.Font.Color := fontColor;
            btnIncStore.Caption := tilldm.qryTransactionStockLocation_STORE.AsString;

            tilldm.qryTransactionStockCalcStore.Close;
            tilldm.qryTransactionStockCalcStore.Open;
            if tilldm.qryTransactionStockDisplay.Locate('Location', 'STORE', [loCaseInsensitive]) then
            begin
                lblStock_STORE.Caption := tilldm.qryTransactionStockDisplaytotalQty.AsString;
            end
            else
                lblStock_STORE.Caption := '0';

            lblStock_STORE.Visible := True;
            lblStock_STORE.Width := round((Rect.Width-1)/2)-3;
            lblStock_STORE.Parent := grdTransactionProducts;
            lblStock_STORE.Left := DataRect.Left+2; //(DataRect.Right - btnIncShop.Width);
            lblStock_STORE.Top := DataRect.Top +1;
            lblStock_STORE.Height := DataRect.Height-3; //(DataRect.Bottom-Rect.Top);
            lblStock_STORE.Font.Color := fontColor;
        end
        else if Field.FieldName = 'Location_SHED' then
        begin
            //DrawAntialisedLine(grdTransactionProducts.Canvas, Rect.Left + Rect.Width, Rect.Top, Rect.Left, Rect.Top + Rect.Height, clBlack);

            btnIncShed.Visible := True;
            DataRect := Rect; //grid.CellRect(grid.Columns[grid.Col].Index,grid.Row);
            btnIncShed.Width := round((Rect.Width-1)/2);
            btnIncShed.Parent := grdTransactionProducts;
            btnIncShed.Left := DataRect.Left-1 + btnIncShop.Width; //(DataRect.Right - btnIncShed.Width);
            btnIncShed.Top := DataRect.Top +2;
            btnIncShed.Height := DataRect.Height-3; //(DataRect.Bottom-Rect.Top);
            btnIncShed.Font.Color := fontColor;
            btnIncShed.Caption := tilldm.qryTransactionStockLocation_SHED.AsString;

            tilldm.qryTransactionStockCalcStore.Close;
            tilldm.qryTransactionStockCalcStore.Open;
            if tilldm.qryTransactionStockDisplay.Locate('Location', 'SHED', [loCaseInsensitive]) then
            begin
                lblStock_SHED.Caption := tilldm.qryTransactionStockDisplaytotalQty.AsString;
            end
            else
                lblStock_SHED.Caption := '0';

            lblStock_SHED.Visible := True;
            lblStock_SHED.Width := round((Rect.Width-1)/2)-3;
            lblStock_SHED.Parent := grdTransactionProducts;
            lblStock_SHED.Left := DataRect.Left+2; //(DataRect.Right - btnIncShop.Width);
            lblStock_SHED.Top := DataRect.Top +1;
            lblStock_SHED.Height := DataRect.Height-3; //(DataRect.Bottom-Rect.Top);
            lblStock_SHED.Font.Color := fontColor;

        end
        else if Field.FieldName = 'Quantity' then
        begin
            btnQuantityLabel.Visible := True;
            DataRect := Rect; //grid.CellRect(grid.Columns[grid.Col].Index,grid.Row);
            btnQuantityLabel.Width := Rect.Width-1;
            btnQuantityLabel.Parent := grdTransactionProducts;
            btnQuantityLabel.Left := DataRect.Left-1; //(DataRect.Right - btnIncShed.Width);
            btnQuantityLabel.Top := DataRect.Top +2;
            btnQuantityLabel.Height := DataRect.Height-3; //(DataRect.Bottom-Rect.Top);
            btnQuantityLabel.Font.Color := fontColor;

        end;
    end
    else
    begin
        if Field.FieldName = 'Item Info' then
        begin
            mLineSupplier := Copy(tilldm.qryTransactionStockItemInfo.AsString, Pos(#2, tilldm.qryTransactionStockItemInfo.AsString) + 1);
            mLineCode := MidStr(tilldm.qryTransactionStockItemInfo.AsString,
          Pos(#1, tilldm.qryTransactionStockItemInfo.AsString) + 1,
          (Pos(#2, tilldm.qryTransactionStockItemInfo.AsString) - Pos(#1, tilldm.qryTransactionStockItemInfo.AsString) - 1));

            tilldm.qryTransactionStockDisplayEx.Close;
            tilldm.qryTransactionStockDisplayEx.sql.text :=
            'select *, sum(quantity) as totalqty from stock where stock.code = ' + QuotedStr(mLineCode) + ' and stock.supplier = ' + QuotedStr(mLineSupplier) + ' and Stock_Status=''RE'' Group by stock.Location';
            tilldm.qryTransactionStockDisplayEx.Open;
        end;

        if Field.FieldName = 'Location_SHOP' then
        begin
            //DrawAntialisedLine(grdTransactionProducts.Canvas, Rect.Left + Rect.Width, Rect.Top, Rect.Left, Rect.Top + Rect.Height, clBlack);

            // Draw Location_SHOP
            DataRect := Rect;
            DataRect.Left := DataRect.Left-1 + round((Rect.Width-1)/2); //(DataRect.Right - btnIncShop.Width);
            DataRect.Top := DataRect.Top + 21;
            DataRect.Height := DataRect.Height-3;
            DataRect.Width := round((Rect.Width-1)/2);
            // Found a weird bug, for some reason the DataRect.Width would set to 1 after calculating DataRect.Left
            // Fixed it by moving the DataRect.Width calculation after everything else
            stockQty := field.AsString;

            DrawText(grdTransactionProducts.Canvas.Handle, PChar(stockQty),
             length(stockQty), DataRect,
             DT_SINGLELINE or DT_RIGHT or DT_VCENTER or DT_END_ELLIPSIS);

            // Draw stock at SHOP
            DataRect := Rect;
            DataRect.Width := round((Rect.Width-1)/2)-3;
            DataRect.Left := DataRect.Left+2; //(DataRect.Right - btnIncShop.Width);
            DataRect.Top := DataRect.Top - 15;
            DataRect.Height := DataRect.Height-3; //(DataRect.Bottom-Rect.Top);

            if tilldm.qryTransactionStockDisplayEx.Locate('Location', 'SHOP', [loCaseInsensitive]) then
            begin
               stockQty := tilldm.qryTransactionStockDisplayExtotalqty.AsString;
            end
            else
               stockQty := '0';

            if stockQty = '0' then stockQty := '';

            DrawText(grdTransactionProducts.Canvas.Handle, PChar(stockQty),
             length(stockQty), DataRect,
             DT_SINGLELINE or DT_LEFT or DT_VCENTER or DT_END_ELLIPSIS);


        end
        else if Field.FieldName = 'Location_STORE' then
        begin
            //DrawAntialisedLine(grdTransactionProducts.Canvas, Rect.Left + Rect.Width, Rect.Top, Rect.Left, Rect.Top + Rect.Height, clBlack);

            // Draw Location_STORE
            DataRect := Rect;
            DataRect.Left := DataRect.Left-1 + round((Rect.Width-1)/2); //(DataRect.Right - btnIncShop.Width);
            DataRect.Top := DataRect.Top + 21;
            DataRect.Height := DataRect.Height-3;
            DataRect.Width := round((Rect.Width-1)/2);

            // Found a weird bug, for some reason the DataRect.Width would set to 1 after calculating DataRect.Left
            // Fixed it by moving the DataRect.Width calculation after everything else
            stockQty := field.AsString;

            DrawText(grdTransactionProducts.Canvas.Handle, PChar(stockQty),
             length(stockQty), DataRect,
             DT_SINGLELINE or DT_RIGHT or DT_VCENTER or DT_END_ELLIPSIS);

            // Draw stock at STORE
            DataRect := Rect;
            DataRect.Width := round((Rect.Width-1)/2)-3;
            DataRect.Left := DataRect.Left+2; //(DataRect.Right - btnIncShop.Width);
            DataRect.Top := DataRect.Top - 15;
            DataRect.Height := DataRect.Height-3; //(DataRect.Bottom-Rect.Top);

            if tilldm.qryTransactionStockDisplayEx.Locate('Location', 'STORE', [loCaseInsensitive]) then
            begin
                stockQty := tilldm.qryTransactionStockDisplayExtotalQty.AsString;
            end
            else
                stockQty := '0';

            if stockQty = '0' then stockQty := '';

            DrawText(grdTransactionProducts.Canvas.Handle, PChar(stockQty),
             length(stockQty), DataRect,
             DT_SINGLELINE or DT_LEFT or DT_VCENTER or DT_END_ELLIPSIS);


        end
        else if Field.FieldName = 'Location_SHED' then
        begin
            //DrawAntialisedLine(grdTransactionProducts.Canvas, Rect.Left + Rect.Width, Rect.Top, Rect.Left, Rect.Top + Rect.Height, clBlack);

            // Draw Location_SHED
            DataRect := Rect;
            DataRect.Left := DataRect.Left-1 + round((Rect.Width-1)/2); //(DataRect.Right - btnIncShop.Width);
            DataRect.Top := DataRect.Top + 21;
            DataRect.Height := DataRect.Height-3;
            DataRect.Width := round((Rect.Width-1)/2);
            // Found a weird bug, for some reason the DataRect.Width would set to 1 after calculating DataRect.Left
            // Fixed it by moving the DataRect.Width calculation after everything else
            stockQty := field.AsString;

            DrawText(grdTransactionProducts.Canvas.Handle, PChar(stockQty),
             length(stockQty), DataRect,
             DT_SINGLELINE or DT_RIGHT or DT_VCENTER or DT_END_ELLIPSIS);

            // Draw stock at SHED
            DataRect := Rect;
            DataRect.Width := round((Rect.Width-1)/2)-3;
            DataRect.Left := DataRect.Left+2; //(DataRect.Right - btnIncShop.Width);
            DataRect.Top := DataRect.Top - 15;
            DataRect.Height := DataRect.Height-3; //(DataRect.Bottom-Rect.Top);

            if tilldm.qryTransactionStockDisplayEx.Locate('Location', 'SHED', [loCaseInsensitive]) then
            begin
                stockQty := tilldm.qryTransactionStockDisplayExtotalQty.AsString;
            end
            else
                stockQty := '0';

            if stockQty = '0' then stockQty := '';


            DrawText(grdTransactionProducts.Canvas.Handle, PChar(stockQty),
             length(stockQty), DataRect,
             DT_SINGLELINE or DT_LEFT or DT_VCENTER or DT_END_ELLIPSIS);
        end;

    end;



end;

procedure TfrmMain.grdTransactionProductsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    edtBarcode.SetFocus;
end;



procedure TfrmMain.grdTransactionProductsRowChanged(Sender: TObject);
begin

    lblErrorMsg.Caption := '';
    lblErrorMsg.Visible := False;
      if tilldm.qryImageimage.BlobSize > 0 then
      begin
       frmMain.ProdImage.Visible := True;
       if grdTransactionProducts.Row > 7  then
        frmMain.ProdImage.Top := (grdTransactionProducts.Row*47)+80-320
        else
        frmMain.ProdImage.Top := (grdTransactionProducts.Row*47)+80;

      end



       else
       frmMain.ProdImage.Visible := False;


end;

end.
