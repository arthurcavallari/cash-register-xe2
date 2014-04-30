object frmAddGiftCardDialog: TfrmAddGiftCardDialog
  Left = 227
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 288
  ClientWidth = 429
  Color = clBtnFace
  ParentFont = True
  KeyPreview = True
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lblScan: TLabel
    Left = 118
    Top = 8
    Width = 302
    Height = 18
    Caption = 'Scan or enter giftcard number bellow'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold, fsUnderline]
    Font.Quality = fqProof
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object btnCancel: TSpeedButton
    Left = 328
    Top = 250
    Width = 92
    Height = 32
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCancelClick
  end
  object lblExpiryDate: TLabel
    Left = 32
    Top = 104
    Width = 101
    Height = 19
    Alignment = taRightJustify
    Caption = 'Expiry Date:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblActivationDate: TLabel
    Left = 40
    Top = 69
    Width = 93
    Height = 19
    Alignment = taRightJustify
    Caption = 'Issue Date:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblIssueDate: TfcLabel
    Left = 147
    Top = 69
    Width = 148
    Height = 19
    Caption = 'dd/mm/yyyy hh:mm'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
  end
  object btnOk: TSpeedButton
    Left = 203
    Top = 248
    Width = 92
    Height = 32
    Caption = 'OK'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnOkClick
  end
  object Label3: TLabel
    Left = 20
    Top = 34
    Width = 113
    Height = 19
    Alignment = taRightJustify
    Caption = 'Card Number:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 9
    Top = 152
    Width = 124
    Height = 19
    Alignment = taRightJustify
    Caption = 'Initial Balance:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn10: TSpeedButton
    Tag = 10
    Left = 54
    Top = 188
    Width = 87
    Height = 39
    Caption = '$10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnSetAmountClick
  end
  object btn20: TSpeedButton
    Tag = 20
    Left = 147
    Top = 188
    Width = 87
    Height = 39
    Caption = '$20'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnSetAmountClick
  end
  object btn50: TSpeedButton
    Tag = 50
    Left = 240
    Top = 188
    Width = 87
    Height = 39
    Caption = '$50'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnSetAmountClick
  end
  object btn100: TSpeedButton
    Tag = 100
    Left = 333
    Top = 188
    Width = 87
    Height = 39
    Caption = '$100'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnSetAmountClick
  end
  object btnOtherAmount: TSpeedButton
    Left = 333
    Top = 143
    Width = 87
    Height = 39
    Caption = 'Other'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnOtherAmountClick
  end
  object btnNever: TSpeedButton
    Left = 147
    Top = 98
    Width = 87
    Height = 39
    GroupIndex = 99
    Down = True
    Caption = 'Never'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnNeverClick
  end
  object btn1Year: TSpeedButton
    Left = 334
    Top = 98
    Width = 87
    Height = 39
    GroupIndex = 99
    Caption = '1 Year'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn1YearClick
  end
  object btn6Months: TSpeedButton
    Left = 240
    Top = 98
    Width = 87
    Height = 39
    GroupIndex = 99
    Caption = '6 Months'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn6MonthsClick
  end
  object SpeedButton1: TSpeedButton
    Left = 334
    Top = 60
    Width = 87
    Height = 39
    GroupIndex = 99
    Caption = 'Enter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object edtGiftCardNumber: TEdit
    Left = 148
    Top = 32
    Width = 273
    Height = 25
    Alignment = taRightJustify
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnClick = edtGiftCardNumberClick
    OnExit = edtGiftCardNumberExit
    OnKeyPress = edtGiftCardNumberKeyPress
  end
  object edtInitialBalance: TEdit
    Left = 147
    Top = 157
    Width = 180
    Height = 25
    Alignment = taRightJustify
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Text = '$0.00'
    OnClick = edtInitialBalanceClick
  end
  object frxgiftcard: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41522.450377361110000000
    ReportOptions.LastChange = 41522.450377361110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frxgiftcardBeforePrint
    Left = 16
    Top = 240
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 23.000000000000000000
      PaperHeight = 23.000000000000000000
      PaperSize = 256
      LeftMargin = 2.000000000000000000
      RightMargin = 2.000000000000000000
      TopMargin = 3.500000000000000000
      BottomMargin = 3.500000000000000000
      object Picture1: TfrxPictureView
        Left = 7.559060000000000000
        Top = 3.779530000000000000
        Width = 52.913385830000000000
        Height = 52.913385830000000000
        ShowHint = False
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
end
