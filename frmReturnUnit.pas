unit frmReturnUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmReturnDialog = class(TForm)
    rgReturnReason: TRadioGroup;
    btnOK: TSpeedButton;
    btnCancel: TSpeedButton;
    edtReturnReason: TEdit;
    lblOtherReason: TLabel;
    grpReturnReason: TGroupBox;
    btnDamaged: TSpeedButton;
    btnDontWant: TSpeedButton;
    btnWrongProduct: TSpeedButton;
    btnOther: TSpeedButton;
    procedure edtReturnReasonDblClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    function getReturnType() : string;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtReturnReasonKeyPress(Sender: TObject; var Key: Char);
    procedure grpReturnReasonClick(Sender: TObject);
    function getReturnTypeFromName(reasonType : string) : Integer;
  private
    procedure resetProperties;
    { Private declarations }
  public
    { Public declarations }
    returnType, returnReason, initialReturnReason, initialReturnType : string;
  end;

var
  frmReturnDialog: TfrmReturnDialog;

implementation

uses dmtillunit, CashRegisterUtils;

{$R *.dfm}

procedure TfrmReturnDialog.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

function TfrmReturnDialog.getReturnType() : string;
begin
{
Damaged
Wrong Product
Don't Want
Other
}
    case grpReturnReason.Tag of
        0:
            result := 'DAMAGED';
        1:
            result := 'DON''T WANT';
        2:
            result := 'WRONG PRODUCT';
        3:
            result := 'OTHER';
    else
        Result := 'ERROR';
    end;
end;

function TfrmReturnDialog.getReturnTypeFromName(reasonType : string) : Integer;
begin
{
Damaged
Wrong Product
Don't Want
Other
}
    if reasonType = 'DAMAGED' then
    begin
        result := 0;
    end
    else if reasonType = 'DON''T WANT' then
    begin
        result := 1;
    end
    else if reasonType = 'WRONG PRODUCT' then
    begin
        result := 2;
    end
    else if reasonType = 'OTHER' then
    begin
        result := 3;
    end
    else
    begin
        Result := -1;
    end;
end;

procedure TfrmReturnDialog.grpReturnReasonClick(Sender: TObject);
begin
    grpReturnReason.Tag := (Sender as TSpeedButton).Tag;
end;

procedure TfrmReturnDialog.btnOKClick(Sender: TObject);
begin

    if grpReturnReason.Tag <> -1 then
    begin
        if grpReturnReason.Tag = 3 then
        begin
            // "Other"
            // Return reason must be written
            if edtReturnReason.Text = '' then
            begin
                ShowDisplayDialog('Error','You must give a reason why the product was returned', mbOkOnly, false, true);
            end
            else
            begin
                returnType := getReturnType();
                returnReason := edtReturnReason.Text;
                ModalResult := mrOk;
            end;
        end
        else
        begin
            // Everything else
            returnType := getReturnType();
            returnReason := edtReturnReason.Text;
            ModalResult := mrOk;
        end;
    end
    else
    begin
        ShowDisplayDialog('Error','You must give a reason why the product was returned', mbOkOnly, false, true);
    end;
end;



procedure TfrmReturnDialog.edtReturnReasonDblClick(Sender: TObject);
begin
    edtReturnReason.Text := ShowKeyboardDialog('Enter name', edtReturnReason.Text, frmReturnDialog.Top + edtReturnReason.Top + edtReturnReason.Height + 30);
end;

procedure TfrmReturnDialog.edtReturnReasonKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then btnOKClick(Sender)
    else if Key = #$1B then btnCancelClick(Sender);
end;

procedure TfrmReturnDialog.FormActivate(Sender: TObject);
var i : Integer;
begin
tilldm.qryReturnReasons.Close;
    tilldm.qryReturnReasons.Open;
    tilldm.qryReturnReasons.Last;
    tilldm.qryReturnReasons.First;
    edtReturnReason.Text := initialReturnReason;
    i := getReturnTypeFromName(initialReturnType);
    if i >= 0 then
    begin
        grpReturnReason.Tag := i;
        case grpReturnReason.Tag of
            0:
                btnDamaged.Down := true;
            1:
                btnDontWant.Down := true;
            2:
                btnWrongProduct.Down := true;
            3:
                btnOther.Down := true;
        end;
    end;
    returnReason := '';
    returnType := '';

end;

procedure TfrmReturnDialog.resetProperties;
begin
  grpReturnReason.Tag := -1;
  edtReturnReason.Clear;
  initialReturnReason := '';
  initialReturnType := '';

  btnDamaged.Down := false;
  btnWrongProduct.Down := false;
  btnOther.Down := false;
  btnDontWant.Down := false;
end;

procedure TfrmReturnDialog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frmReturnDialog.Hide;
    resetProperties;
end;

end.
