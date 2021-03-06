object frmRefundDialog: TfrmRefundDialog
  Left = 227
  Top = 108
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Refund'
  ClientHeight = 416
  ClientWidth = 553
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnOne: TSpeedButton
    Left = 726
    Top = 8
    Width = 55
    Height = 55
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnOneClick
  end
  object btnTwo: TSpeedButton
    Left = 787
    Top = 8
    Width = 55
    Height = 55
    Caption = '2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnTwoClick
  end
  object btnThree: TSpeedButton
    Left = 848
    Top = 8
    Width = 55
    Height = 55
    Caption = '3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnThreeClick
  end
  object btnSix: TSpeedButton
    Left = 848
    Top = 68
    Width = 55
    Height = 55
    Caption = '6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnSixClick
  end
  object btnFive: TSpeedButton
    Left = 787
    Top = 68
    Width = 55
    Height = 55
    Caption = '5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnFiveClick
  end
  object btnFour: TSpeedButton
    Left = 726
    Top = 68
    Width = 55
    Height = 55
    Caption = '4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnFourClick
  end
  object btnSeven: TSpeedButton
    Left = 726
    Top = 128
    Width = 55
    Height = 55
    Caption = '7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnSevenClick
  end
  object btnZero: TSpeedButton
    Left = 787
    Top = 188
    Width = 55
    Height = 55
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnZeroClick
  end
  object btnEight: TSpeedButton
    Left = 787
    Top = 128
    Width = 55
    Height = 55
    Caption = '8'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnEightClick
  end
  object btnNine: TSpeedButton
    Left = 848
    Top = 128
    Width = 55
    Height = 55
    Caption = '9'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnNineClick
  end
  object btnDoubleZero: TSpeedButton
    Left = 726
    Top = 188
    Width = 55
    Height = 55
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnDoubleZeroClick
  end
  object btnClear: TSpeedButton
    Left = 848
    Top = 188
    Width = 55
    Height = 55
    Caption = 'Clear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqClearTypeNatural
    ParentFont = False
    OnClick = btnClearClick
  end
  object lblPayments: TLabel
    Left = 8
    Top = 148
    Width = 78
    Height = 23
    Caption = 'Refunds'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
  end
  object btnDone: TSpeedButton
    Left = 440
    Top = 365
    Width = 105
    Height = 43
    Caption = 'Done'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnDoneClick
  end
  object btnRefund: TSpeedButton
    Left = 191
    Top = 364
    Width = 105
    Height = 43
    Caption = 'Refund'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 4
    Width = 93
    Height = 23
    Caption = 'Payments'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
  end
  object lblInstructions: TLabel
    Left = 8
    Top = 292
    Width = 537
    Height = 66
    AutoSize = False
    Caption = 'Select the method of refund '#13#10'(CASH, CREDIT, CHEQUE, EFTPOS)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    WordWrap = True
  end
  object edtRefund: TEdit
    Left = 8
    Top = 364
    Width = 177
    Height = 48
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    TabOrder = 0
    Text = '$0.00'
    OnKeyPress = edtRefundKeyPress
  end
  object grdRefunds: TwwDBGrid
    Left = 8
    Top = 177
    Width = 545
    Height = 109
    TabStop = False
    Selected.Strings = (
      'refundType'#9'10'#9'Type'
      'amount'#9'12'#9'Amount'
      'Details'#9'20'#9'Details'
      'DateCreated'#9'18'#9'Date')
    IniAttributes.FileName = 'DELPHI32.ini.ini'
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    DataSource = tilldm.dsRefunds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Verdana'
    TitleFont.Style = [fsBold]
    TitleFont.Quality = fqClearType
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 15790320
    PaintOptions.ActiveRecordColor = clGray
  end
  object grdPayments: TwwDBGrid
    Left = 8
    Top = 33
    Width = 545
    Height = 109
    TabStop = False
    Selected.Strings = (
      'paymentType'#9'10'#9'Type'
      'amount'#9'12'#9'Amount'
      'Details'#9'20'#9'Details'
      'DateCreated'#9'18'#9'Date')
    IniAttributes.FileName = 'DELPHI32.ini.ini'
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    DataSource = tilldm.dsPayments
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgWordWrap]
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Verdana'
    TitleFont.Style = [fsBold]
    TitleFont.Quality = fqClearType
    TitleLines = 1
    TitleButtons = False
    OnEnter = grdPaymentsEnter
    PaintOptions.AlternatingRowColor = 15790320
    PaintOptions.ActiveRecordColor = clGray
  end
end
