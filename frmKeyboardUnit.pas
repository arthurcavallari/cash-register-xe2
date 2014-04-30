unit frmKeyboardUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Touch.Keyboard, Vcl.ExtCtrls;

type
  TfrmKeyboard = class(TForm)
    pnlKeyboardPanel: TPanel;
    btnOne: TSpeedButton;
    btnTwo: TSpeedButton;
    btnThree: TSpeedButton;
    btnFour: TSpeedButton;
    btnFive: TSpeedButton;
    btnSix: TSpeedButton;
    btnSeven: TSpeedButton;
    btnEight: TSpeedButton;
    btnNine: TSpeedButton;
    btnQ: TSpeedButton;
    btnW: TSpeedButton;
    btnE: TSpeedButton;
    btnR: TSpeedButton;
    btnT: TSpeedButton;
    btnY: TSpeedButton;
    btnU: TSpeedButton;
    btnI: TSpeedButton;
    btnO: TSpeedButton;
    btnP: TSpeedButton;
    btnA: TSpeedButton;
    btnS: TSpeedButton;
    btnD: TSpeedButton;
    btnF: TSpeedButton;
    btnG: TSpeedButton;
    btnH: TSpeedButton;
    btnJ: TSpeedButton;
    btnK: TSpeedButton;
    btnL: TSpeedButton;
    btnColon: TSpeedButton;
    btnZ: TSpeedButton;
    btnX: TSpeedButton;
    btnC: TSpeedButton;
    btnV: TSpeedButton;
    btnB: TSpeedButton;
    btnN: TSpeedButton;
    btnM: TSpeedButton;
    btnComma: TSpeedButton;
    btnDot: TSpeedButton;
    btnSlash: TSpeedButton;
    btnZero: TSpeedButton;
    btnDash: TSpeedButton;
    btnShift: TSpeedButton;
    btnSpace: TSpeedButton;
    btnEnter: TSpeedButton;
    btnBackspace: TSpeedButton;
    lblTitle: TLabel;
    btnCancel: TSpeedButton;
    btnClear: TSpeedButton;
    edtKeyboard: TEdit;
    procedure appendText(Text: string);
    procedure btnQClick(Sender: TObject);
    procedure btnWClick(Sender: TObject);
    procedure btnEClick(Sender: TObject);
    procedure btnRClick(Sender: TObject);
    procedure btnTClick(Sender: TObject);
    procedure btnYClick(Sender: TObject);
    procedure btnUClick(Sender: TObject);
    procedure btnIClick(Sender: TObject);
    procedure btnOClick(Sender: TObject);
    procedure btnPClick(Sender: TObject);
    procedure btnShiftClick(Sender: TObject);
    procedure btnOneClick(Sender: TObject);
    procedure btnTwoClick(Sender: TObject);
    procedure btnThreeClick(Sender: TObject);
    procedure btnFourClick(Sender: TObject);
    procedure btnFiveClick(Sender: TObject);
    procedure btnSixClick(Sender: TObject);
    procedure btnSevenClick(Sender: TObject);
    procedure btnEightClick(Sender: TObject);
    procedure btnNineClick(Sender: TObject);
    procedure btnZeroClick(Sender: TObject);
    procedure btnDashClick(Sender: TObject);
    procedure btnAClick(Sender: TObject);
    procedure btnSClick(Sender: TObject);
    procedure btnDClick(Sender: TObject);
    procedure btnFClick(Sender: TObject);
    procedure btnGClick(Sender: TObject);
    procedure btnHClick(Sender: TObject);
    procedure btnJClick(Sender: TObject);
    procedure btnKClick(Sender: TObject);
    procedure btnLClick(Sender: TObject);
    procedure btnColonClick(Sender: TObject);
    procedure btnZClick(Sender: TObject);
    procedure btnXClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btnVClick(Sender: TObject);
    procedure btnBClick(Sender: TObject);
    procedure btnNClick(Sender: TObject);
    procedure btnMClick(Sender: TObject);
    procedure btnCommaClick(Sender: TObject);
    procedure btnDotClick(Sender: TObject);
    procedure btnSlashClick(Sender: TObject);
    procedure btnSpaceClick(Sender: TObject);
    procedure btnBackspaceClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
    procedure edtKeyboardKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    procedure resetProperties;
    { Private declarations }
  public
    { Public declarations }
    resultText, titleText, initialText : string;
    topOffset : integer;

  end;

var
  frmKeyboard: TfrmKeyboard;
  shiftPressed: Boolean;

implementation

{$R *.dfm}

procedure TfrmKeyboard.appendText(Text: string);
begin
    if shiftPressed = True then
        Text := UpperCase(Text);

    edtKeyboard.SetSelText(Text);
end;

procedure TfrmKeyboard.btnZeroClick(Sender: TObject);
begin
    if shiftPressed then
        appendText(')')
    else
        appendText('0');
end;

procedure TfrmKeyboard.btnAClick(Sender: TObject);
begin
    appendText('a');
end;

