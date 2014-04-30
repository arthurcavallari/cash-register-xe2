unit frmDisplayUnit;

interface


uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Dialogs, CashRegisterUtils;

const
    Ok_OkOnlyLeft = 150;
    Ok_OkCancelLeft = 8;
    Yes_YesNoLeft = 8;
    No_YesNoLeft = 280;
    No_YesNoCancelLeft = 115;
    displayDefaultFontSize = 12;
    displayLargeFontSize = 26;

type
  TfrmDisplayDialog = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    pnlCap: TPanel;
    lblDisplay: TLabel;
    lblTitle: TLabel;
    btnNo: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

   private
    procedure resetProperties;


    { Private declarations }
  public
    { Public declarations }
    titleText, dialogText : string;
    errorMessage, largeFont : Boolean;
    dlgButtons : TDisplayDlgBtn;


  end;


var
  frmDisplayDialog: TfrmDisplayDialog;


implementation




{$R *.dfm}

procedure TfrmDisplayDialog.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmDisplayDialog.resetProperties;
begin
    titleText := '';
    dialogText := '';
    errorMessage := false;
    largeFont := false;
    dlgButtons := mbOKCancel;
    btnNo.Visible := false;
    btnOK.Left := 8;
end;

procedure TfrmDisplayDialog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frmDisplayDialog.Hide;
    resetProperties;
end;

procedure TfrmDisplayDialog.FormCreate(Sender: TObject);
begin
    resetProperties;
end;

procedure TfrmDisplayDialog.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #$1B then btnCancelClick(Sender);
end;

procedure TfrmDisplayDialog.FormShow(Sender: TObject);
begin
    lblTitle.Caption := titleText;
    lblDisplay.Caption := dialogText;

    if dlgButtons = mbOKCancel then
    begin
        btnOK.Left := Ok_OkCancelLeft;
        btnOK.Caption := 'OK';
        btnCancel.Visible := True
    end
    else if dlgButtons = mbOkOnly then
    begin
        btnOK.Left := Ok_OkOnlyLeft;
        btnOK.Caption := 'OK';
        btnCancel.Visible := False;
    end
    else if dlgButtons = mbYesNo then
    begin
        btnOK.Left := Yes_YesNoLeft;
        btnOK.Caption := 'Yes';

        btnNo.Left := No_YesNoLeft;
        btnNo.Visible := true;

        btnCancel.Visible := False;
    end
    else if dlgButtons = mbYesNoCancel then
    begin
        btnOK.Left := Yes_YesNoLeft;
        btnOK.Caption := 'Yes';

        btnNo.Left := No_YesNoCancelLeft;
        btnNo.Visible := true;

        btnCancel.Visible := True;
    end;

    if errorMessage then
        lblTitle.Font.Color := clRed
    else
        lblTitle.Font.Color := clBlue;

    if largeFont then
        lblDisplay.Font.Size := displayLargeFontSize
    else
        lblDisplay.Font.Size := displayDefaultFontSize;

end;

procedure TfrmDisplayDialog.btnNoClick(Sender: TObject);
begin
    ModalResult := mrNo;
end;

procedure TfrmDisplayDialog.btnOKClick(Sender: TObject);
begin
    ModalResult := mrOK;
end;

end.
