unit frmPaymentUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Wwdbigrd, Wwdbgrid, db, System.DateUtils, ResizeKit, frxClass, frxDBSet,
  Vcl.ExtCtrls;

type
  TfrmPayment = class(TForm)
    edtPayment: TEdit;
    grdPayments: TwwDBGrid;
    lblHelp: TLabel;
    ResizeKit1: TResizeKit;
    btnBackspace: TSpeedButton;
    FlowPanel1: TFlowPanel;
    btnCash: TSpeedButton;
    btnCredit: TSpeedButton;
    btnEFTPOS: TSpeedButton;
    btnGiftCard: TSpeedButton;
    btnCancelPayment: TSpeedButton;
    FlowPanel2: TFlowPanel;
    btnCheque: TSpeedButton;
    Credit: TSpeedButton;
    refundcash: TSpeedButton;
    refundgiftcard: TSpeedButton;
    discountbtn: TSpeedButton;
    Panel1: TPanel;
    lblRemaining: TLabel;
    lblAmountRemaining: TLabel;
    lblAmountDue: TLabel;
    lblDue: TLabel;
    NumPanel: TFlowPanel;
    btnOne: TSpeedButton;
    btnTwo: TSpeedButton;
    btnThree: TSpeedButton;
    btnFour: TSpeedButton;
    btnFive: TSpeedButton;
    btnSix: TSpeedButton;
    btnSeven: TSpeedButton;
    btnEight: TSpeedButton;
    btnNine: TSpeedButton;
    btnDecimal: TSpeedButton;
    btnZero: TSpeedButton;
    btnClear: TSpeedButton;
    btnCancel: TSpeedButton;
    btn2: TSpeedButton;
    btnOneDollar: TSpeedButton;
    btnFiveDollars: TSpeedButton;
    btn1: TSpeedButton;
    btnTen: TSpeedButton;
    btnTwenty: TSpeedButton;
    btnThirty: TSpeedButton;
    btnHundredDollar: TSpeedButton;
    btnFullAmount: TSpeedButton;

    procedure btnOneClick(Sender: TObject);
    procedure btnTwoClick(Sender: TObject);
    procedure btnThreeClick(Sender: TObject);
    procedure btnFourClick(Sender: TObject);
    procedure btnFiveClick(Sender: TObject);
    procedure btnSixClick(Sender: TObject);
    procedure btnSevenClick(Sender: TObject);
    procedure btnEightClick(Sender: TObject);
    procedure btnNineClick(Sender: TObject);
    procedure btnDoubleZeroClick(Sender: TObject);
    procedure btnZeroClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure edtPaymentKeyPress(Sender: TObject; var Key: Char);
    procedure btnCashClick(Sender: TObject);
    procedure appendToPayment(Num: Currency);
    procedure addPayment(paymentType: string; Amount: Double;
      Details: string);
    procedure btnCreditClick(Sender: TObject);
    procedure btnChequeClick(Sender: TObject);
    procedure btnEFTPOSClick(Sender: TObject);
    procedure updateGUI();
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnOneDollarClick(Sender: TObject);
    procedure btnFiveDollarsClick(Sender: TObject);
    procedure btnTenClick(Sender: TObject);
    procedure btnTwentyClick(Sender: TObject);
    procedure btnThirtyClick(Sender: TObject);
    procedure btnHundredDollarClick(Sender: TObject);
    procedure btnFullAmountClick(Sender: TObject);
    procedure checkAmountPaid();
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnGiftCardClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnDecimalClick(Sender: TObject);
    procedure btnBackspaceClick(Sender: TObject);
    procedure edtPaymentEnter(Sender: TObject);
    procedure edtPaymentMouseEnter(Sender: TObject);
    procedure btnCancelPaymentClick(Sender: TObject);
    procedure grdPaymentsCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure discountbtnClick(Sender: TObject);
    procedure CreditClick(Sender: TObject);
    procedure refundcashClick(Sender: TObject);
    procedure refundgiftcardClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPayment: TfrmPayment;
  mTotalDue: Double;
  mTotalPaid: Double;
  mCurrentPayment: Double;
  mInputMode: Integer;
  mCurrentDateTime, mNow : TDateTime;

implementation

