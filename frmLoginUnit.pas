unit frmLoginUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ResizeKit, Vcl.Buttons, db, CashRegisterUtils, Data.Win.ADODB, System.Generics.Collections;
type
    TSpeedButtonPtr = ^TSpeedButton;

type
  TfrmLogin = class(TForm)
    pnlKeyboard: TPanel;
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
    btnZ: TSpeedButton;
    btnX: TSpeedButton;
    btnC: TSpeedButton;
    btnV: TSpeedButton;
    btnB: TSpeedButton;
    btnN: TSpeedButton;
    btnM: TSpeedButton;
    btnZero: TSpeedButton;
    btnShift: TSpeedButton;
    btnEnter: TSpeedButton;
    btnBackspace: TSpeedButton;
    pnlUserId: TPanel;
    lblTitle: TLabel;
    edtKeyboard: TEdit;
    ResizeKit1: TResizeKit;
    btnCancel: TSpeedButton;
    pnlQuickLogin: TGridPanel;
    pnlErrorMessage: TPanel;
    Panel1: TPanel;
    btnCloseProgram: TSpeedButton;
    lblName: TLabel;
    tmrUpdateGui: TTimer;
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
    procedure dynamicButtonClick(Sender: TObject);
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
    procedure btnBackspaceClick(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
    procedure edtKeyboardKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelClick(Sender: TObject);
    procedure authenticateUserId(Id: string);
    procedure authenticatePassword(pass: string);
    procedure changeState(state: Boolean);
    procedure resetProperties();
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmrUpdateGuiTimer(Sender: TObject);
    procedure btnCloseProgramClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure createButtons;
    procedure updateGui;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  shiftPressed: Boolean;
  loginState, firstRun: Boolean;
  lastTop, lastLeft : integer;
  objList : System.Generics.Collections.TList<TSpeedButton>;


implementation

uses dmtillunit, frmMainTillUnit;

{$R *.dfm}

procedure TfrmLogin.resetProperties;
begin
    changeState(False);
end;

procedure TfrmLogin.tmrUpdateGuiTimer(Sender: TObject);
begin
  updateGui;
end;

procedure TfrmLogin.changeState(state: Boolean);
begin
    loginState := state;
    if state = False then
    begin
        lblTitle.Caption := 'Enter User ID:';
        edtKeyboard.Clear;
    end
    else
    begin
        lblTitle.Caption := 'Enter Password:';
        edtKeyboard.Clear;
    end;

end;

procedure TfrmLogin.authenticatePassword(pass: string);
begin
    if tilldm.qryStaffpassword.AsString = pass then
    begin
        frmMain.mStaff := tilldm.qryStaffuserId.AsString;
        frmMain.Show;
        frmLogin.Hide;
    end
    else
    begin
        ShowDisplayDialog('Error','Password is not valid!', mbOkOnly);
        edtKeyboard.Clear;
    end;
end;

procedure TfrmLogin.authenticateUserId(Id: string);
begin
    // Check DB to ensure user exists
    if tilldm.qryStaff.Locate('userId', Id, [loCaseInsensitive]) then
    begin
        frmMain.mStaff := tilldm.qryStaffuserId.AsString;
        frmMain.Show;
        frmLogin.Hide;
        // Disabled need for password
        //changeState(True)
    end
    else
    begin
        ShowDisplayDialog('Error','User ID is not valid!', mbOkOnly);
        edtKeyboard.Clear;
    end;
end;

procedure TfrmLogin.appendText(Text: string);
begin
    if shiftPressed = True then
        Text := UpperCase(Text);

    edtKeyboard.SetSelText(Text);
end;

procedure TfrmLogin.btnZeroClick(Sender: TObject);
begin
    if shiftPressed then
        appendText(')')
    else
        appendText('0');
end;

procedure TfrmLogin.btnAClick(Sender: TObject);
begin
    appendText('a');
end;

procedure TfrmLogin.btnBackspaceClick(Sender: TObject);
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

procedure TfrmLogin.btnBClick(Sender: TObject);
begin
    appendText('b');
end;

procedure TfrmLogin.btnCClick(Sender: TObject);
begin
    appendText('c');
end;

procedure TfrmLogin.btnCloseProgramClick(Sender: TObject);
begin
    frmLogin.Close;
end;

procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
    resetProperties;
end;

procedure TfrmLogin.btnColonClick(Sender: TObject);
begin
    appendText(':');
end;

procedure TfrmLogin.btnDClick(Sender: TObject);
begin
    appendText('d');
end;

procedure TfrmLogin.btnEClick(Sender: TObject);
begin
    appendText('e');
end;

procedure TfrmLogin.btnEightClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('*')
    else
        appendText('8');
end;

procedure TfrmLogin.btnEnterClick(Sender: TObject);
var idt :  Integer;
sql : string;
begin
    // Username Authentication State
  {  if loginState = False then
    begin
        authenticateUserId(edtKeyboard.Text);
    end
    else
    // Password Authentication State
    begin
        authenticatePassword(edtKeyboard.Text);
    end;   }
 if Pos('?P=', edtkeyboard.text) <> 0 then
    begin

    edtkeyboard.text:= copy(edtkeyboard.text,4,length(edtkeyboard.text)-1);
    end;

  tilldm.qryStafflook.Close;
            tilldm.qryStafflook.Open;
      if   tilldm.qryStafflook.Locate('password', edtkeyboard.text, [loCaseInsensitive]) then
      begin
       idt := tilldm.qrystafflookid.Value;
           tilldm.qryStaff.first;

        if tilldm.qryStaff.Locate('Id', idt, [loCaseInsensitive]) then
        begin
            frmLogin.pnlErrorMessage.Caption := '';
            frmLogin.pnlErrorMessage.Visible := false;
            // TODO: Force logout any other machines using this username
            // TCP/IP connection?
            if tilldm.qryStaffport.AsString <> '0' then


            begin
                frmMain.sendRemoteLogout(tilldm.qryStaffport.AsString);
            end;
            SQL := 'UPDATE staff SET port=' + QuotedStr(string(frmMain.TcpServer1.LocalPort)) + ' WHERE id=' + tilldm.qryStaffId.AsString;
            tilldm.conLocalSQL.Execute(SQL);
            //tilldm.qryStaff.Edit;
            //tilldm.qryStaffport.AsString := frmMain.TcpServer1.LocalPort;
            //tilldm.qryStafflastActive.AsDateTime := Now;
            //tilldm.qryStaff.Post;
            tilldm.qryStaff.Close;
            tilldm.qryStaff.Open;
            tilldm.qryStaff.Locate('Id', idt, [loCaseInsensitive]);
            frmMain.mStaff := tilldm.qryStaffuserId.AsString;
            frmLogin.Update;
            frmLogin.Hide;
            frmMain.firstRun := True;
            frmmain.prepareuser;
            frmMain.Show;
          {  frmMain.Refresh;
            frmMain.Repaint;  }

            // Disabled need for password
            //changeState(True)

      end;
      end;
end;

procedure TfrmLogin.btnFClick(Sender: TObject);
begin
    appendText('f');
end;

procedure TfrmLogin.btnFiveClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('%')
    else
        appendText('5');
end;

procedure TfrmLogin.btnFourClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('$')
    else
        appendText('4');
end;

procedure TfrmLogin.btnGClick(Sender: TObject);
begin
    appendText('g');
end;

procedure TfrmLogin.btnHClick(Sender: TObject);
begin
    appendText('h');
end;

procedure TfrmLogin.btnIClick(Sender: TObject);
begin
    appendText('i');
end;

procedure TfrmLogin.btnJClick(Sender: TObject);
begin
    appendText('j');
end;

procedure TfrmLogin.btnKClick(Sender: TObject);
begin
    appendText('k');
end;

procedure TfrmLogin.btnLClick(Sender: TObject);
begin
    appendText('l');
end;

procedure TfrmLogin.btnMClick(Sender: TObject);
begin
    appendText('m');
end;

procedure TfrmLogin.btnNClick(Sender: TObject);
begin
    appendText('n');
end;

procedure TfrmLogin.btnNineClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('(')
    else
        appendText('9');
end;

procedure TfrmLogin.btnOClick(Sender: TObject);
begin
    appendText('o');
end;

procedure TfrmLogin.btnOneClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('!')
    else
        appendText('1');
end;

procedure TfrmLogin.btnPClick(Sender: TObject);
begin
    appendText('p');
end;

procedure TfrmLogin.btnQClick(Sender: TObject);
begin
    appendText('q');
end;

procedure TfrmLogin.btnRClick(Sender: TObject);
begin
    appendText('r');
end;

procedure TfrmLogin.btnSClick(Sender: TObject);
begin
    appendText('s');
end;

procedure TfrmLogin.btnSevenClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('&')
    else
        appendText('7');
end;

procedure TfrmLogin.btnShiftClick(Sender: TObject);
begin
    shiftPressed := not shiftPressed;

    if shiftPressed then
    begin
        btnShift.Font.Color := clHighlight;
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

procedure TfrmLogin.btnSixClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('^')
    else
        appendText('6');
end;

procedure TfrmLogin.btnTClick(Sender: TObject);
begin
    appendText('t');
end;

procedure TfrmLogin.btnThreeClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('#')
    else
        appendText('3');
end;

procedure TfrmLogin.btnTwoClick(Sender: TObject);
begin
    if shiftPressed then
        appendText('@')
    else
        appendText('2');
end;

procedure TfrmLogin.btnUClick(Sender: TObject);
begin
    appendText('u');
end;

procedure TfrmLogin.btnVClick(Sender: TObject);
begin
    appendText('v');
end;

procedure TfrmLogin.btnWClick(Sender: TObject);
begin
    appendText('w');
end;

procedure TfrmLogin.btnXClick(Sender: TObject);
begin
    appendText('x');
end;

procedure TfrmLogin.btnYClick(Sender: TObject);
begin
    appendText('y');
end;

procedure TfrmLogin.btnZClick(Sender: TObject);
begin
    appendText('z');
end;

procedure TfrmLogin.edtKeyboardKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        btnEnterClick(Sender);
        key := #0;
    end
    else if Key = #$1B then
    begin
        resetProperties;
        key := #0;
    end;

end;

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
     updateGui;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frmMain.TcpServer1.Close;
    frmMain.TcpClient1.Close;
    Application.Terminate;
end;

procedure TfrmLogin.createButtons;
var
  newBtn: TSpeedButton;

begin
    //tilldm.qryStaff.Close;
    if tilldm.qryStaff.Active = false then tilldm.qryStaff.Open;
     tilldm.qryStaff.First;
    //pnlQuickLogin.ColumnCollection.Clear;
    //pnlQuickLogin.RowCollection.Clear;

    if objList = nil then objList := TList<TSpeedButton>.Create();

    for newBtn in objList do
    begin
        newBtn.Destroy;
    end;
    objList.Clear;

    while not tilldm.qryStaff.Eof do
    begin

        //newBtnPtr := TSpeedButtonPtr(TSpeedButton.Create(Self));
        newBtn := (TSpeedButton.Create(Self));
        //newBtn := newBtnPtr^;
        newBtn.Name := 'dynamicButton' + tilldm.qryStaffuserId.AsString;
        newBtn.Caption := tilldm.qryStafffirstName.AsString + ' ' + tilldm.qryStafflastName.AsString;
        newBtn.Width := 170;
        newBtn.Height := 150;
        newBtn.Font.Style := newBtn.Font.Style + [fsBold];
        newBtn.Font.Size := 10;
        newBtn.Font.Name := 'Verdana';
        newBtn.OnClick := dynamicButtonClick;
        newBtn.Visible := True;
        newBtn.Parent := pnlQuickLogin;
        newBtn.Tag := tilldm.qryStaffid.Value;
        objList.Add(newBtn);

        tilldm.qryStaff.Next;
    end;
    firstRun := false;




end;

procedure TfrmLogin.updateGui;
begin
  lblName.Caption := 'Cash Register - ' + FormatDateTime('dd/mm/yyyy hh:mm AM/PM', Now);
  frmLogin.Caption := 'Cash Register - ' + FormatDateTime('dd/mm/yyyy hh:mm AM/PM', Now);
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
    lastTop := 0;
    lastLeft := 0;
    resetProperties;
    firstRun := True;

end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
    frmMain.Hide;
    if firstRun then createButtons;

    resetProperties;
end;

procedure TfrmLogin.dynamicButtonClick(Sender: TObject);
var
    SQL : string;
    idt : integer;
begin
    if Sender.ClassNameIs('TSpeedButton') then
    begin
            tilldm.qryStaff.first;
        idt := (Sender as TSpeedButton).Tag;
        if tilldm.qryStaff.Locate('Id', idt, [loCaseInsensitive]) then
        begin
            frmLogin.pnlErrorMessage.Caption := '';
            frmLogin.pnlErrorMessage.Visible := false;
            // TODO: Force logout any other machines using this username
            // TCP/IP connection?

            if tilldm.qryStaffport.AsString <> '0' then
            begin
             SQL := 'select *, concat_ws(" ", firstName, lastName) AS fullName from staff where port = '+quotedstr(tilldm.qryStaffport.AsString)+' and Userid <> '+quotedstr(tilldm.qryStaffuserId.AsString);
             tilldm.QryPortCheck.Close;
             tilldm.QryPortCheck.SQL.Clear;
             tilldm.QryPortCheck.SQL.Add(sql);
             tilldm.QryPortCheck.open;
              tilldm.QryPortCheck.Last;
              tilldm.QryPortCheck.first;
            if tilldm.QryPortCheck.RecordCount = 0 then
            begin
                frmMain.sendRemoteLogout(tilldm.qryStaffport.AsString);
            end;

            tilldm.QryPortCheck.Close;

            end;

            SQL := 'UPDATE staff SET port=' + QuotedStr(string(frmMain.TcpServer1.LocalPort)) + ' WHERE id=' + tilldm.qryStaffId.AsString;
            tilldm.conLocalSQL.Execute(SQL);
            //tilldm.qryStaff.Edit;
            //tilldm.qryStaffport.AsString := frmMain.TcpServer1.LocalPort;
            //tilldm.qryStafflastActive.AsDateTime := Now;
            //tilldm.qryStaff.Post;
            tilldm.qryStaff.Close;
            tilldm.qryStaff.Open;
            tilldm.qryStaff.Locate('Id', idt, [loCaseInsensitive]);
            frmMain.mStaff := tilldm.qryStaffuserId.AsString;
            frmLogin.Update;
            frmLogin.Hide;
            frmMain.firstRun := True;
            frmmain.prepareuser;
            frmMain.Show;
          {  frmMain.Refresh;
            frmMain.Repaint;  }

            // Disabled need for password
            //changeState(True)
        end;
    end
    else
    begin
        ShowMessage('Not a TSpeedButton');
    end;
end;

end.
