unit frmAddGiftCardUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Printers, Vcl.Dialogs, Vcl.Buttons,
  Vcl.ExtCtrls, fcLabel, System.DateUtils, frxClass, frxDBSet, QuricolCode,
  frxPreview;

type
  TfrmAddGiftCardDialog = class(TForm)
    lblScan: TLabel;
    btnCancel: TSpeedButton;
    lblExpiryDate: TLabel;
    lblActivationDate: TLabel;
    lblIssueDate: TfcLabel;
    btnOk: TSpeedButton;
    edtGiftCardNumber: TEdit;
    Label3: TLabel;
    edtInitialBalance: TEdit;
    Label7: TLabel;
    btn10: TSpeedButton;
    btn20: TSpeedButton;
    btn50: TSpeedButton;
    btn100: TSpeedButton;
    btnOtherAmount: TSpeedButton;
    btnNever: TSpeedButton;
    btn1Year: TSpeedButton;
    btn6Months: TSpeedButton;
    frxgiftcard: TfrxReport;
    SpeedButton1: TSpeedButton;
    procedure btnSetAmountClick(Sender: TObject);
    procedure btnOtherAmountClick(Sender: TObject);
    procedure edtInitialBalanceClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtGiftCardNumberKeyPress(Sender: TObject; var Key: Char);
    procedure btnNeverClick(Sender: TObject);
    procedure btn6MonthsClick(Sender: TObject);
    procedure btn1YearClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure edtGiftCardNumberClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtGiftCardNumberExit(Sender: TObject);

    function FindPrinterByName(PrinterName: string): Integer;
    procedure frxgiftcardBeforePrint(Sender: TfrxReportComponent);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    giftCardNumber, giftCardPin, expiryDate: string;

    procedure checkGiftCardNumber;
  public
    { Public declarations }
    cardNumberAndPin: string;
     initialBalance: double;
  end;

var
  frmAddGiftCardDialog: TfrmAddGiftCardDialog;

implementation

uses CashRegisterUtils, frmNumberInputUnit, dmtillunit, frmMainTillUnit;

{$R *.dfm}

procedure TfrmAddGiftCardDialog.btn1YearClick(Sender: TObject);
var
  mNow, newDate: TDateTime;
begin
  mNow := Now();
  newDate := IncYear(mNow);
  expiryDate := FormatDateTime('yyyy-mm-dd hh:mm:ss', newDate);
end;

procedure TfrmAddGiftCardDialog.btn6MonthsClick(Sender: TObject);
var
  mNow, newDate: TDateTime;
begin
  mNow := Now();
  newDate := IncMonth(mNow, 6);
  expiryDate := FormatDateTime('yyyy-mm-dd hh:mm:ss', newDate);
end;

procedure TfrmAddGiftCardDialog.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmAddGiftCardDialog.btnNeverClick(Sender: TObject);
begin
  expiryDate := '0000-00-00 00:00:00';
end;

function TfrmAddGiftCardDialog.FindPrinterByName(PrinterName: string): Integer;
var
  res, I: Integer;
begin
  res := -1;
  for I := 0 to Printer.Printers.Count - 1 do
  begin
    if Pos(PrinterName, Printer.Printers[I]) > 0 then
    begin
      res := I;
      Break;
    end;
  end;

  Result := res;
end;

procedure TfrmAddGiftCardDialog.btnOkClick(Sender: TObject);
var
  SQL: string;
  index: Integer;

begin
  // Insert new giftcard

  SQL := 'INSERT INTO gift_cards ' +
    ' (`CardNumber`,`CardPin`,`InitialBalance`,`Balance`,`IssueDate`,`ExpiryDate`,`staffCode`) '
    + ' VALUES (' + QuotedStr(giftCardNumber) + ', ' + // Card Number
    QuotedStr(giftCardPin) + ', ' + // Pin
    QuotedStr(FloatToStr(initialBalance)) + ', ' + // Initial Balance
    QuotedStr(FloatToStr(initialBalance)) + ', ' + // Balance
    'NOW()' + ', ' + // Issue Date
    QuotedStr(expiryDate) + ', ' + // Expiry Date
    QuotedStr(frmMain.mStaff) + // Staff Code
    ')';
  tilldm.conLocalSQL.Execute(SQL);
  cardNumberAndPin := 'HTTP://B2BP.COM.AU/?G=' + giftCardNumber + '/' +
    giftCardPin;
  ModalResult := mrOk;

  // TODO: Return card info and add gift card to current transaction
  // When adding to the transaction, do we reference a misc product,
  // or do we just reference another table? What to do? :/
  // TODO: Print QR Code

  try

    index := FindPrinterByName('Label');
    if index > -1 then
    begin
      try
        Printer.PrinterIndex := index;
      except
        on E: Exception do
          ShowMessage('*' + IntToStr(index) + slinebreak + E.Message);
      end;
      frxgiftcard.PrintOptions.Printer := Printer.Printers[index];
    end;
  except
    on E: Exception do
      ShowMessage(IntToStr(index) + slinebreak + E.Message);
  end;
  if index = -1 then
    frxgiftcard.PrintOptions.ShowDialog := true
  else
    frxgiftcard.PrintOptions.ShowDialog := false;
  frxgiftcard.PrintOptions.Copies := 2;
  frxgiftcard.PrepareReport;
  frxgiftcard.Print;