uses frmMainTillUnit, frmAddGiftCardUnit,dmtillunit, frmNumberInputUnit, frmGiftCardUnit, CashRegisterUtils, frmOverrideUnit;

{$R *.dfm}

// Check amount paid is < amount due. End transaction when totaldue is reached
procedure TfrmPayment.checkAmountPaid();
begin
    //TODO: If we add a "transactionCompleted" bool, then flag that as 'true' here.
    if ((mTotalDue - mTotalPaid) <= 0.0) then
    begin
        ModalResult := mrOK;
        if tilldm.qryTransactionsIsLayby.AsString = 'Y' then
        begin
          tilldm.qryTransactions.Edit;
          tilldm.qryTransactionsIsLayby.AsString := 'C';
          tilldm.qryTransactions.Post;
          frmMain.refreshCurrentTransaction;
        end;
        // TODO: print the transaction
    end;
end;

procedure TfrmPayment.discountbtnClick(Sender: TObject);
var chequeNum : string;
begin
    if mCurrentPayment > (mTotalDue - mTotalPaid) then
        ShowDisplayDialog('Error', 'Discount cannot exceed the remaining amount!', mbOkOnly, false, True)
    else
    begin
        if mCurrentPayment > 0.00 then
        begin

                addPayment('DISCOUNT', mCurrentPayment, '');

        end;
    end;

end;

procedure TfrmPayment.updateGUI();
begin
if mTotalPaid <= mTotalDue  then
   begin
    btnFullAmount.Caption := FormatFloat('$###,###,##0.00', mTotalDue - mTotalPaid);
    lblAmountRemaining.Caption := FormatFloat('$###,###,##0.00', mTotalDue - mTotalPaid);
    lblAmountDue.Caption := FormatFloat('$###,###,##0.00', mTotalDue);
 end
 else
   begin
    btnFullAmount.Caption := FormatFloat('$###,###,##0.00', 0);
    lblAmountRemaining.Caption := FormatFloat('$###,###,##0.00',0);
    lblAmountDue.Caption := FormatFloat('$###,###,##0.00', 0);
 end;

    edtPayment.Text := FormatFloat('$###,###,##0.00', mCurrentPayment);
end;

procedure TfrmPayment.appendToPayment(Num: Currency);
begin
    if (mInputMode = 0)  then
        // Append numbers before decimal place
        mCurrentPayment := (mCurrentPayment * 10) + Num
    else if mInputMode = 1 then
    begin
        //Append to first decimal
        mCurrentPayment := (mCurrentPayment) + (Num / 10);
        mInputMode := 2;
    end
    else if mInputMode = 2 then
    begin
        //Append to second decimal
        mCurrentPayment := (mCurrentPayment) + (Num / 100);
        mInputMode := 3;
    end
    else if mInputMode = 3 then
    begin
        // Do nothing, only allow backspace
    end
    else if mInputMode = 4 then
    begin
        mCurrentPayment := 0.0;
        mInputMode := 0;
        appendToPayment(Num);
    end;


    updateGUI();
end;

procedure TfrmPayment.addPayment(paymentType: string; Amount: Double;
  Details: string);
begin
    {if (Amount > 0) then }
    begin
        // CHECK IF ENTRY OF THIS TYPE ALREADY EXISTS IN DATABASE
        if (paymentType = 'CASH') and (tilldm.qryPayments.Locate('transactionId;paymentType;DateCreated;Cancelled',
            VarArrayOf([tilldm.qryTransactionsid.Value, paymentType, mCurrentDateTime, 'N']),
            [loCaseInsensitive])) then
        begin
            tilldm.qryPayments.Edit;
            tilldm.qryPaymentsamount.Value := tilldm.qryPaymentsamount.Value + Amount;
            tilldm.qryPayments.Post;
            tilldm.qryPayments.ReQuery;
        end
        else
        begin
            tilldm.qryPayments.Insert;

            tilldm.qryPaymentspaymentType.AsString := paymentType;
            tilldm.qryPaymentstransactionID.Value := tilldm.qryTransactionsid.Value;
            tilldm.qryPaymentsamount.Value := Amount;
            tilldm.qryPaymentsamount.Value := Amount;

            tilldm.qryPaymentsDetails.AsString := Details;
            if paymentType = 'CASH' then
                tilldm.qryPaymentsDateCreated.Value := mCurrentDateTime
            else
                tilldm.qryPaymentsDateCreated.Value := EncodeDateTime(yearof(Now),monthof(Now),dayof(Now),hourof(Now),minuteof(Now),0,0);

            tilldm.qryPayments.Post;
            tilldm.qryPayments.ReQuery;
        end;

        mTotalPaid := tilldm.qryPaymentsCalctotal.AsFloat;
        mCurrentPayment := mTotalDue - mTotalPaid;
        mInputMode := 4;
        updateGUI();

        checkAmountPaid();
    end;