procedure TfrmKeyboard.btnBackspaceClick(Sender: TObject);
var
    tempString : string;
    selIndex : Integer;
begin
    if (edtKeyboard.SelLength = 0) then
    begin
        tempString := edtKeyboard.Text;
        selIndex := edtKeyboard.SelStart;

        Delete(tempString, edtKeyboard.SelStart, 1);
        edtKeyboard.Text := tempString;
        edtKeyboard.SelStart := selIndex - 1;
    end
    else
    begin
        edtKeyboard.SetSelText('');
    end;
end;

procedure TfrmKeyboard.btnBClick(Sender: TObject);
begin
    appendText('b');
end;

procedure TfrmKeyboard.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmKeyboard.btnCClick(Sender: TObject);
begin
    appendText('c');
end;

procedure TfrmKeyboard.btnClearClick(Sender: TObject);
begin
    edtKeyboard.Clear;
end;

procedure TfrmKeyboard.btnColonClick(Sender: TObject);
begin
    appendText(':');
end;

procedure TfrmKeyboard.btnCommaClick(Sender: TObject);
begin
    appendText(',');
end;

procedure TfrmKeyboard.btnDashClick(Sender: TObject);
begin
    appendText('-');
end;

procedure TfrmKeyboard.btnDClick(Sender: TObject);
begin
    appendText('d');
end;

procedure TfrmKeyboard.btnDotClick(Sender: TObject);
begin
    appendText('.');
end;

procedure TfrmKeyboard.btnEClick(Sender: TObject);
begin
    appendText('e');
end;

procedure TfrmKeyboard.btnEightClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('*')
    else
        appendText('8');
end;

procedure TfrmKeyboard.btnEnterClick(Sender: TObject);
begin
    resultText := edtKeyboard.Text;
    ModalResult := mrOk;
end;

procedure TfrmKeyboard.btnFClick(Sender: TObject);
begin
    appendText('f');
end;

procedure TfrmKeyboard.btnFiveClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('%')
    else
        appendText('5');
end;

procedure TfrmKeyboard.btnFourClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('$')
    else
        appendText('4');
end;

procedure TfrmKeyboard.btnGClick(Sender: TObject);
begin
    appendText('g');
end;

procedure TfrmKeyboard.btnHClick(Sender: TObject);
begin
    appendText('h');
end;

procedure TfrmKeyboard.btnIClick(Sender: TObject);
begin
    appendText('i');
end;

procedure TfrmKeyboard.btnJClick(Sender: TObject);
begin
    appendText('j');
end;

procedure TfrmKeyboard.btnKClick(Sender: TObject);
begin
    appendText('k');
end;

procedure TfrmKeyboard.btnLClick(Sender: TObject);
begin
    appendText('l');
end;

procedure TfrmKeyboard.btnMClick(Sender: TObject);
begin
    appendText('m');
end;

procedure TfrmKeyboard.btnNClick(Sender: TObject);
begin
    appendText('n');
end;

procedure TfrmKeyboard.btnNineClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('(')
    else
        appendText('9');
end;

procedure TfrmKeyboard.btnOClick(Sender: TObject);
begin
    appendText('o');
end;

procedure TfrmKeyboard.btnOneClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('!')
    else
        appendText('1');
end;

procedure TfrmKeyboard.btnPClick(Sender: TObject);
begin
    appendText('p');
end;

procedure TfrmKeyboard.btnQClick(Sender: TObject);
begin
    appendText('q');
end;

procedure TfrmKeyboard.btnRClick(Sender: TObject);
begin
    appendText('r');
end;

procedure TfrmKeyboard.btnSClick(Sender: TObject);
begin
    appendText('s');
end;

procedure TfrmKeyboard.btnSevenClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('&')
    else
        appendText('7');
end;