end;

procedure TfrmAddGiftCardDialog.btnOtherAmountClick(Sender: TObject);
begin
  frmNumberInputDialog.dialogName := 'Enter price';
  frmNumberInputDialog.initialValue := FloatToStr(initialBalance);
  frmNumberInputDialog.integerOnly := false;
  frmNumberInputDialog.isCurrency := true;
  if frmNumberInputDialog.ShowModal = mrOk then
  begin
    initialBalance := frmNumberInputDialog.Result;
    edtInitialBalance.Text := FormatFloat('$###,###,##0.00',
      frmNumberInputDialog.Result);
  end;
end;

procedure TfrmAddGiftCardDialog.btnSetAmountClick(Sender: TObject);
begin
  if Sender.ClassName = 'TSpeedButton' then
  begin
    initialBalance := (Sender as TSpeedButton).Tag;
    edtInitialBalance.Text := FormatFloat('$###,###,##0.00',
      (Sender as TSpeedButton).Tag)
   end;
     checkGiftCardNumber;
end;

procedure TfrmAddGiftCardDialog.edtInitialBalanceClick(Sender: TObject);
begin
  btnOtherAmount.Click;
  edtGiftCardNumber.SetFocus;
end;

procedure TfrmAddGiftCardDialog.edtGiftCardNumberClick(Sender: TObject);
begin
  frmNumberInputDialog.dialogName := 'Enter gift card number';
  frmNumberInputDialog.initialValue := edtGiftCardNumber.Text;
  frmNumberInputDialog.integerOnly := true;
  frmNumberInputDialog.isNumericString := false;
  if frmNumberInputDialog.ShowModal = mrOk then
  begin
    edtGiftCardNumber.Text := frmNumberInputDialog.result_string;
    checkGiftCardNumber;
  end;
end;

procedure TfrmAddGiftCardDialog.edtGiftCardNumberExit(Sender: TObject);
begin
  checkGiftCardNumber;
end;

procedure TfrmAddGiftCardDialog.checkGiftCardNumber;
begin
  if edtGiftCardNumber.Text <> '' then
  begin
    // Note: Possibly we could create gift card numbers using
    // the current DateTime converted to a numeric value XXXXX.YYYYYYYYYY
    // Then randomly generate the 4 digit pin, if a pin is required
    // Current format: XXXXXXXX/YYYY
    // HTTP://B2BP.COM.AU/?G=123456/987
    // X - Card Number
    // Y - Pin
    if Pos('/', edtGiftCardNumber.Text) <> 0 then
    begin
      // Pin pre-entered
      giftCardNumber := Copy(edtGiftCardNumber.Text, 1,
        LastDelimiter('/', edtGiftCardNumber.Text) - 1);
      giftCardPin := Copy(edtGiftCardNumber.Text,
        LastDelimiter('/', edtGiftCardNumber.Text) + 1);
    end
    else
    begin
      // We must generate the pin
      giftCardNumber := edtGiftCardNumber.Text;
      Randomize;
      giftCardPin := IntToStr(Random(9000) + 1000);
    end;
    edtGiftCardNumber.Text := giftCardNumber;
    tilldm.qryGiftCardsLookup.Close;
    tilldm.qryGiftCardsLookup.SQL.Text :=
      'select * from gift_cards where CardNumber=' + QuotedStr(giftCardNumber);
    tilldm.qryGiftCardsLookup.Open;
    if tilldm.qryGiftCardsLookup.IsEmpty then
    begin
      btnOk.Enabled := true;
    end
    else
    begin
      // TODO: Decide what to do - GiftCard number already registered!
      // What to do?
      btnOk.Enabled := false;
    end;
  end;
end;

procedure TfrmAddGiftCardDialog.edtGiftCardNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    checkGiftCardNumber;
end;

procedure TfrmAddGiftCardDialog.FormActivate(Sender: TObject);
begin
  lblIssueDate.Caption := FormatDateTime('dd/mm/yyyy hh:mm', Now);
  expiryDate := '0000-00-00 00:00:00';
  edtGiftCardNumber.text := '';
  btnok.Enabled := False;
end;

procedure TfrmAddGiftCardDialog.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #$1B then
  begin
    btnCancelClick(Sender);
    Key := #0;
  end;
end;

procedure TfrmAddGiftCardDialog.frxgiftcardBeforePrint
  (Sender: TfrxReportComponent);
var
  AWidth, AHeight, ASymbolWidth, ASymbolHeight: Integer;
begin
  with TfrxPictureView(frxgiftcard.FindObject('Picture1')).Picture do
  begin
    Bitmap := TQRCode.GetBitmapImage(UpperCase(cardNumberAndPin), 0, 2, TErrorCorretion.QualityMedium);
  end;
end;

procedure TfrmAddGiftCardDialog.SpeedButton1Click(Sender: TObject);
begin
checkGiftCardNumber;
end;

end.
