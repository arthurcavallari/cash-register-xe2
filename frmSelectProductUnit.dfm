object frmSelectProductDialog: TfrmSelectProductDialog
  Left = 227
  Top = 108
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 341
  ClientWidth = 730
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnSelect: TSpeedButton
    Left = 122
    Top = 301
    Width = 119
    Height = 33
    Caption = 'Select'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnSelectClick
  end
  object btnCancel: TSpeedButton
    Left = 465
    Top = 301
    Width = 119
    Height = 33
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCancelClick
  end
  object lblOtherReason: TLabel
    Left = 56
    Top = 8
    Width = 584
    Height = 36
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 'Multiple results found, please pick one.'
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
  object grdTransactionProducts: TwwDBGrid
    Left = 0
    Top = 53
    Width = 729
    Height = 242
    DisableThemesInTitle = True
    Selected.Strings = (
      'Name'#9'40'#9'Name'#9'F'
      'Code'#9'12'#9'Code'#9'F'
      'Barcode'#9'13'#9'Barcode'#9'F'
      'Supplier'#9'10'#9'Supplier'#9'F'
      'Retail_Price'#9'11'#9'Price'#9'F')
    IniAttributes.FileName = 'DELPHI32.ini.ini'
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Ctl3D = True
    DataSource = tilldm.dsProducts
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    KeyOptions = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgDisableColumnReorder]
    ParentCtl3D = False
    ParentFont = False
    RowHeightPercent = 200
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    PaintOptions.AlternatingRowColor = 15790320
    PaintOptions.ActiveRecordColor = clGray
  end
end
