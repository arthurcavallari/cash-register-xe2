program CashRegister;

{$R *.dres}

uses
  Vcl.Forms,
  Vcl.Dialogs,
  frmMainTillUnit in 'frmMainTillUnit.pas' {frmMain},
  dmtillunit in 'dmtillunit.pas' {tilldm},
  frmPaymentUnit in 'frmPaymentUnit.pas' {frmPayment},
  frmNumberInputUnit in 'frmNumberInputUnit.pas' {frmNumberInputDialog},
  frmDisplayUnit in 'frmDisplayUnit.pas' {frmDisplayDialog},
  frmKeyboardUnit in 'frmKeyboardUnit.pas' {frmKeyboard},
  frmSearchProductsUnit in 'frmSearchProductsUnit.pas' {frmSearchProductsDialog},
  frmRefundUnit in 'frmRefundUnit.pas' {frmRefundDialog},
  frmReturnUnit in 'frmReturnUnit.pas' {frmReturnDialog},
  frmGiftCardUnit in 'frmGiftCardUnit.pas' {frmGiftCardDialog},
  frmAddProductUnit in 'frmAddProductUnit.pas' {frmAddProductDialog},
  CashRegisterUtils in 'CashRegisterUtils.pas',
  frmLoginUnit in 'frmLoginUnit.pas' {frmLogin},
  frmOverrideUnit in 'frmOverrideUnit.pas' {frmOverride},
  frmSearchOnHoldUnit in 'frmSearchOnHoldUnit.pas' {frmSearchOnHoldDialog},
  Vcl.Themes,
  Vcl.Styles,
  frmSearchSupplierUnit in 'frmSearchSupplierUnit.pas' {frmSelectSupplier},
  frmSelectProductUnit in 'frmSelectProductUnit.pas' {frmSelectProductDialog},
  frmAddGiftCardUnit in 'frmAddGiftCardUnit.pas' {frmAddGiftCardDialog},
  repfrm in 'repfrm.pas' {RepForm},
  CheckPrevious in 'CheckPrevious.pas',
  QuricolCode in 'QuricolCode.pas',
  custUnit in 'custUnit.pas' {custform},
  frmtaskunit in 'frmtaskunit.pas' {TaskForm};

{$R *.res}

begin
if not CheckPrevious.RestoreIfRunning(Application.Handle, 1) then
        begin
    Application.Initialize;
        try
           // Application.MainFormOnTaskBar := True;
            Application.ShowMainForm := false;
            Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(Ttilldm, tilldm);
  Application.CreateForm(TfrmPayment, frmPayment);
  Application.CreateForm(TfrmNumberInputDialog, frmNumberInputDialog);
  Application.CreateForm(TfrmSearchProductsDialog, frmSearchProductsDialog);
  Application.CreateForm(TfrmDisplayDialog, frmDisplayDialog);
  Application.CreateForm(TfrmKeyboard, frmKeyboard);
  Application.CreateForm(TfrmRefundDialog, frmRefundDialog);
  Application.CreateForm(TfrmReturnDialog, frmReturnDialog);
  Application.CreateForm(TfrmGiftCardDialog, frmGiftCardDialog);
  Application.CreateForm(TfrmAddProductDialog, frmAddProductDialog);
  Application.CreateForm(TfrmOverride, frmOverride);
  Application.CreateForm(TfrmSearchOnHoldDialog, frmSearchOnHoldDialog);
  Application.CreateForm(TfrmSelectSupplier, frmSelectSupplier);
  Application.CreateForm(TfrmSelectProductDialog, frmSelectProductDialog);
  Application.CreateForm(TfrmAddGiftCardDialog, frmAddGiftCardDialog);
  Application.CreateForm(TRepForm, RepForm);
  Application.CreateForm(Tcustform, custform);
  Application.CreateForm(TTaskForm, TaskForm);
  frmLogin.Show;
        finally

        end;

    Application.Run;
end;
end.
