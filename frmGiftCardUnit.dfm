object frmGiftCardDialog: TfrmGiftCardDialog
  Left = 227
  Top = 108
  ActiveControl = edtGiftCardNumber
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  ClientHeight = 236
  ClientWidth = 502
  Color = clBtnFace
  ParentFont = True
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lblErrorMessage: TLabel
    Left = 8
    Top = 172
    Width = 41
    Height = 19
    Caption = 'Error'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblScan: TLabel
    Left = 8
    Top = 8
    Width = 302
    Height = 18
    AutoSize = False
    Caption = 'Scan or enter giftcard number bellow'
    Color = clBtnFace
    FocusControl = edtGiftCardNumber
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
  object btnCheckBalance: TSpeedButton
    Left = 347
    Top = 25
    Width = 147
    Height = 32
    Caption = 'Check Balance'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCheckBalanceClick
  end
  object btnCancel: TSpeedButton
    Left = 402
    Top = 197
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
    Left = 14
    Top = 82
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
  object lblBalance: TLabel
    Left = 45
    Top = 107
    Width = 70
    Height = 19
    Alignment = taRightJustify
    Caption = 'Balance:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblActivationDate: TLabel
    Left = 22
    Top = 57
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
  object Label1: TLabel
    Left = 48
    Top = 80
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 47
    Top = 113
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 90
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object fcLabel1: TfcLabel
    Left = 122
    Top = 57
    Width = 91
    Height = 19
    Caption = 'dd/mm/yyyy'
    DataField = 'IssueDate'
    DataSource = tilldm.dsGiftCardsLookup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TextOptions.Alignment = taRightJustify
    TextOptions.VAlignment = vaTop
  end
  object fcLabel2: TfcLabel
    Left = 122
    Top = 82
    Width = 91
    Height = 19
    Caption = 'dd/mm/yyyy'
    DataField = 'ExpiryDate'
    DataSource = tilldm.dsGiftCardsLookup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TextOptions.Alignment = taRightJustify
    TextOptions.VAlignment = vaTop
  end
  object fcLabel3: TfcLabel
    Left = 171
    Top = 107
    Width = 42
    Height = 19
    Caption = '$0.00'
    DataField = 'Balance'
    DataSource = tilldm.dsGiftCardsLookup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TextOptions.Alignment = taRightJustify
    TextOptions.VAlignment = vaTop
    Transparent = True
  end
  object btnOk: TSpeedButton
    Left = 278
    Top = 197
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
  object Label4: TLabel
    Left = 251
    Top = 107
    Width = 149
    Height = 19
    Alignment = taRightJustify
    Caption = 'Required Amount:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblRequiredAmount: TfcLabel
    Left = 452
    Top = 107
    Width = 42
    Height = 19
    Caption = '$0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TextOptions.Alignment = taRightJustify
    TextOptions.VAlignment = vaTop
  end
  object Label5: TLabel
    Left = 4
    Top = 132
    Width = 111
    Height = 19
    Alignment = taRightJustify
    Caption = 'New Balance:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNewBalance: TfcLabel
    Left = 171
    Top = 132
    Width = 42
    Height = 19
    Caption = '$0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TextOptions.Alignment = taRightJustify
    TextOptions.VAlignment = vaTop
    Transparent = True
  end
  object Label6: TLabel
    Left = 249
    Top = 132
    Width = 151
    Height = 19
    Alignment = taRightJustify
    Caption = 'Available Amount:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblAvailableAmount: TfcLabel
    Left = 452
    Top = 132
    Width = 42
    Height = 19
    Caption = '$0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TextOptions.Alignment = taRightJustify
    TextOptions.VAlignment = vaTop
  end
  object edtGiftCardNumber: TEdit
    Left = 8
    Top = 32
    Width = 333
    Height = 25
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnClick = edtGiftCardNumberDblClick
    OnKeyPress = edtGiftCardNumberKeyPress
  end
end
