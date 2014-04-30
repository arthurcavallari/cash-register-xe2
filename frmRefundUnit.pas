unit frmRefundUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmRefundDialog = class(TForm)
    btnOne: TSpeedButton;
    btnTwo: TSpeedButton;
    btnThree: TSpeedButton;
    btnSix: TSpeedButton;
    btnFive: TSpeedButton;
    btnFour: TSpeedButton;
    btnSeven: TSpeedButton;
    btnZero: TSpeedButton;
    btnEight: TSpeedButton;
    btnNine: TSpeedButton;
    btnDoubleZero: TSpeedButton;
    btnClear: TSpeedButton;
    edtRefund: TEdit;
    grdRefunds: TwwDBGrid;
    lblPayments: TLabel;
    btnDone: TSpeedButton;
    btnRefund: TSpeedButton;
    Label1: TLabel;
    grdPayments: TwwDBGrid;
    lblInstructions: TLabel;
    procedure grdPaymentsEnter(Sender: TObject);
    procedure edtRefundKeyPress(Sender: TObject; var Key: Char);
    procedure appendToPayment(Num: Currency);
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
    procedure btnDoneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRefundDialog: TfrmRefundDialog;
  mCurrentPayment: Double;

implementation

uses frmMainTillUnit, dmtillunit, frmNumberInputUnit, CashRegisterUtils;

{$R *.dfm}

procedure TfrmRefundDialog.btnClearClick(Sender: TObject);
begin
    mCurrentPayment := 0;
    edtRefund.Text := FormatFloat('$###,###,##0.00', mCurrentPayment);
end;

procedure TfrmRefundDialog.btnDoneClick(Sender: TObject);
begin
    ModalResult := mrOk;
end;

procedure TfrmRefundDialog.btnDoubleZeroClick(Sender: TObject);
begin
    appendToPayment(0);
    appendToPayment(0);
end;

procedure TfrmRefundDialog.btnEightClick(Sender: TObject);
begin
    appendToPayment(8);
end;

procedure TfrmRefundDialog.btnFiveClick(Sender: TObject);
begin
    appendToPayment(5);
end;

procedure TfrmRefundDialog.btnFourClick(Sender: TObject);
begin
    appendToPayment(4);
end;

procedure TfrmRefundDialog.btnNineClick(Sender: TObject);
begin
    appendToPayment(9);
end;

procedure TfrmRefundDialog.btnOneClick(Sender: TObject);
begin
    appendToPayment(1);
end;

procedure TfrmRefundDialog.btnSevenClick(Sender: TObject);
begin
    appendToPayment(7);
end;

procedure TfrmRefundDialog.btnSixClick(Sender: TObject);
begin
    appendToPayment(6);
end;

procedure TfrmRefundDialog.btnThreeClick(Sender: TObject);
begin
    appendToPayment(3);
end;

procedure TfrmRefundDialog.btnTwoClick(Sender: TObject);
begin
    appendToPayment(2);
end;

procedure TfrmRefundDialog.btnZeroClick(Sender: TObject);
begin
    appendToPayment(0);
end;

procedure TfrmRefundDialog.edtRefundKeyPress(Sender: TObject; var Key: Char);
begin
    {if (CharInSet(Key, ['0' .. '9'])) then
    begin
        appendToPayment(StrToCurr(Key));
    end;  }
    Key := #0;
end;

procedure TfrmRefundDialog.appendToPayment(Num: Currency);
begin
    mCurrentPayment := (mCurrentPayment * 10) + (Num / 100);

    edtRefund.Text := FormatFloat('$###,###,##0.00', mCurrentPayment);
end;

procedure TfrmRefundDialog.grdPaymentsEnter(Sender: TObject);
begin
{    if not tilldm.qryPayments.IsEmpty then
    begin
        mCurrentPayment := tilldm.qryPaymentsamount.Value; // value
        edtRefund.Text := FormatFloat('$###,###,##0.00', mCurrentPayment);
    end;  }
end;

end.
