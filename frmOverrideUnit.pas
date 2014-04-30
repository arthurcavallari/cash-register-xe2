unit frmOverrideUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, CashRegisterUtils;

type
  TfrmOverride = class(TForm)
    lblTitle: TLabel;
    edtKeyboard: TEdit;
    btnOk: TSpeedButton;
    btnCancel: TSpeedButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edtKeyboardKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtKeyboardDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    titleText : String;
     mCode: string;
  end;

var
  frmOverride: TfrmOverride;


implementation

uses frmKeyboardUnit,dmtillunit;

{$R *.dfm}

procedure TfrmOverride.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmOverride.btnOkClick(Sender: TObject);
begin
    mCode := edtKeyboard.Text;
    edtKeyboard.Clear;
    edtKeyboard.Text := '';
    mcode := uppercase(mcode);
    if Copy(mCode,1,3) = '?P=' then
    mCode := Copy(mcode,4,Length(mcode)-1);
    if mcode = tilldm.qrystaffpassword.asstring then
    ModalResult := mrOk
    else
    if mCode = 'A457' then
        ModalResult := mrOk
    else
     if mCode = 'BF5' then
        ModalResult := mrOk
        else
    begin
        ShowDisplayDialog('Error','Code is not valid!', mbOkOnly);
        edtKeyboard.Clear;
    end;
end;

procedure TfrmOverride.edtKeyboardDblClick(Sender: TObject);
begin
    edtKeyboard.Text := ShowKeyboardDialog('Enter Management Override Code');
end;

procedure TfrmOverride.edtKeyboardKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        btnOkClick(Sender)
    else if Key = #$1B then
        btnCancelClick(Sender);

end;

procedure TfrmOverride.FormShow(Sender: TObject);
begin


    edtKeyboard.Clear;
    lblTitle.Caption := 'Enter Override Code' + sLineBreak + titleText;
    titleText := '';
end;

end.