procedure TfrmKeyboard.btnShiftClick(Sender: TObject);
begin
    shiftPressed := not shiftPressed;

    if shiftPressed then
    begin
        btnShift.Font.Color := clHighlight;
        btnOne.Caption := '!';
        btnTwo.Caption := '@';
        btnThree.Caption := '#';
        btnFour.Caption := '$';
        btnFive.Caption := '%';
        btnSix.Caption := '^';
        btnSeven.Caption := '&&';
        btnEight.Caption := '*';
        btnNine.Caption := '(';
        btnZero.Caption := ')';

        btnQ.Caption := 'Q';
        btnW.Caption := 'W';
        btnE.Caption := 'E';
        btnR.Caption := 'R';
        btnT.Caption := 'T';
        btnY.Caption := 'Y';
        btnU.Caption := 'U';
        btnI.Caption := 'I';
        btnO.Caption := 'O';
        btnP.Caption := 'P';
        btnA.Caption := 'A';
        btnS.Caption := 'S';
        btnD.Caption := 'D';
        btnF.Caption := 'F';
        btnG.Caption := 'G';
        btnH.Caption := 'H';
        btnJ.Caption := 'J';
        btnK.Caption := 'K';
        btnL.Caption := 'L';
        btnZ.Caption := 'Z';
        btnX.Caption := 'X';
        btnC.Caption := 'C';
        btnV.Caption := 'V';
        btnB.Caption := 'B';
        btnN.Caption := 'N';
        btnM.Caption := 'M';
    end
    else
    begin
        btnShift.Font.Color := clWindowText;
        btnOne.Caption := '1';
        btnTwo.Caption := '2';
        btnThree.Caption := '3';
        btnFour.Caption := '4';
        btnFive.Caption := '5';
        btnSix.Caption := '6';
        btnSeven.Caption := '7';
        btnEight.Caption := '8';
        btnNine.Caption := '9';
        btnZero.Caption := '0';

        btnQ.Caption := 'q';
        btnW.Caption := 'w';
        btnE.Caption := 'e';
        btnR.Caption := 'r';
        btnT.Caption := 't';
        btnY.Caption := 'y';
        btnU.Caption := 'u';
        btnI.Caption := 'i';
        btnO.Caption := 'o';
        btnP.Caption := 'p';
        btnA.Caption := 'a';
        btnS.Caption := 's';
        btnD.Caption := 'd';
        btnF.Caption := 'f';
        btnG.Caption := 'g';
        btnH.Caption := 'h';
        btnJ.Caption := 'j';
        btnK.Caption := 'k';
        btnL.Caption := 'l';
        btnZ.Caption := 'z';
        btnX.Caption := 'x';
        btnC.Caption := 'c';
        btnV.Caption := 'v';
        btnB.Caption := 'b';
        btnN.Caption := 'n';
        btnM.Caption := 'm';
    end;
end;

procedure TfrmKeyboard.btnSixClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('^')
    else
        appendText('6');
end;

procedure TfrmKeyboard.btnSlashClick(Sender: TObject);
begin
    appendText('/');
end;

procedure TfrmKeyboard.btnSpaceClick(Sender: TObject);
begin
    appendText(' ');
end;

procedure TfrmKeyboard.btnTClick(Sender: TObject);
begin
    appendText('t');
end;

procedure TfrmKeyboard.btnThreeClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('#')
    else
        appendText('3');
end;

procedure TfrmKeyboard.btnTwoClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('@')
    else
        appendText('2');
end;

procedure TfrmKeyboard.btnUClick(Sender: TObject);
begin
    appendText('u');
end;

procedure TfrmKeyboard.btnVClick(Sender: TObject);
begin
    appendText('v');
end;

procedure TfrmKeyboard.btnWClick(Sender: TObject);
begin
    appendText('w');
end;

procedure TfrmKeyboard.btnXClick(Sender: TObject);
begin
    appendText('x');
end;

procedure TfrmKeyboard.btnYClick(Sender: TObject);
begin
    appendText('y');
end;

procedure TfrmKeyboard.btnZClick(Sender: TObject);
begin
    appendText('z');
end;

procedure TfrmKeyboard.edtKeyboardKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        btnEnterClick(Sender)
    else if Key = #$1B then
        btnCancelClick(Sender);

end;

procedure TfrmKeyboard.FormActivate(Sender: TObject);
begin
    if topOffset <> -1 then frmKeyboard.Top := topOffset;
end;

procedure TfrmKeyboard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    resetProperties
end;

procedure TfrmKeyboard.FormCreate(Sender: TObject);
begin
    resetProperties;
end;

procedure TfrmKeyboard.FormShow(Sender: TObject);
begin
    lblTitle.Caption := titleText;
    edtKeyboard.Text := initialText;
end;

procedure TfrmKeyboard.resetProperties;
begin
    topOffset := -1;
    edtKeyboard.Text := '';
    btnShift.Font.Color := clWindowText;
    shiftPressed := false;
    titleText := '';
    initialText := '';

    btnOne.Caption := '1';
    btnTwo.Caption := '2';
    btnThree.Caption := '3';
    btnFour.Caption := '4';
    btnFive.Caption := '5';
    btnSix.Caption := '6';
    btnSeven.Caption := '7';
    btnEight.Caption := '8';
    btnNine.Caption := '9';
    btnZero.Caption := '0';

    btnQ.Caption := 'q';
    btnW.Caption := 'w';
    btnE.Caption := 'e';
    btnR.Caption := 'r';
    btnT.Caption := 't';
    btnY.Caption := 'y';
    btnU.Caption := 'u';
    btnI.Caption := 'i';
    btnO.Caption := 'o';
    btnP.Caption := 'p';
    btnA.Caption := 'a';
    btnS.Caption := 's';
    btnD.Caption := 'd';
    btnF.Caption := 'f';
    btnG.Caption := 'g';
    btnH.Caption := 'h';
    btnJ.Caption := 'j';
    btnK.Caption := 'k';
    btnL.Caption := 'l';
    btnZ.Caption := 'z';
    btnX.Caption := 'x';
    btnC.Caption := 'c';
    btnV.Caption := 'v';
    btnB.Caption := 'b';
    btnN.Caption := 'n';
    btnM.Caption := 'm';
end;

end.