end;

procedure TfrmPayment.btn1Click(Sender: TObject);
begin
    addPayment('CASH', 0.5, '');
end;

procedure TfrmPayment.btn2Click(Sender: TObject);
begin
    addPayment('CASH', 0.2, '');
end;

procedure TfrmPayment.btnBackspaceClick(Sender: TObject);
var newNum : string;
begin
    if (mInputMode = 0) then
    begin
        newNum := Copy(FormatFloat('########0.00', mCurrentPayment), 0, Length(FormatFloat('########0.00', mCurrentPayment))-4);
        // check if num = ""
        if (newNum = '') or (newNum = '-') then
            newNum := '0.00';
        mCurrentPayment := StrToFloat(newNum);
        updateGUI();
    end
    else if (mInputMode = 1) then
    begin
        mInputMode := 0;
    end
    else if (mInputMode = 2) then
    begin
        //Remove the first decimal digit
        mInputMode := 1;
        newNum := Copy(FormatFloat('########0.00', mCurrentPayment), 0, Length(FormatFloat('########0.00', mCurrentPayment))-2);
        mCurrentPayment := StrToFloat(newNum);
        updateGUI();
    end
    else if (mInputMode = 3) then
    begin
        //Remove the second decimal digit
        mInputMode := 2;
        newNum := Copy(FormatFloat('########0.00', mCurrentPayment), 0, Length(FormatFloat('########0.00', mCurrentPayment))-1);
        mCurrentPayment := StrToFloat(newNum);
        updateGUI();
    end
    else if (mInputMode = 4) then
    begin
        //Remove everything
        mInputMode := 0;
        newNum := '0.00';
        mCurrentPayment := StrToFloat(newNum);
        updateGUI();
    end;
end;

procedure TfrmPayment.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmPayment.btnCancelPaymentClick(Sender: TObject);
begin
    if not tilldm.qryPayments.IsEmpty then
    if tilldm.qryPaymentsCancelled.AsString = 'N' then
    if frmOverride.ShowModal = mrOk then
    begin
        tilldm.qryPayments.Edit;
        tilldm.qryPaymentsCancelled.AsString := 'Y';
        tilldm.qryPayments.Post;
        tilldm.qryPayments.ReQuery;

        mTotalPaid := tilldm.qryPaymentsCalctotal.AsFloat;
        mCurrentPayment := mTotalDue - mTotalPaid;
        updateGUI();

        checkAmountPaid();
    end;
end;

procedure TfrmPayment.btnCashClick(Sender: TObject);
begin
    addPayment('CASH', mCurrentPayment, '');
end;

procedure TfrmPayment.btnChequeClick(Sender: TObject);
var chequeNum : string;
begin
    if mCurrentPayment > (mTotalDue - mTotalPaid) then
        ShowDisplayDialog('Error', 'MONEY ORDER cannot exceed the remaining amount!', mbOkOnly, false, True)
    else
    begin
        if mCurrentPayment > 0.00 then
        begin
            frmNumberInputDialog.dialogName := 'Enter Cheque Number';
            frmNumberInputDialog.initialValue := '0';

            if frmNumberInputDialog.ShowModal = mrOk then
            begin
                chequeNum := FloatToStr(frmNumberInputDialog.result);
                if (chequeNum <> '') and (Length(chequeNum) >  0) then
                begin
                    addPayment('MONEYORDER', mCurrentPayment, chequeNum);
                end;
            end;
        end;
    end;
end;

procedure TfrmPayment.btnClearClick(Sender: TObject);
begin
    mCurrentPayment := 0.00;
    mInputMode := 0;
    updateGUI();
end;

