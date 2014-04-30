object frmSearchOnHoldDialog: TfrmSearchOnHoldDialog
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  ClientHeight = 690
  ClientWidth = 1274
  Color = clBtnFace
  ParentFont = True
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object btnSearch: TSpeedButton
    Left = 1023
    Top = 447
    Width = 119
    Height = 33
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnSearchClick
  end
  object btnSelect: TSpeedButton
    Left = 1147
    Top = 591
    Width = 119
    Height = 42
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
    Left = 1147
    Top = 639
    Width = 119
    Height = 43
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCancelClick
  end
  object btnAllStaff: TSpeedButton
    Left = 647
    Top = 425
    Width = 150
    Height = 55
    Caption = 'Only Me'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    OnClick = btnAllStaffClick
  end
  object grdProducts: TwwDBGrid
    Left = 8
    Top = 8
    Width = 1258
    Height = 385
    DisableThemesInTitle = True
    Selected.Strings = (
      'id'#9'12'#9'Order No.'#9#9
      'DateCreated'#9'12'#9'DateCreated'#9'F'
      'custcode'#9'12'#9'Customer Code'#9#9
      'TotalDue'#9'15'#9'Total Due'#9#9
      'Summary'#9'30'#9'Summary'#9'F')
    IniAttributes.FileName = 'DELPHI32.ini.ini'
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    Align = alCustom
    Color = clWhite
    Ctl3D = True
    DataSource = tilldm.dsTransactionsOnHold
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    KeyOptions = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgDisableColumnReorder]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    RowHeightPercent = 180
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = [fsBold]
    TitleFont.Quality = fqClearTypeNatural
    TitleLines = 1
    TitleButtons = False
    OnDblClick = grdProductsDblClick
    OnMouseDown = grdProductsMouseDown
    PaintOptions.AlternatingRowColor = 15790320
    PaintOptions.ActiveRecordColor = clGray
  end
  object edtSearch: TEdit
    Left = 803
    Top = 449
    Width = 214
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = edtSearchDblClick
    OnDblClick = edtSearchDblClick
    OnKeyPress = edtSearchKeyPress
  end
  object grpSearchCriteria: TGroupBox
    Tag = 3
    Left = 8
    Top = 399
    Width = 633
    Height = 90
    Caption = 'Search Criteria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object btnTransactionNo: TSpeedButton
      Left = 5
      Top = 26
      Width = 150
      Height = 55
      GroupIndex = 99
      Caption = 'Transaction No.'
      OnClick = grpSearchCriteriaClick
    end
    object btnDate: TSpeedButton
      Tag = 1
      Left = 161
      Top = 26
      Width = 150
      Height = 55
      GroupIndex = 99
      Caption = 'Date'
      OnClick = grpSearchCriteriaClick
    end
    object btnCustCode: TSpeedButton
      Tag = 2
      Left = 317
      Top = 26
      Width = 150
      Height = 55
      GroupIndex = 99
      Caption = 'Customer Code'
      OnClick = grpSearchCriteriaClick
    end
    object btnMainFields: TSpeedButton
      Tag = 3
      Left = 473
      Top = 26
      Width = 150
      Height = 55
      GroupIndex = 99
      Down = True
      Caption = 'Main Fields'
      OnClick = grpSearchCriteriaClick
    end
  end
end
