unit frmGiftCardUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, fcLabel, Vcl.Dialogs,System.StrUtils, System.DateUtils, System.Types;

type
  TfrmGiftCardDialog = class(TForm)
    edtGiftCardNumber: TEdit;
    lblScan: TLabel;
    btnCheckBalance: TSpeedButton;
    btnCancel: TSpeedButton;
    lblExpiryDate: TLabel;
    lblBalance: TLabel;
    lblActivationDate: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    fcLabel1: TfcLabel;
    fcLabel2: TfcLabel;
    fcLabel3: TfcLabel;
    btnOk: TSpeedButton;
    lblErrorMessage: TLabel;
    Label4: TLabel;
    lblRequiredAmount: TfcLabel;
    Label5: TLabel;
    lblNewBalance: TfcLabel;
    Label6: TLabel;
    lblAvailableAmount: TfcLabel;
    procedure edtGiftCardNumberDblClick(Sender: TObject);
    procedure btnCheckBalanceClick(Sender: TObject);
    procedure edtGiftCardNumberKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure calculateAmounts;
    { Private declarations }
  public
    { Public declarations }
    result : Double;
    cardNumber : string;
    requiredAmount : Double;
    newBalance: Double;
    availableAmount: Double;
  end;

var
  frmGiftCardDialog: TfrmGiftCardDialog;


implementation

{$R *.dfm}

uses frmNumberInputUnit, CashRegisterUtils, dmtillunit;


procedure TfrmGiftCardDialog.btnCancelClick(Sender: TObject);
begin
    result := -1;
    cardNumber := '';
    ModalResult := mrCancel;
end;

procedure TfrmGiftCardDialog.btnCheckBalanceClick(Sender: TObject);
var
    giftCardNumber, giftCardPin : string;
begin
    // TODO: Lookup details
    lblNewBalance.Caption := '$0.00';
    lblAvailableAmount.Caption := '$0.00';
    if edtGiftCardNumber.Text <> '' then
    begin
        // Note: Possibly we could create gift card numbers using
        // the current DateTime converted to a numeric value XXXXX.YYYYYYYYYY
        // Then randomly generate the 4 digit pin, if a pin is required

        giftCardNumber := Copy(edtGiftCardNumber.Text, 1, LastDelimiter('/', edtGiftCardNumber.Text) - 1);
        giftCardnumber := Copy(GiftCardNumber, LastDelimiter('/', GiftCardNumber)+1);
        giftCardnumber := replacestr(giftCardnumber,'?G=','');
        giftCardPin := Copy(edtGiftCardNumber.Text, LastDelimiter('/', edtGiftCardNumber.Text)+1);

        tilldm.qryGiftCardsLookup.Close;
        tilldm.qryGiftCardsLookup.SQL.Text := 'select * from gift_cards where CardNumber=' + QuotedStr(giftCardNumber) +
                                              ' and CardPin=' + QuotedStr(giftCardPin);
        tilldm.qryGiftCardsLookup.Open;
        if tilldm.qryGiftCardsLookup.IsEmpty then
        begin
            // Card not found, or pin does not match
            // Display error message
            {ShowDisplayDialog('Error','Gift card not found in the system.' + sLinebreak +
                              'Either gift card number and/or pin do not match, or card does not exist!',
                              TDisplayDlgBtn.mbOkOnly, false, true);}
            lblErrorMessage.Caption := 'Gift card not found or incorrect pin.';
            lblErrorMessage.Visible := true;
            btnOk.Enabled := false;
        end
        else
        begin
            if tilldm.qryGiftCardsLookupBalance.Value <= 0 then
            begin
                {ShowDisplayDialog('Error','Not enough funds!',
                              TDisplayDlgBtn.mbOkOnly, false, true); }
                btnOk.Enabled := false;
                lblErrorMessage.Caption := 'Not enough funds!';
                lblErrorMessage.Visible := true;
            end
            else if (CompareDate(tilldm.qryGiftCardsLookupIssueDate.AsDateTime, 0) = EqualsValue ) then
            begin
                {ShowDisplayDialog('Error','Gift card has not been activated!',
                              TDisplayDlgBtn.mbOkOnly, false, true);}
                btnOk.Enabled := false;
                lblErrorMessage.Caption := 'Gift card has not been activated!';
                lblErrorMessage.Visible := true;
            end
            else if (CompareDate(tilldm.qryGiftCardsLookupExpiryDate.Value, Date) = LessThanValue) then
            begin
                // If the card hasn't expired yet
                if (CompareDate(tilldm.qryGiftCardsLookupExpiryDate.Value, 0) <> EqualsValue ) then
                begin
                    btnOk.Enabled := false;
                    lblErrorMessage.Caption := 'Gift card has expired!';
                    lblErrorMessage.Visible := true;
                end
                else
                begin
                    calculateAmounts;

                    btnOk.Enabled := True;
                    lblErrorMessage.Caption := '';
                    lblErrorMessage.Visible := false;
                end;
            end
            else
            begin
                calculateAmounts;

                btnOk.Enabled := True;
                lblErrorMessage.Caption := '';
                lblErrorMessage.Visible := false;
            end;


        end;

    end;
end;

procedure TfrmGiftCardDialog.btnOkClick(Sender: TObject);
begin
    result := availableAmount;
    cardNumber := tilldm.qryGiftCardsLookupCardNumber.AsString;
    ModalResult := mrOk;
end;

procedure TfrmGiftCardDialog.edtGiftCardNumberDblClick(Sender: TObject);
begin
    edtGiftCardNumber.Text := ShowKeyboardDialog('Enter gift card number' + sLineBreak + 'Format: XXXX-XXXX-XXXX/YYYY',edtGiftCardNumber.Text, frmGiftCardDialog.Top + edtGiftCardNumber.Top + 40); //FloatToStr(frmNumberInputDialog.result);
end;

procedure TfrmGiftCardDialog.edtGiftCardNumberKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then btnCheckBalanceClick(Sender);
end;

procedure TfrmGiftCardDialog.FormActivate(Sender: TObject);
begin
    lblRequiredAmount.Caption := FormatFloat('$###,##0.00', requiredAmount);
end;

procedure TfrmGiftCardDialog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    edtGiftCardNumber.Clear;
    lblNewBalance.Caption := '$0.00';
    lblAvailableAmount.Caption := '$0.00';
end;

procedure TfrmGiftCardDialog.calculateAmounts;
begin
  if requiredAmount > tilldm.qryGiftCardsLookupBalance.Value then
  begin
    // if requiredAmount is greater than current balance
    // -available amount = current balance
    // -new balance      = 0
    newBalance := 0;
    availableAmount := tilldm.qryGiftCardsLookupBalance.Value;
  end
  else
  begin
    // if required amount is less than or equal to current balance
    // -available amount = required amount
    // -new balance      = current balance - required amount
    newBalance := tilldm.qryGiftCardsLookupBalance.Value - requiredAmount;
    availableAmount := requiredAmount;
  end;
  lblNewBalance.Caption := FormatFloat('$###,##0.00', newBalance);
  lblAvailableAmount.Caption := FormatFloat('$###,##0.00', availableAmount);
end;

procedure TfrmGiftCardDialog.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #$1B then btnCancelClick(Sender);
end;

end.
