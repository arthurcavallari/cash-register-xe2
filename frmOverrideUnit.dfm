object frmOverride: TfrmOverride
  Left = 227
  Top = 108
  ActiveControl = edtKeyboard
  BorderStyle = bsDialog
  Caption = 'Administration Override'
  ClientHeight = 179
  ClientWidth = 344
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitle: TLabel
    Left = 8
    Top = 8
    Width = 328
    Height = 53
    AutoSize = False
    Caption = 'Enter Override Code'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Font.Quality = fqProof
    ParentFont = False
  end
  object btnOk: TSpeedButton
    Left = 8
    Top = 120
    Width = 97
    Height = 51
    Caption = 'Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnOkClick
  end
  object btnCancel: TSpeedButton
    Left = 240
    Top = 120
    Width = 97
    Height = 51
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnCancelClick
  end
  object edtKeyboard: TEdit
    Left = 8
    Top = 67
    Width = 329
    Height = 47
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    OnClick = edtKeyboardDblClick
    OnDblClick = edtKeyboardDblClick
    OnKeyPress = edtKeyboardKeyPress
  end
end
