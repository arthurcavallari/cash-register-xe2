unit CashRegisterUtils;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Controls, Vcl.Graphics;

type
    TDisplayDlgBtn = (mbYesNo, mbYesNoCancel, mbOkOnly, mbOKCancel);


    function ShowKeyboardDialog(titleText : string; initialText : string = ''; topOffset : Integer = -1) : string;
    function ShowDisplayDialog(titleText, dialogText : string; dlgButtons : TDisplayDlgBtn; largeFont : boolean = False; errorMessage : Boolean = False) : Integer;
    function ShowOverrideDialog(titleText : string='' ) : Integer;
    function IIF(expression : Boolean; valueTrue, valueFalse : string) : string;

implementation

uses frmKeyboardUnit, frmDisplayUnit, frmNumberInputUnit, frmOverrideUnit;


function IIF(expression : Boolean; valueTrue, valueFalse : string) : string;
begin
    if expression then
        Result := valueTrue
    else
        Result := valueFalse;
end;

function ShowKeyboardDialog(titleText, initialText : string; topOffset : integer) : string;
begin
  frmKeyboard.titleText := titleText;
  frmKeyboard.initialText := initialText;
  frmKeyboard.topOffset := topOffset;

  if frmKeyboard.ShowModal = mrOk then
  begin
    Result := frmKeyboard.resultText;
  end
  else
  begin
    Result := initialText;
  end;
end;

function ShowDisplayDialog(titleText, dialogText : string; dlgButtons : TDisplayDlgBtn; largeFont : boolean; errorMessage : Boolean) : Integer;
begin
    frmDisplayDialog.dlgButtons := dlgButtons;
    frmDisplayDialog.titleText := titleText;
    frmDisplayDialog.dialogText := dialogText;
    frmDisplayDialog.largeFont := largeFont;
    frmDisplayDialog.errorMessage := errorMessage;
    Result := frmDisplayDialog.ShowModal;
end;

function ShowOverrideDialog(titleText : string ) : Integer;
begin
    frmOverride.titleText := titleText;
    Result := frmOverride.ShowModal;
end;

function ShowNumberInputDialog(dialogName, initialValue : string; integerOnly : Boolean; isCurrency : Boolean; isPercentage : Boolean) : Double;
begin
    frmNumberInputDialog.dialogName := dialogName;
    frmNumberInputDialog.initialValue := initialValue;
    frmNumberInputDialog.integerOnly := integerOnly;
    frmNumberInputDialog.isCurrency := isCurrency;
    frmNumberInputDialog.isPercentage := isPercentage;
    frmNumberInputDialog.ShowModal;
    Result := frmNumberInputDialog.result;
end;


end.