procedure TfrmPayment.btnCreditClick(Sender: TObject);
begin
    if mCurrentPayment > (mTotalDue - mTotalPaid) then
        ShowDisplayDialog('Error', 'CREDIT cannot exceed the remaining amount!', mbOkOnly, false, True)
    else
        addPayment('CREDITCARD', mCurrentPayment, '');
end;

procedure TfrmPayment.btnDecimalClick(Sender: TObject);
begin
    if mInputMode = 0 then
        mInputMode := 1
end;

procedure TfrmPayment.btnDoubleZeroClick(Sender: TObject);
begin
    appendToPayment(0);
    appendToPayment(0);
end;

procedure TfrmPayment.btnEFTPOSClick(Sender: TObject);
begin
    if mCurrentPayment > (mTotalDue - mTotalPaid) then
        ShowDisplayDialog('Error', 'EFT DEBIT cannot exceed the remaining amount!', mbOkOnly, false, True)
    else
        addPayment('EFT DEBIT', mCurrentPayment, '');
end;

procedure TfrmPayment.btnEightClick(Sender: TObject);
begin
    appendToPayment(8);
end;

procedure TfrmPayment.btnFiveClick(Sender: TObject);
begin
    appendToPayment(5);
end;

procedure TfrmPayment.btnFiveDollarsClick(Sender: TObject);
begin
    addPayment('CASH', 5.0, '');
end;

procedure TfrmPayment.btnFourClick(Sender: TObject);
begin
    appendToPayment(4);
end;

procedure TfrmPayment.btnFullAmountClick(Sender: TObject);
begin
    addPayment('CASH', mTotalDue - mTotalPaid, '');
end;

procedure TfrmPayment.btnGiftCardClick(Sender: TObject);
var
    SQL : string;
begin
    if mCurrentPayment >= 0 then
    begin
        frmGiftCardDialog.requiredAmount := mCurrentPayment;
        if frmGiftCardDialog.ShowModal = mrOk then
        begin
            if frmGiftCardDialog.result > 0 then
            begin
                // update gift card
                SQL := 'UPDATE gift_cards SET Balance=' + QuotedStr(FloatToStr(frmGiftCardDialog.newBalance)) + ' WHERE CardNumber=' + QuotedStr(frmGiftCardDialog.cardNumber);
                tilldm.conLocalSQL.Execute(SQL);
                // update gift card transactions
                SQL := 'INSERT INTO gift_cards_transactions '+
                        ' (`CardNumber`,`DeductedAmount`,`NewBalance`,`DateProcessed`,`staffCode`) ' +
                        ' VALUES ('+
                                    QuotedStr(frmGiftCardDialog.cardNumber) + ', ' +
                                    QuotedStr(FloatToStr(frmGiftCardDialog.result)) + ', ' +
                                    QuotedStr(FloatToStr(frmGiftCardDialog.newBalance)) + ', ' +
                                    'NOW()' + ', ' +
                                    QuotedStr(frmMain.mStaff) +
                                ')';
                tilldm.conLocalSQL.Execute(SQL);

                addPayment('GIFTCARD', frmGiftCardDialog.result, frmGiftCardDialog.cardNumber);
            end;
        end;
    end;
end;

procedure TfrmPayment.btnHundredDollarClick(Sender: TObject);
begin
    addPayment('CASH', 100.0, '');
end;

procedure TfrmPayment.btnNineClick(Sender: TObject);
begin
    appendToPayment(9);
end;

procedure TfrmPayment.btnOneClick(Sender: TObject);
begin
    appendToPayment(1);
end;

procedure TfrmPayment.btnOneDollarClick(Sender: TObject);
begin
    addPayment('CASH', 1.0, '');
end;

procedure TfrmPayment.btnSevenClick(Sender: TObject);
begin
    appendToPayment(7);
end;

procedure TfrmPayment.btnSixClick(Sender: TObject);
begin
    appendToPayment(6);
end;


procedure TfrmPayment.btnTenClick(Sender: TObject);
begin
    addPayment('CASH', 10.0, '');
end;

procedure TfrmPayment.btnThirtyClick(Sender: TObject);
begin
    addPayment('CASH', 50.0, '');
end;

procedure TfrmPayment.btnThreeClick(Sender: TObject);
begin
    appendToPayment(3);
