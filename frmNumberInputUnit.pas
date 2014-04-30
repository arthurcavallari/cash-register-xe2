unit frmNumberInputUnit;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.StrUtils;

type
  TfrmNumberInputDialog = class(TForm)
    lblDialogName: TLabel;
    edtNumberInput: TEdit;
    btnClear: TSpeedButton;
    pnlNumPad: TPanel;
    btnOne: TSpeedButton;
    btnTwo: TSpeedButton;
    btnThree: TSpeedButton;
    btnFour: TSpeedButton;
    btnFive: TSpeedButton;
    btnSix: TSpeedButton;
    btnSeven: TSpeedButton;
    btnEight: TSpeedButton;
    btnNine: TSpeedButton;
    btnZero: TSpeedButton;
    btnDecimalPoint: TSpeedButton;
    btnCancel: TSpeedButton;
    btnOk: TSpeedButton;
    btnDelete: TSpeedButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnSevenClick(Sender: TObject);
    procedure btnEightClick(Sender: TObject);
    procedure btnNineClick(Sender: TObject);
    procedure btnFourClick(Sender: TObject);
    procedure btnFiveClick(Sender: TObject);
    procedure btnSixClick(Sender: TObject);
    procedure btnOneClick(Sender: TObject);
    procedure btnTwoClick(Sender: TObject);
    procedure btnThreeClick(Sender: TObject);
    procedure btnZeroClick(Sender: TObject);
    procedure btnDecimalPointClick(Sender: TObject);
    procedure edtNumberInputKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumberInputKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNumberInputEnter(Sender: TObject);
    procedure edtNumberInputKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNumberInputMouseEnter(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    res : string;
    decimalPlaces : string;
    isAfterDecimalPoint : Boolean;
    function appendNumber(ch : Char) : Boolean;
    procedure resetProperties;
  public
    { Public declarations }
    dialogName, initialValue : string;
    result : double;
    result_string : string;
    integerOnly : Boolean;
    isCurrency : Boolean;
    isPercentage : Boolean;
    isNumericString : Boolean;

  end;

var
  frmNumberInputDialog: TfrmNumberInputDialog;


implementation

{$R *.dfm}

procedure TfrmNumberInputDialog.btnCancelClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmNumberInputDialog.btnClearClick(Sender: TObject);
begin
    res := '';
    edtNumberInput.Text := '';
end;

procedure TfrmNumberInputDialog.btnDecimalPointClick(Sender: TObject);
begin
    appendNumber('.');
end;

procedure TfrmNumberInputDialog.btnDeleteClick(Sender: TObject);
begin
    appendNumber(#8);
end;

procedure TfrmNumberInputDialog.btnEightClick(Sender: TObject);
begin
    appendNumber('8');
end;

procedure TfrmNumberInputDialog.btnFiveClick(Sender: TObject);
begin
    appendNumber('5');
end;

procedure TfrmNumberInputDialog.btnFourClick(Sender: TObject);
begin
    appendNumber('4');
end;

procedure TfrmNumberInputDialog.btnNineClick(Sender: TObject);
begin
    appendNumber('9');
end;

procedure TfrmNumberInputDialog.btnOkClick(Sender: TObject);
begin
    if (res = '') and (edtNumberInput.Text <> '') then
        ModalResult := mrCancel
    else if (res <> '') then
    begin
        if isNumericString then
        begin
            result_string := res;
            result := 0;
        end
        else
        begin
            result := StrToFloat(res);
            result_string := res;
        end;

        ModalResult := mrOk;
    end
    else
    begin
        if isPercentage then
        begin
            result := 0;
            ModalResult := mrOk;
        end
        else
            ModalResult := mrCancel;
    end;

end;

procedure TfrmNumberInputDialog.btnOneClick(Sender: TObject);
begin
    appendNumber('1');
end;

procedure TfrmNumberInputDialog.btnSevenClick(Sender: TObject);
begin
    appendNumber('7');
end;

procedure TfrmNumberInputDialog.btnSixClick(Sender: TObject);
begin
    appendNumber('6');
end;

procedure TfrmNumberInputDialog.btnThreeClick(Sender: TObject);
begin
    appendNumber('3');
end;

procedure TfrmNumberInputDialog.btnTwoClick(Sender: TObject);
begin
    appendNumber('2');
end;

procedure TfrmNumberInputDialog.btnZeroClick(Sender: TObject);
begin
    appendNumber('0');
end;

procedure TfrmNumberInputDialog.edtNumberInputEnter(Sender: TObject);
begin
    HideCaret(edtNumberInput.Handle);
end;

procedure TfrmNumberInputDialog.edtNumberInputKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = 46 then
    begin
        appendNumber(#8); // backspace
        Key := 0;
    end;
end;

procedure TfrmNumberInputDialog.edtNumberInputKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        btnOkClick(Sender)
    else if Key = #$1B then
        btnCancelClick(Sender)
    else
        appendNumber(Key);
    Key := #0;
    {
    case Key of
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.':
        begin
            appendNumber(Key);
        end;
        #8:
        begin
            key := #0;
        end;
        #13:
        begin
            btnOkClick(Sender);
        end
    else
        Key := #0;

    end;  }

end;

procedure TfrmNumberInputDialog.edtNumberInputKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   { case Key of
        8:
        begin
            //res := edtNumberInput.Text;
        end;
        48,49,50,51,52,53,54,55,56,57,96,97,98,99,100,101,102,103,104,105,110,190:
        begin
//            appendNumber(Key);
//            res := edtNumberInput.Text;
        end;
    else

    end;  }
end;

procedure TfrmNumberInputDialog.edtNumberInputMouseEnter(Sender: TObject);
begin
    HideCaret(edtNumberInput.Handle);
end;

procedure TfrmNumberInputDialog.FormActivate(Sender: TObject);
begin
    HideCaret(edtNumberInput.Handle);
end;

procedure TfrmNumberInputDialog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frmNumberInputDialog.Hide;
    resetProperties;
end;

procedure TfrmNumberInputDialog.FormCreate(Sender: TObject);
begin
    resetProperties
end;

procedure TfrmNumberInputDialog.FormShow(Sender: TObject);
begin

    if (initialValue = '0') or (initialValue = '') then
    begin
        edtNumberInput.Text := '';
        res := '';
    end
    else
    begin
        if isCurrency then
        begin
            edtNumberInput.Text := FormatFloat('$###,###,##0.00', StrToFloat(initialValue));
        end
        else if isPercentage then
        begin
            edtNumberInput.Text := FormatFloat('###,###,##0.00%', StrToFloat(initialValue));
        end
        else
        begin
            edtNumberInput.Text := initialValue;
        end;
        res := '';
    end;
    //frmNumberInputDialog.Caption := dialogName;
    lblDialogName.Caption := dialogName;

    btnDecimalPoint.Enabled := not integerOnly;
    HideCaret(edtNumberInput.Handle);

end;

function TfrmNumberInputDialog.appendNumber(ch : Char) : Boolean;
var
    tmpRes : string;
begin
    //try

        if (CharInSet(ch, ['0' .. '9'])) or (ch = '.') then
        begin
            if (ch = '.') and ((Pos('.', res) <> 0) or integerOnly) then Abort;
            if (ch = '.') then isAfterDecimalPoint := true;
            if isAfterDecimalPoint then
            begin
                if ch = '.' then
                begin
                    res := res + ch
                end
                else
                begin
                    if (Length(decimalPlaces) < 2) then
                    begin
                        decimalPlaces := decimalPlaces + ch;
                        res := res + ch;
                    end;
                end;
            end
            else
                res := res + ch;
        end
        else if (ch = #8) then
        begin
            tmpRes := Copy(res,1, Length(res)-1);
            if RightStr(tmpRes, 1) = '.' then tmpRes := LeftStr(tmpRes, Length(tmpRes) - 1);

            if (isAfterDecimalPoint) and (Pos('.', tmpRes) = 0) then
            begin
                isAfterDecimalPoint := false;
                decimalPlaces := '';
            end;
            
            res := tmpRes;
        end;

        if res = '' then res := '0';

        if isCurrency then
        begin
            edtNumberInput.Text := FormatFloat('$###,###,##0.00', StrToFloat(res));
        end
        else if isPercentage then
        begin
            edtNumberInput.Text := FormatFloat('###,###,##0.00%', StrToFloat(res));
        end
        else
        begin
            edtNumberInput.Text := res;
        end;

        edtNumberInput.SelStart := Length(edtNumberInput.Text);
        edtNumberInput.SelLength := 0;
        HideCaret(edtNumberInput.Handle);
        Result := true;
    //except
    //    Result := false;
    //end;
end;

procedure TfrmNumberInputDialog.resetProperties;
begin
  initialValue := '';
  dialogName := '';
  integerOnly := false;
  isCurrency := false;
  isPercentage := false;
  isNumericString := false;
  isAfterDecimalPoint := false;
  decimalPlaces := '';
end;

end.
