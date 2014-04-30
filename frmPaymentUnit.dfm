object frmPayment: TfrmPayment
  Left = 0
  Top = 0
  ActiveControl = edtPayment
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Payment'
  ClientHeight = 705
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblHelp: TLabel
    Left = 8
    Top = 8
    Width = 289
    Height = 57
    AutoSize = False
    Caption = 
      'Enter amount, then select payment type.'#13#10#13#10'For gift cards, selec' +
      't GIFTCARD then scan.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object btnBackspace: TSpeedButton
    Left = 191
    Top = 71
    Width = 55
    Height = 54
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnBackspaceClick
  end
  object btnFullAmount: TSpeedButton
    Left = 270
    Top = 522
    Width = 150
    Height = 80
    Caption = '$5555.55'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    Spacing = 0
    OnClick = btnFullAmountClick
  end
  object edtPayment: TEdit
    Left = 8
    Top = 71
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
    Text = '$9999.99'
    OnEnter = edtPaymentEnter
    OnKeyPress = edtPaymentKeyPress
    OnMouseEnter = edtPaymentMouseEnter
  end
  object grdPayments: TwwDBGrid
    Left = 273
    Top = 90
    Width = 505
    Height = 431
    TabStop = False
    Selected.Strings = (
      'paymentType'#9'10'#9'Type'
      'DateCreated'#9'14'#9'Date'
      'Details'#9'20'#9'Details'
      'amount'#9'12'#9'Amount')
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
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgWordWrap]
    ParentFont = False
    RowHeightPercent = 200
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
    OnCalcCellColors = grdPaymentsCalcCellColors
    PaintOptions.AlternatingRowColor = 15790320
    PaintOptions.ActiveRecordColor = clGray
  end
  object FlowPanel1: TFlowPanel
    Left = 292
    Top = 2
    Width = 483
    Height = 82
    Caption = 'FlowPanel1'
    TabOrder = 2
    object btnCash: TSpeedButton
      Left = 1
      Top = 1
      Width = 80
      Height = 80
      Caption = 'Cash'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = btnCashClick
    end
    object btnCredit: TSpeedButton
      Left = 81
      Top = 1
      Width = 80
      Height = 80
      Caption = 'Credit'#13#10'Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = btnCreditClick
    end
    object btnEFTPOS: TSpeedButton
      Left = 161
      Top = 1
      Width = 80
      Height = 80
      Caption = 'EFT'#13#10'DEBIT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = btnEFTPOSClick
    end
    object btnGiftCard: TSpeedButton
      Left = 241
      Top = 1
      Width = 80
      Height = 80
      Caption = 'Gift'#13#10'Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = btnGiftCardClick
    end
    object btnCheque: TSpeedButton
      Left = 321
      Top = 1
      Width = 80
      Height = 80
      Caption = 'Money'#13#10'Ord'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = btnChequeClick
    end
    object btnCancelPayment: TSpeedButton
      Left = 401
      Top = 1
      Width = 80
      Height = 80
      Caption = 'Cancel'#13#10'Payment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCancelPaymentClick
    end
  end
  object FlowPanel2: TFlowPanel
    Left = 370
    Top = 610
    Width = 403
    Height = 82
    TabOrder = 3
    object discountbtn: TSpeedButton
      Left = 1
      Top = 1
      Width = 80
      Height = 80
      Caption = 'Disc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = discountbtnClick
    end
    object Credit: TSpeedButton
      Left = 81
      Top = 1
      Width = 80
      Height = 80
      Caption = 'Refund'#13#10'Credit'#13#10'Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = CreditClick
    end
    object refundcash: TSpeedButton
      Left = 161
      Top = 1
      Width = 80
      Height = 80
      Caption = 'Refund'#13#10'Cash'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = refundcashClick
    end
    object refundgiftcard: TSpeedButton
      Left = 241
      Top = 1
      Width = 80
      Height = 80
      Caption = 'Refund'#13#10'Gift'#13#10'Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = refundgiftcardClick
    end
    object btnCancel: TSpeedButton
      Left = 321
      Top = 1
      Width = 80
      Height = 80
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = btnCancelClick
    end
  end
  object Panel1: TPanel
    Left = 426
    Top = 527
    Width = 345
    Height = 75
    TabOrder = 4
    object lblRemaining: TLabel
      Left = 1
      Top = 35
      Width = 136
      Height = 29
      Caption = 'Remaining:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
    end
    object lblAmountRemaining: TLabel
      Left = 216
      Top = 35
      Width = 113
      Height = 29
      Alignment = taRightJustify
      Caption = '$9999.99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
    end
    object lblAmountDue: TLabel
      Left = 215
      Top = 0
      Width = 113
      Height = 29
      Alignment = taRightJustify
      Caption = '$9999.99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
    end
    object lblDue: TLabel
      Left = 1
      Top = 0
      Width = 157
      Height = 29
      Caption = 'Amount Due:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
    end
  end
  object NumPanel: TFlowPanel
    Left = 8
    Top = 131
    Width = 249
    Height = 566
    TabOrder = 5
    object btnOne: TSpeedButton
      Left = 1
      Top = 1
      Width = 80
      Height = 80
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
      Left = 81
      Top = 1
      Width = 80
      Height = 80
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
      Left = 161
      Top = 1
      Width = 80
      Height = 80
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
    object btnFour: TSpeedButton
      Left = 1
      Top = 81
      Width = 80
      Height = 80
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
    object btnFive: TSpeedButton
      Left = 81
      Top = 81
      Width = 80
      Height = 80
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
    object btnSix: TSpeedButton
      Left = 161
      Top = 81
      Width = 80
      Height = 80
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
    object btnSeven: TSpeedButton
      Left = 1
      Top = 161
      Width = 80
      Height = 80
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
    object btnEight: TSpeedButton
      Left = 81
      Top = 161
      Width = 80
      Height = 80
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
      Left = 161
      Top = 161
      Width = 80
      Height = 80
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
    object btnDecimal: TSpeedButton
      Left = 1
      Top = 241
      Width = 80
      Height = 80
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      OnClick = btnDecimalClick
    end
    object btnZero: TSpeedButton
      Left = 81
      Top = 241
      Width = 80
      Height = 80
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
    object btnClear: TSpeedButton
      Left = 161
      Top = 241
      Width = 80
      Height = 80
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
    object btn2: TSpeedButton
      Left = 1
      Top = 321
      Width = 80
      Height = 80
      Caption = '20c'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      Spacing = 0
      OnClick = btn2Click
    end
    object btn1: TSpeedButton
      Left = 81
      Top = 321
      Width = 80
      Height = 80
      Caption = '50c'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      Spacing = 0
      OnClick = btn1Click
    end
    object btnOneDollar: TSpeedButton
      Left = 161
      Top = 321
      Width = 80
      Height = 80
      Caption = '$1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      Spacing = 0
      OnClick = btnOneDollarClick
    end
    object btnFiveDollars: TSpeedButton
      Left = 1
      Top = 401
      Width = 80
      Height = 80
      Caption = '$5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      Spacing = 0
      OnClick = btnFiveDollarsClick
    end
    object btnTen: TSpeedButton
      Left = 81
      Top = 401
      Width = 80
      Height = 80
      Caption = '$10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      Spacing = 0
      OnClick = btnTenClick
    end
    object btnTwenty: TSpeedButton
      Left = 161
      Top = 401
      Width = 80
      Height = 80
      Caption = '$20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      Spacing = 0
      OnClick = btnTwentyClick
    end
    object btnThirty: TSpeedButton
      Left = 1
      Top = 481
      Width = 80
      Height = 80
      Caption = '$50'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      Spacing = 0
      OnClick = btnThirtyClick
    end
    object btnHundredDollar: TSpeedButton
      Left = 81
      Top = 481
      Width = 80
      Height = 80
      Caption = '$100'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Font.Quality = fqAntialiased
      ParentFont = False
      Spacing = 0
      OnClick = btnHundredDollarClick
    end
  end
  object ResizeKit1: TResizeKit
    FormPos = rpDefault
    FormWidth = 1280
    FormHeight = 1024
    FormMaxWidth = 0
    FormMaxHeight = 0
    FormMinWidth = 0
    FormMinHeight = 0
    ResizeFont = True
    Enabled = True
    ValidTaskbar = True
    Left = 856
    Top = 456
    DesignFrmW = 779
    DesignFrmH = 705
    DesignDpiW = 96
    DesignDpiH = 96
  end
end