end;

procedure TfrmPayment.btnTwentyClick(Sender: TObject);
begin
    addPayment('CASH', 20.0, '');
end;

procedure TfrmPayment.btnTwoClick(Sender: TObject);
begin
    appendToPayment(2);
end;

procedure TfrmPayment.btnZeroClick(Sender: TObject);
begin
    appendToPayment(0);
end;

procedure TfrmPayment.edtPaymentEnter(Sender: TObject);
begin
    HideCaret(edtPayment.Handle);
end;

procedure TfrmPayment.edtPaymentKeyPress(Sender: TObject; var Key: Char);
begin
    if (CharInSet(Key, ['0' .. '9'])) then
    begin
        appendToPayment(StrToCurr(Key));
    end;
    Key := #0;
end;

procedure TfrmPayment.edtPaymentMouseEnter(Sender: TObject);
begin
    HideCaret(edtPayment.Handle);
end;






procedure TfrmPayment.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #$1B then
        btnCancelClick(Sender)
    else if (Key = '.') then
        btnDecimalClick(Sender)
    //Backspace
    else if (Key = #8) then
        btnBackspaceClick(Sender);

end;

procedure TfrmPayment.FormShow(Sender: TObject);
begin
    //Get the total cost of transaction, and the total already paid
    mTotalDue := mGrandTotal;
    mTotalPaid := tilldm.qryPaymentsCalctotal.AsFloat;


    // Update current date time for the payments being processed at this time
    mNow := Now;
    mCurrentDateTime := EncodeDateTime(yearof(mNow),monthof(mNow),dayof(mNow),hourof(mNow),minuteof(mNow),0,0);

    mCurrentPayment := mTotalDue - mTotalPaid;
    mInputMode := 4;
    updateGUI();
end;

procedure TfrmPayment.grdPaymentsCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean;
  AFont: TFont; ABrush: TBrush);
begin
    if tilldm.qryPaymentsCancelled.AsString = 'Y' then
    begin
        afont.Color := clBlack;
        if gdSelected in State then
            ABrush.Color := 9948159
        else
            ABrush.Color := 13822207;
    end
    else
    begin

    end;
end;

procedure TfrmPayment.refundcashClick(Sender: TObject);
var chequeNum : string;
begin
    if mCurrentPayment > (mTotalDue - mTotalPaid) then
        ShowDisplayDialog('Error', 'Credit cannot exceed the remaining amount!', mbOkOnly, false, True)
    else
    begin
    if frmOverride.ShowModal = mrOk then
        if mCurrentPayment <> 0.00 then
        begin

                addPayment('REFUND CASH', mCurrentPayment, '');

        end;
    end;

end;



procedure TfrmPayment.refundgiftcardClick(Sender: TObject);
var chequeNum,amt : string;
begin



    if mCurrentPayment > (mTotalDue - mTotalPaid) then
        ShowDisplayDialog('Error', 'Credit cannot exceed the remaining amount!', mbOkOnly, false, True)
    else
    begin
    if mcurrentpayment < 0 then

    Str(mcurrentpayment*-1:5:2,amt)
    else
    Str(mcurrentpayment:5:2,amt);
    if mcurrentpayment < 0 then
        frmAddGiftCardDialog.initialbalance :=  mcurrentpayment*-1
    else
    frmAddGiftCardDialog.initialbalance :=  mcurrentpayment;

    frmAddGiftCardDialog.edtInitialBalance.text := '$'+amt;
    if frmAddGiftCardDialog.ShowModal = mrOk then
    begin
        frmMain.addToOrder(frmAddGiftCardDialog.cardNumberAndPin, 1);
    end;
    end;
     frmAddGiftCardDialog.edtInitialBalance.text := amt;
end;



procedure TfrmPayment.CreditClick(Sender: TObject);
var chequeNum : string;
begin
    if mCurrentPayment > (mTotalDue - mTotalPaid) then
        ShowDisplayDialog('Error', 'Credit cannot exceed the remaining amount!', mbOkOnly, false, True)
    else
    begin
    if frmOverride.ShowModal = mrOk then
        if mCurrentPayment <> 0.00 then
        begin

                addPayment('REFUND CREDIT', mCurrentPayment, '');

        end;
    end;

end;

end.
