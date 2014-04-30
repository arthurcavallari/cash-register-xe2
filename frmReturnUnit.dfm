object frmReturnDialog: TfrmReturnDialog
  Left = 227
  Top = 108
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Return'
  ClientHeight = 255
  ClientWidth = 356
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TSpeedButton
    Left = 33
    Top = 191
    Width = 100
    Height = 50
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqAntialiased
    ParentFont = False
    OnClick = btnOKClick
  end
  object btnCancel: TSpeedButton
    Left = 224
    Top = 191
    Width = 100
    Height = 50
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
  object lblOtherReason: TLabel
    Left = 8
    Top = 151
    Width = 125
    Height = 18
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = 'Other reason:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Font.Quality = fqClearTypeNatural
    ParentBiDiMode = False
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
  object rgReturnReason: TRadioGroup
    Left = 8
    Top = 8
    Width = 341
    Height = 129
    Caption = 'Return Reason'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'Damaged'
      'Wrong Product'
      'Don'#39't Want'
      'Other')
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object edtReturnReason: TEdit
    Left = 139
    Top = 148
    Width = 210
    Height = 25
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
    OnClick = edtReturnReasonDblClick
    OnDblClick = edtReturnReasonDblClick
    OnKeyPress = edtReturnReasonKeyPress
  end
  object grpReturnReason: TGroupBox
    Tag = -1
    Left = 7
    Top = 8
    Width = 341
    Height = 129
    Caption = 'Return Reason'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object btnDamaged: TSpeedButton
      Left = 13
      Top = 26
      Width = 150
      Height = 42
      AllowAllUp = True
      GroupIndex = 99
      Caption = 'Damaged'
      OnClick = grpReturnReasonClick
    end
    object btnDontWant: TSpeedButton
      Tag = 1
      Left = 178
      Top = 26
      Width = 150
      Height = 42
      AllowAllUp = True
      GroupIndex = 99
      Caption = 'Don'#39't Want'
      OnClick = grpReturnReasonClick
    end
    object btnWrongProduct: TSpeedButton
      Tag = 2
      Left = 13
      Top = 74
      Width = 150
      Height = 42
      AllowAllUp = True
      GroupIndex = 99
      Caption = 'Wrong Product'
      OnClick = grpReturnReasonClick
    end
    object btnOther: TSpeedButton
      Tag = 3
      Left = 178
      Top = 74
      Width = 150
      Height = 42
      AllowAllUp = True
      GroupIndex = 99
      Caption = 'Other'
      OnClick = grpReturnReasonClick
    end
  end
end
