object frmMain: TfrmMain
  Left = 0
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  BorderIcons = []
  Caption = 'Cash Register -- Cashier: {STAFF_CODE} -- DD/MM/YYYY HH:MM PM'
  ClientHeight = 752
  ClientWidth = 1111
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMainScreen: TPanel
    Left = 0
    Top = 62
    Width = 1117
    Height = 697
    BevelOuter = bvNone
    TabOrder = 0
    object custlabel: TLabel
      Left = 833
      Top = 2
      Width = 272
      Height = 48
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object pnlProductArea: TPanel
      Left = 0
      Top = 0
      Width = 824
      Height = 632
      Caption = 'pnlProductArea'
      Color = 15918295
      ParentBackground = False
      TabOrder = 0
      object btnIncShop: TfcLabel
        Left = 396
        Top = 1
        Width = 75
        Height = 30
        AutoSize = False
        Caption = '0'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taRightJustify
        TextOptions.VAlignment = vaBottom
        Transparent = True
        Visible = False
        OnClick = btnIncShopClick
      end
      object btnIncStore: TfcLabel
        Left = 482
        Top = 0
        Width = 75
        Height = 30
        AutoSize = False
        Caption = '0'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taRightJustify
        TextOptions.VAlignment = vaBottom
        Transparent = True
        Visible = False
        OnClick = btnIncStoreClick
      end
      object btnIncShed: TfcLabel
        Left = 563
        Top = 2
        Width = 75
        Height = 30
        AutoSize = False
        Caption = '0'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taRightJustify
        TextOptions.VAlignment = vaBottom
        Transparent = True
        Visible = False
        OnClick = btnIncShedClick
      end
      object btnQuantityLabel: TfcLabel
        Left = 315
        Top = 2
        Width = 75
        Height = 30
        AutoSize = False
        Caption = 'btnQuantityLabel'
        Color = clGray
        DataField = 'Quantity'
        DataSource = tilldm.dsTransactionStock
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taRightJustify
        TextOptions.VAlignment = vaTop
        Transparent = True
        Visible = False
        OnClick = btnQuantityLabelClick
      end
      object lblStock_SHOP: TfcLabel
        Left = 420
        Top = 25
        Width = 37
        Height = 30
        AutoSize = False
        Caption = '123'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        Transparent = True
        Visible = False
        OnClick = btnIncShopClick
      end
      object lblStock_STORE: TfcLabel
        Left = 506
        Top = 25
        Width = 37
        Height = 30
        AutoSize = False
        Caption = '0'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        Transparent = True
        Visible = False
        OnClick = btnIncStoreClick
      end
      object lblStock_SHED: TfcLabel
        Left = 587
        Top = 25
        Width = 37
        Height = 30
        AutoSize = False
        Caption = '0'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        Transparent = True
        Visible = False
        OnClick = btnIncShedClick
      end
      object TillPage: TTabControl
        Left = 1
        Top = 0
        Width = 820
        Height = 626
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Verdana'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        Style = tsButtons
        TabHeight = 40
        TabOrder = 0
        Tabs.Strings = (
          '1'
          '2'
          '3')
        TabIndex = 0
        TabWidth = 40
        OnChange = TillPageChange
        object lblScan: TLabel
          Left = 133
          Top = 0
          Width = 149
          Height = 16
          AutoSize = False
          Caption = 'Scan Barcode Now...'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Font.Quality = fqProof
          GlowSize = 2
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblQuantity: TLabel
          Left = 305
          Top = 0
          Width = 63
          Height = 16
          AutoSize = False
          Caption = 'Quantity'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Font.Quality = fqProof
          GlowSize = 2
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblErrorMsg: TLabel
          Left = 374
          Top = 0
          Width = 452
          Height = 39
          AutoSize = False
          Caption = 'Product not found!'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Font.Quality = fqProof
          GlowSize = 2
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object grdTransactionProducts: TwwDBGrid
          Left = 0
          Top = 45
          Width = 823
          Height = 581
          DisableThemesInTitle = True
          Selected.Strings = (
            'Item Info'#9'40'#9'Item Info'#9'F'
            'Quantity'#9'6'#9'Qty'#9'F'
            'Price'#9'8'#9'Unit Price'#9'F'
            'Subtotal'#9'8'#9'Subtotal'#9'F'
            'Location_SHOP'#9'6'#9'SHOP'#9'F'
            'Location_STORE'#9'6'#9'STORE'#9'F'
            'Location_SHED'#9'6'#9'SHED'#9'F')
          IniAttributes.FileName = 'DELPHI32.ini.ini'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          OnRowChanged = grdTransactionProductsRowChanged
          FixedCols = 0
          ShowHorzScrollBar = False
          ShowVertScrollBar = False
          Ctl3D = True
          DataSource = tilldm.dsTransactionStock
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgDisableColumnReorder]
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
          OnCalcCellColors = grdTransactionProductsCalcCellColors
          OnDrawDataCell = grdTransactionProductsDrawDataCell
          OnMouseDown = grdTransactionProductsMouseDown
          PaintOptions.AlternatingRowColor = 14737632
          PaintOptions.ActiveRecordColor = clGray
        end
        object edtBarcode: TEdit
          Left = 127
          Top = 16
          Width = 172
          Height = 20
          AutoSize = False
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnEnter = edtBarcodeEnter
          OnKeyPress = edtBarcodeKeyPress
        end
        object edtQuantity: TEdit
          Left = 305
          Top = 16
          Width = 63
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Color = clWhite
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = '1'
          OnEnter = edtQuantityEnter
        end
        object ProdImage: TfcDBImager
          Left = 231
          Top = 368
          Width = 168
          Height = 204
          DataField = 'image'
          DataSource = tilldm.dsImagesrc
          PictureType = fcptJpg
          AutoSize = False
          BitmapOptions.AlphaBlend.Amount = 0
          BitmapOptions.AlphaBlend.Transparent = False
          BitmapOptions.Color = clNone
          BitmapOptions.Contrast = 0
          BitmapOptions.Embossed = False
          BitmapOptions.TintColor = clNone
          BitmapOptions.GaussianBlur = 0
          BitmapOptions.GrayScale = False
          BitmapOptions.HorizontallyFlipped = False
          BitmapOptions.Inverted = False
          BitmapOptions.Lightness = 0
          BitmapOptions.Rotation.CenterX = -1
          BitmapOptions.Rotation.CenterY = -1
          BitmapOptions.Rotation.Angle = 0
          BitmapOptions.Saturation = -1
          BitmapOptions.Sharpen = 0
          BitmapOptions.Sponge = 0
          BitmapOptions.VerticallyFlipped = False
          BitmapOptions.Wave.XDiv = 0
          BitmapOptions.Wave.YDiv = 0
          BitmapOptions.Wave.Ratio = 0
          BitmapOptions.Wave.Wrap = False
          DrawStyle = dsProportional
          PreProcess = True
          SmoothStretching = False
          Transparent = True
          TransparentColor = 14737632
          Visible = False
          OnCalcPictureType = ProdImageCalcPictureType
          TabOrder = 3
        end
      end
    end
    object pnlTransaction_Actions: TPanel
      Left = 1
      Top = 632
      Width = 829
      Height = 57
      TabOrder = 1
      object btnDelete: TSpeedButton
        Left = 4
        Top = 1
        Width = 60
        Height = 50
        Caption = '&Delete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnDeleteClick
      end
      object btnDiscount: TSpeedButton
        Left = 75
        Top = 1
        Width = 60
        Height = 50
        Caption = 'Dis&count'#13#10'Item '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnDiscountClick
      end
      object btnChangeQty: TSpeedButton
        Left = 759
        Top = 1
        Width = 60
        Height = 50
        Caption = 'Change'#13#10'&Quantity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnChangeQtyClick
      end
      object btnChangePrice: TSpeedButton
        Left = 688
        Top = 1
        Width = 60
        Height = 50
        Caption = 'Change'#13#10'&Price'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnChangePriceClick
      end
      object btnRefundOrder: TSpeedButton
        Left = 217
        Top = 1
        Width = 60
        Height = 50
        Caption = 'Refund'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        Visible = False
        OnClick = btnRefundOrderClick
      end
      object btnReturn: TSpeedButton
        Left = 146
        Top = 1
        Width = 60
        Height = 50
        Caption = 'Return'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnReturnClick
      end
      object btnSplit: TSpeedButton
        Left = 288
        Top = 1
        Width = 60
        Height = 50
        Caption = 'Split'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnSplitClick
      end
      object btnSearch: TSpeedButton
        Left = 611
        Top = 1
        Width = 60
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = '&Find '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnSearchClick
      end
      object TaskBtn: TSpeedButton
        Left = 503
        Top = 3
        Width = 60
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 'Tasks'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = TaskBtnClick
      end
    end
    object FlowPanel1: TFlowPanel
      Left = 830
      Top = 392
      Width = 283
      Height = 65
      Caption = 'FlowPanel1'
      TabOrder = 2
      object btnPay: TSpeedButton
        Left = 1
        Top = 1
        Width = 93
        Height = 63
        Caption = 'Pay'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Font.Quality = fqAntialiased
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnPayClick
      end
      object Receipt: TSpeedButton
        Left = 94
        Top = 1
        Width = 93
        Height = 63
        Caption = 'Rec'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Font.Quality = fqAntialiased
        Layout = blGlyphTop
        ParentFont = False
        OnClick = ReceiptClick
      end
      object SpeedButton1: TSpeedButton
        Left = 187
        Top = 1
        Width = 93
        Height = 63
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Font.Quality = fqAntialiased
        Layout = blGlyphTop
        ParentFont = False
        OnClick = SpeedButton1Click
      end
    end
  end
  object pnlMainMenu: TPanel
    Left = 0
    Top = 0
    Width = 263
    Height = 58
    BevelOuter = bvNone
    TabOrder = 1
  end
  object totalsPanel: TPanel
    Left = 836
    Top = 523
    Width = 279
    Height = 230
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMoneyGreen
    Font.Height = -20
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 4
      Top = 4
      Width = 90
      Height = 24
      Caption = 'Sub Total'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 4
      Top = 31
      Width = 34
      Height = 24
      Caption = 'Tax'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblSubTotal: TfcLabel
      Left = 160
      Top = 0
      Width = 116
      Height = 21
      AutoSize = False
      Caption = '$163.64'
      DataField = 'subTotal'
      DataSource = tilldm.dsTransactionStockCalc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taRightJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object lblTax: TfcLabel
      Left = 192
      Top = 27
      Width = 84
      Height = 24
      AutoSize = False
      Caption = '$16.36'
      DataField = 'tax'
      DataSource = tilldm.dsTransactionStockCalc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taRightJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object lblTotal: TLabel
      Left = 4
      Top = 61
      Width = 57
      Height = 25
      Caption = 'Total'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object fcLabel1: TfcLabel
      Left = 160
      Top = 57
      Width = 116
      Height = 32
      AutoSize = False
      Caption = '$180.00'
      DataField = 'totalAmount'
      DataSource = tilldm.dsTransactionStockCalc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taRightJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object fcLabel2: TfcLabel
      Left = 192
      Top = 85
      Width = 84
      Height = 24
      AutoSize = False
      Caption = 'fcLabel2'
      DataField = 'total'
      DataSource = tilldm.dsPaymentsCalc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taRightJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object lblPayments: TLabel
      Left = 4
      Top = 92
      Width = 93
      Height = 24
      Caption = 'Payments'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object fcLabel3: TfcLabel
      Left = 152
      Top = 195
      Width = 124
      Height = 32
      AutoSize = False
      Caption = 'fcLabel3'
      DataField = 'TotalDue'
      DataSource = tilldm.dsTotalDue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taRightJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object lblTotalDue: TLabel
      Left = 4
      Top = 199
      Width = 108
      Height = 25
      Caption = 'Total Due'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblDiscountedAmount: TLabel
      Left = 4
      Top = 117
      Width = 150
      Height = 22
      Caption = 'Discount (Items)'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object fcLabel4: TfcLabel
      Left = 162
      Top = 113
      Width = 114
      Height = 24
      AutoSize = False
      Caption = '$180.00'
      DataField = 'discountedAmount'
      DataSource = tilldm.dsTransactionStockCalc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taRightJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object Label3: TLabel
      Left = 4
      Top = 145
      Width = 117
      Height = 22
      Caption = 'Discount (%)'
      Color = clGray
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object fcLabel5: TfcLabel
      Left = 176
      Top = 135
      Width = 100
      Height = 24
      AutoSize = False
      Caption = '$0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taRightJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object Label4: TLabel
      Left = 4
      Top = 173
      Width = 111
      Height = 22
      Caption = 'Discount ($)'
      Color = clGray
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object fcLabel6: TfcLabel
      Left = 184
      Top = 165
      Width = 92
      Height = 24
      AutoSize = False
      Caption = '$0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taRightJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
  end
  object GroupBox1: TGroupBox
    Left = 58
    Top = 323
    Width = 313
    Height = 85
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Label13: TLabel
      Left = 33
      Top = 19
      Width = 66
      Height = 13
      Caption = 'Customer:'
      FocusControl = edtCustomerSearch
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnSearchCustomer: TSpeedButton
      Left = 211
      Top = 11
      Width = 93
      Height = 30
      Caption = 'Search'
      OnClick = btnSearchCustomerClick
    end
    object edtCustomerSearch: TEdit
      Left = 105
      Top = 16
      Width = 100
      Height = 21
      TabOrder = 0
      OnDblClick = edtCustomerSearchDblClick
    end
  end
  object MiscPanel: TFlowPanel
    Left = 827
    Top = 116
    Width = 283
    Height = 343
    BorderStyle = bsSingle
    TabOrder = 4
  end
  object toolpanel: TFlowPanel
    Left = 0
    Top = 1
    Width = 1115
    Height = 57
    TabOrder = 5
    object stafflabel: TLabel
      Left = 1
      Top = 1
      Width = 115
      Height = 54
      Align = alBottom
      Alignment = taCenter
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -40
      Font.Name = 'Arial Narrow'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object detailsPanel: TPanel
      Left = 116
      Top = 1
      Width = 255
      Height = 55
      BevelInner = bvLowered
      BevelKind = bkSoft
      TabOrder = 0
      object lblstaffName: TfcLabel
        Left = 89
        Top = 0
        Width = 80
        Height = 20
        AutoSize = False
        Caption = 'PHIL'
        DataField = 'staffcode'
        DataSource = tilldm.dsTransactions
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        TextOptions.DoubleBuffered = True
        Transparent = True
      end
      object tnumlabel: TfcLabel
        Left = 144
        Top = 0
        Width = 106
        Height = 20
        AutoSize = False
        Caption = '07410'
        DataField = 'id'
        DataSource = tilldm.dsTransactions
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TextOptions.Alignment = taRightJustify
        TextOptions.VAlignment = vaTop
        TextOptions.DoubleBuffered = True
        Transparent = True
      end
      object fcLabel7: TfcLabel
        Left = 4
        Top = 24
        Width = 248
        Height = 28
        AutoSize = False
        Caption = '25/11/2013 3:51:45 PM'
        DataField = 'DateCreated'
        DataSource = tilldm.dsTransactions
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        TextOptions.DoubleBuffered = True
        Transparent = True
      end
      object Label6: TLabel
        Left = 4
        Top = 4
        Width = 79
        Height = 18
        AutoSize = False
        Caption = 'served By:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object btnNewTransaction: TSpeedButton
      Left = 371
      Top = 1
      Width = 57
      Height = 57
      Caption = 'New'#13#10'Sale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnNewTransactionClick
    end
    object btnOpenOrder: TSpeedButton
      Left = 428
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Open'#13#10'Trans'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnOpenOrderClick
    end
    object PrevTrans: TSpeedButton
      Left = 485
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Next'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = PrevTransClick
    end
    object nextrans: TSpeedButton
      Left = 542
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Prior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = nextransClick
    end
    object btnFetchOnHold: TSpeedButton
      Left = 599
      Top = 1
      Width = 57
      Height = 57
      Caption = 'On Hold'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnFetchOnHoldClick
    end
    object PriceCheck: TSpeedButton
      Left = 656
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Price'#13#10'Check'#13#10'Off'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = PriceCheckClick
    end
    object btnReplenish: TSpeedButton
      Left = 713
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Reple'#13#10'nish'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnReplenishClick
    end
    object repbtn: TSpeedButton
      Left = 770
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Rep'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = repbtnClick
    end
    object btnHoldOrder: TSpeedButton
      Left = 827
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Hold'#13#10'Sale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnHoldOrderClick
    end
    object custbtn: TSpeedButton
      Left = 884
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Cust'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = custbtnClick
    end
    object Laybybtn: TSpeedButton
      Left = 941
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Lay'#13#10'by'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = LaybybtnClick
    end
    object btnAddGiftCard: TSpeedButton
      Left = 998
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Gift'#13#10'Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnAddGiftCardClick
    end
    object btnLogout: TSpeedButton
      Left = 1055
      Top = 1
      Width = 57
      Height = 57
      Caption = 'Log Out'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnLogoutClick
    end
  end
  object il1: TImageList
    ColorDepth = cd32Bit
    Height = 24
    ShareImages = True
    Width = 24
    Left = 424
    Top = 520
    Bitmap = {
      494C01010D001800600418001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7D
      7EAF7C7D7DDB0E0E0E6100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000827A
      7CABCCC9CAFF6F7070E402020239000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000736E6F93BEBBBCFF464646BD000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000004999192C2AAA9A9FF1A1B1B860000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0C0C16ACA4A6DB898788FB0000004500000005000000290000
      0034000000160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F1D1E2AA7A1A3E3575759E14F4C4BB376726FC47674
      71CB595654C90F1010770000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004545488D9E9993D0837E7689848481848686
      86869C95929E958C8BDC1E1F1F91000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0D0D2F7C7671BC756A5F758981778B91867E93877F
      778A807A7382938D89938B8281E00404044F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003D3C3D818A7A6DAC897B6A8B9F9386A3928375948C7E
      718F8A7F728D8980758BAC9996C6343434950000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000504C499F8D7760A3A79585A9AFA192B2A59584A79F90
      7EA19C8D7D9E978E8199B49C96C14F4B4BA70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004B49469D937A5FB6A28970A2A38A71A7A1866EA39C84
      6C9E99826C9B91816E93B69C8FC54D4B49A00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030313269907960DCBCAE94BCC6AD96C6BB9F84BCB69B
      83B7B09B86B3B0A08CB0C3AEA2EC1F2123660000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000407090E6D645CC8BAA188EEDBCCB2DBD8C6ADD8D3C1
      A9D3CABDA4CADCC3ADF06F6965C40000000C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151718276A625CBFAA9885F4C6AF96ECC6AF
      98E8B6A28EED6A6360B902050621000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010305083535367E5C5752D05B57
      54CE272B2C740000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000C2000000FD0000
      00FE000000FE000000E8000000F2000000FD000000FD000000FD000000FC0000
      00EF090909D6101010CE010101EB0000007F00000000000000000707070B1515
      1520202020312828283F2E2E2E48393939583A3A3A5B3B3B3B5B3B3B3B5B3B3B
      3B5B3A3A3A5B3B3B3B5B3A3A3A5B3B3B3B5B353535532D2D2D462727273C1D1D
      1D2D1212121C0505050700000000000000000000000000000000000000000101
      0001201A10295642266B7E60369D99733CC2B1874DDDBF8B43F6C0883DFEBE85
      39FFBB7E34FFB6792FFFB2732AFFA96E2AF6986730DC785125B2553717802619
      0E39020000030000000000000000000000000000000001010001201A10295642
      266B7E60369D99733CC2B1874DDDBF8B43F6C0883DFEBE8539FFBB7E34FFB679
      2FFFB2732AFFA96E2AF6986730DC785125B25537178026190E39020000030000
      0000000000000000000000000000000000000000000F0000000F0000000F0000
      00030000000000000000000000000000000000000000000000EF919191D0E2E2
      E2F1AAAAAAD9090909E9353535CBFFFFFFFF919191D0919191D0515151D60E0E
      0EF1C5C5C5E4919191D0E2E2E2F1111111CE00000000010101012F2F2F496363
      639A787878BB8B8883D7A0947BF2AA966AFAB0955CFBB59451FCB8954CFDB995
      48FDB99549FDB8944BFCB49454FCAE9663FBA69674F7959086E5817F7FC97373
      73B55B5B5B8F1D1C1C2D100D08190605010A00000000000000000C09050F946F
      3CBBC69045FDCA9347FECC9649FFCC964AFECB9549FECA9447FFC68F43FEC38B
      3FFFBE853AFEBA7F34FEB5782EFEB07128FFAA6A22FEA4631BFE9F5C14FF9954
      0FFE7F4C1BCC140C052000000000000000000C09050F946F3CBBC69045FDCA93
      47FECC9649FFCC964AFECB9549FECA9447FFC68F43FEC38B3FFFBE853AFEBA7F
      34FEB5782EFEB07128FFAA6A22FEA4631BFE9F5C14FF99540FFE7F4C1BCC140C
      052000000000000000000000000000000000090909362C2E2EA604070A600000
      00260000000D000000000000000000000000000000000000005E000000F79191
      91D0101010CE000000B6010101EDAAAAAAD9646464C3000000FC000000DB0404
      04E0000000F4000000F2515151C03F3F3FBF000000000000000001010001352E
      2050826C3DC0AF8A3AFBB58E3DFEB99140FEBC9443FEBE9645FEC09747FEC198
      48FEC09848FEC09747FEBE9645FEBB9443FEB89140FEB58E3DFE907740D1413A
      2962050402074A3E2175B08A39FB70582B920000000000000000634D2D7BCD99
      50FFCE9A50FECF9B4EFED39E50FFD29E51FED19D50FED09B4DFFCC9649FEC991
      45FFC28A3FFEBD8439FEB87C32FEB3752CFFAD6E25FEA7661EFEA25F17FF9B57
      11FE954F0AFE512C0B880000000000000000634D2D7BCD9950FFCE9A50FECF9B
      4EFED39E50FFD29E51FED19D50FED09B4DFFCC9649FEC99145FFC28A3FFEBD84
      39FEB87C32FEB3752CFFAD6E25FEA7661EFEA25F17FF9B5711FE954F0AFE512C
      0B8800000000000000000000000000000000000000002E3A47876796C4FF2439
      4FAC0000004D0000001B00000006000000000000000000000000000000EB9191
      91D0101010CE0000000000000049020202E1AAAAAAD9646464C3000000C40000
      0008000000D5191919C8AAAAAAD9313131C0000000000000000066501E9AAD87
      35FFB18B39FFB58D3DFEB99240FFBD9544FFBF9747FEC39A49FFC69C4BFFC79D
      4CFFC69C4CFEC69C4BFFC29949FEC09847FFBD9544FFB89140FEB58E3DFFB18B
      39FF8D6F2AD7AF8938FEC9A051FF5545276300000000000000007257338BD2A1
      5AFFD4A257FFD6A354FFD9A658FFDAA759FFD8A657FFD6A254FFD29D4FFFCD97
      4AFFC79043FFC1893DFFBC8136FFB6792FFFB07128FFAA6921FFA4611AFF9E59
      13FF97510CFF4E2D0D7F00000000000000007257338BD2A15AFFD4A257FFD6A3
      54FFD9A658FFDAA759FFD8A657FFD6A254FFD29D4FFFCD974AFFC79043FFC189
      3DFFBC8136FFB6792FFFB07128FFAA6921FFA4611AFF9E5913FF97510CFF4E2D
      0D7F000000000000000000000000000000000000000000000005628DB4DD8CC1
      F2FF557EA9EB0D18258700000026000000070000000000000044000000F69191
      91D0101010CE000000040000000F0000004C010101EDC5C5C5E4191919C70000
      0037000000FA7A7A7AC8E2E2E2F1040404E00000000000000000876928C9AF89
      37FFB48D3BFFB7903FFEBC9443FFC09847FFC39A4AFEC89E4DFFCBA04FFFCCA1
      50FFCBA050FECBA04FFFC79D4DFEC49B4AFFC09846FFBB9445FEB8913FFFB18A
      38FFAD8735FEC49B4AFF9A7F4DB00201010200000000000000003E311F49D4A2
      58FFD8A85FFEDAA85AFEDFAE5FFFDFAE60FEDDAC5EFEDAA85AFFD5A154FED09B
      4DFFC89144FEC1893CFEBC8337FEB87B31FFB1732AFEAB6B23FEA5631BFF9E5B
      14FE98530EFE27180B3C00000000000000003E311F49D4A258FFD8A85FFEDAA8
      5AFEDFAE5FFFDFAE60FEDDAC5EFEDAA85AFFD5A154FED09B4DFFC89144FEC189
      3CFEBC8337FEB87B31FFB1732AFEAB6B23FEA5631BFF9E5B14FE98530EFE2718
      0B3C0000000000000000000000000000000000000000000000000D151E3F89BA
      E5FFA7D6FFFF5EAED8FF002734910000002500000006000000EE3F3F3FBFC5C5
      C5E4101010CE0000003D010101EB050505DF000000F7AAAAAAD9323232C80101
      01E7040404E2000000FE646464C33F3F3FBF000000000000000067511F99B089
      38FEB48D3CFEB99141FEBD9545FEC29949FEC79D4DFECBA050FECEA353FED0A4
      55FED0A455FECEA353FECBA050FEC1A570FEB7B0A2FEB4B3B1FEB5B0A6FEB29D
      73FEBF9647FEB59658D20B09050D00000000000000000000000003020003BA91
      54DBDCAE66FEDEAE60FEE4B565FFE5B667FEE2B364FEDDAB5BFFD29D4CFEC78F
      3CFFC08632FEBE832CFEB57820FEB2721EFFB17329FEAC6D24FEA6651DFF9F5C
      15FE7F4E1CC701000001000000000000000003020003BA9154DBDCAE66FEDEAE
      60FEE4B565FFE5B667FEE2B364FEDDAB5BFFD29D4CFEC78F3CFFC08632FEBE83
      2CFEB57820FEB2721EFFB17329FEAC6D24FEA6651DFF9F5C15FE7F4E1CC70100
      0001000000000000000000000000000000000000000000000000000000002941
      5C926FACD2FF7CD8FFFF4FC0E6FF0125338F00000025000000CE101010CEC5C5
      C5E4111111CD00000039090909D6E2E2E2F1FFFFFFFFC5C5C5E4050505E10707
      07DBE2E2E2F1FFFFFFFFC5C5C5E40A0A0AD600000000000000001F180A2DAF89
      39FAB78F3EFFBA9342FEC09846FFC59C4BFFC99F4FFECFA453FFD3A756FFD5A9
      59FFD4A859FED3A756FFC7AC7BFEBCBCBCFFC2BBADFFC8BBA2FEC2B9A6FFBCBC
      BBFFC4B596FE3A301A4D00000000000000000000000000000000000000004034
      2249D9AB62FBE3B466FFE8B969FFEBBE6EFFDDAE64FFE3BF8DFFF0DABDFFFBEC
      D8FFF7E3C7FFE5C597FFC99751FFAF6F16FFA96712FFAD6D24FFA7651DFF9A5D
      1CEF1C1209290000000000000000000000000000000040342249D9AB62FBE3B4
      66FFE8B969FFEBBE6EFFDDAE64FFE3BF8DFFF0DABDFFFBECD8FFF7E3C7FFE5C5
      97FFC99751FFAF6F16FFA96712FFAD6D24FFA7651DFF9A5D1CEF1C1209290000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F314BA262B2D9FF83E2FFFF57C2E7FF0227358F000000290000008A0000
      00E9000000A100000000000000A5000000F6000000FB000000E7000000580000
      008B000000E7000000F8000000E8000000780000000000000000000000004C3D
      1B69B99447FCBB9343FEC19847FFC69C4BFFCAA050FED0A554FFD5A959FFD9AD
      5CFFD8AC5CFED5A95AFFC4BFB8FEC9C0AFFFD9C397FFD7BE8FFED6BF91FFC9BB
      9FFFC2C2C2FE1817152000000000000000000000000000000000000000000000
      00006151356EDEB065FBE6B767FFE2B46BFEEDD2A8FED7D0C1FFD6D5D0FEDCDB
      D8FFD5D4CFFECECBC0FEE4CDA7FECF9E58FFA56309FEAB6C22FEA16626F02F22
      12420000000000000000000000000000000000000000000000006151356EDEB0
      65FBE6B767FFE2B46BFEEDD2A8FED7D0C1FFD6D5D0FEDCDBD8FFD5D4CFFECECB
      C0FEE4CDA7FECF9E58FFA56309FEAB6C22FEA16626F02F221242000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000013344EA368B6DBFF8AE5FFFF5DC5E8FF0327348D000000240000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000352B1448AE8D47E6C09849FEC59B4BFECA9F50FED2A95BFEE4BE77FEEEC8
      83FEEDC782FEE1BE7FFEC9C9C9FED2C1A0FED8BF90FED7BE90FED3BF95F69A96
      89ADC9C9C9FE4141415000000000000000000000000000000000000000000000
      0000000000004337254AC59D5DDEE8BF7DFEC7CDC7FEADD1EFFFBDD9F0FEC6DF
      F3FFBEDAF1FEAED0EEFE9CC1E0FEEAC485FFA96712FE8A5E2BC41F170B2D0000
      0000000000000000000000000000000000000000000000000000000000004337
      254AC59D5DDEE8BF7DFEC7CDC7FEADD1EFFFBDD9F0FEC6DFF3FFBEDAF1FEAED0
      EEFE9CC1E0FEEAC485FFA96712FE8A5E2BC41F170B2D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000163956A36EBBDEFF91E8FFFF63C7E9FF0626358C0000
      0024000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0A0411745F3198C49D4FFBE4C07CFEFDD798FFFBD598FFEFD4
      A5FFEED3A5FEF7D59CFFD0D0CFFEDCCFB7FFDFCBA4FEBFB39BD593908D988181
      818BD1D1D1FE3333333F00000000000000000000000000000000000000000000
      0000000000000000000005040105493F2F54878E8BBA98C4EAFFA5CCEDFFAACF
      EEFFA6CCEDFF99C5EAFF88B2D7F268583F8A2921143600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005040105493F2F54878E8BBA98C4EAFFA5CCEDFFAACFEEFFA6CCEDFF99C5
      EAFF88B2D7F268583F8A29211436000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000193D5AA173BFE1FF99EDFFFF69CAEBFF0724
      328A000000230000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002C251930B89D72BCD9D5C5FFC3DAEDFFC4DD
      F3FFC3DCF2FEC3DAEEFFD2D9DEFED6D3CFFF97958FA67777777B78787881B7B7
      B7DABDBDBDDC0303030400000000000000000000000000000000000000000000
      0000000000000000000000000000000000002025283183B8E7FFADCFEEFECCE2
      F4FFBCD8F1FE8DBDE8FE65859FB2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002025283183B8E7FFADCFEEFECCE2F4FFBCD8F1FE8DBD
      E8FE65859FB20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A415DA079C5E4FFA0EFFFFF70CD
      EDFF072433880000002200000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000202020396ADC2CEBAD8F1FFBAD8
      F1FFB9D7F0FEBAD8F1FF707E8995AFAFB0CADBDBDBFFCFCFCFF6D9D9D9FEC7C7
      C7E32A2A2A300000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021292E32BCD9F2FFDAE9F7FFDCEA
      F7FFD9E9F7FFCCE1F4FF738B9FAA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021292E32BCD9F2FFDAE9F7FFDCEAF7FFD9E9F7FFCCE1
      F4FF738B9FAA0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001E4763A37EC9E7FFA8F3
      FFFF75CDECFE0A25338700000022000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000434F5A60B4D4EFFECFE3
      F4FECEE3F4FEAFCFE9F8090A0B0C020202034040404A666666744D4D4D590909
      090B000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000506070797AAB8C1CDE2F5FFCAE0F3FECDE2
      F5FFCAE0F3FEC4DDF2FEB9D4EBF82F363C400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000506070797AAB8C1CDE2F5FFCAE0F3FECDE2F5FFCAE0F3FEC4DD
      F2FEB9D4EBF82F363C4000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000204B69A286CE
      EAFFB0F6FFFF7AD0EEFE0C253386000000210000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B41484CD8E8F7FFDCEB
      F8FFDBEAF7FECDDEEDF51F212426000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000062717B83C6DFF3FEB8D7F1FFBBD8F1FEBEDA
      F2FFBCD8F1FEB7D6F0FEB0D2EEFE9AB9D3E20B0D0F1000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000062717B83C6DFF3FEB8D7F1FFBBD8F1FEBEDAF2FFBCD8F1FEB7D6
      F0FEB0D2EEFE9AB9D3E20B0D0F10000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002350
      6DA08CD3EDFFB7F9FFFF81D2EEFD0B2330830000002100000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000006060708BACDDDE7CDE2F4FECDE2
      F4FECDE2F4FECDE2F4FEAFC1CFD9030304040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001216181AABCBE4F3B6D5F0FEAACFEEFFAED1EEFEB0D2
      EFFFAED1EEFEAACEEDFEA4CBECFE9DC7EBFF5365757F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001216181AABCBE4F3B6D5F0FEAACFEEFFAED1EEFEB0D2EFFFAED1EEFEAACE
      EDFEA4CBECFE9DC7EBFF5365757F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002454709F91D7EFFFBFFDFFFF86D4EFFD0D23308300000021000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000434D565CC0DBF2FFC0DBF2FFC0DB
      F2FFBFDAF1FEC0DBF2FFBFDAF1FE2D333A4A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000048596570B9D8F1FFA4CBEDFF9DC7EBFFA0C9ECFFA1CA
      ECFFA0C9ECFF9DC8EBFF98C4EBFF91C0E9FF759CBFEE12171B29000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000048596570B9D8F1FFA4CBEDFF9DC7EBFFA0C9ECFFA1CAECFFA0C9ECFF9DC8
      EBFF98C4EBFF91C0E9FF759CBFEE12171B290000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000295B76A296DCF2FFC6FFFFFF8BD6EDFC10243081000000200000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B92A9C5B2D4F0FFB2D4F0FFB2D4
      F0FFB1D3EFFEB2D4F0FFB1D3EFFE5D7185DB0101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000566F87BDAED1EFFE90C0E8FE8FBFE9FF91BFE9FE93C1
      EAFF91C0E9FE8EBEE8FE89BBE7FE84B9E7FF71A0CBFE303640B4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000566F87BDAED1EFFE90C0E8FE8FBFE9FF91BFE9FE93C1EAFF91C0E9FE8EBE
      E8FE89BBE7FE84B9E7FF71A0CBFE303640B40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000295D7A9F9CE0F5FFCEFFFFFF92D7EBFC1B2226800000
      0020000000040000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C10173992B6D7FEA4CBECFEA4CBECFEA4CB
      ECFEA4CBECFEA4CBECFEA4CBECFE647B96FE0B0E144C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000506080F364867FC759EC5FE80B6E5FE82B7E6FF83B7E6FE85B9
      E7FF76A4CFFE5B7DA0FE49617FFE3D4F68FF323E54FE282C3BFB0303030A0000
      0000000000000000000000000000000000000000000000000000000000000506
      080F364867FC759EC5FE80B6E5FE82B7E6FF83B7E6FE85B9E7FF76A4CFFE5B7D
      A0FE49617FFE3D4F68FF323E54FE282C3BFB0303030A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D637F9FA0E3F2FFC6DBDAFFAAAAB0FB2226
      247E0000001F0000000400000000000000000000000000000000000000000000
      00000000000000000000000000001A24368C83AAD1FE97C3EAFF97C3EAFF97C3
      EAFF96C2E9FE97C3EAFF91BBE3FE3D4D68FF181E2B9700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010131731304362FF405370FF5478A1FF78AFDFFF79B0E0FF4967
      89FF2A3449FF293044FF283043FF293043FF282F42FF252939FF0808081B0000
      0000000000000000000000000000000000000000000000000000000000001013
      1731304362FF405370FF5478A1FF78AFDFFF79B0E0FF496789FF2A3449FF2930
      44FF283043FF293043FF282F42FF252939FF0808081B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005363709FCDCBCFFFA4B6A0FF3966
      35FB2223227C0000001E00000004000000000000000000000000000000000000
      0000000000000000000000000000233046B8537197FE87B8E4FF89BBE8FF7CA8
      D3FF5C799EFE516B8EFF384864FE2A344BFF1E2737BF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A0D1126304363FF314463FE3E506DFE4B6A90FF4C6C90FE2931
      45FF293044FE293146FE283043FE272D3FFF262B3CFE2E3240F0000000030000
      0000000000000000000000000000000000000000000000000000000000000A0D
      1126304363FF314463FE3E506DFE4B6A90FF4C6C90FE293145FF293044FE2931
      46FE283043FE272D3FFF262B3CFE2E3240F00000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000505E52A03A6A2CFF98A8
      92FFB9BAC0FA1715217400000019000000000000000000000000000000000000
      0000000000000000000000000000202C3FAB2F4262FE405678FE5F83ACFE303E
      58FE2A364DFE2A364DFE2A364DFE2A364DFE1F2738BC00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010102374762E62F4363FE304362FE3A4F6EFF2D384EFE2932
      47FF2A3449FE293247FE283044FE282E41FF272D3FFE24283097000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0102374762E62F4363FE304362FE3A4F6EFF2D384EFE293247FF2A3449FE2932
      47FE283044FE282E41FF272D3FFE242830970000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000059615C9FC9CA
      D2FF7C7DC2FF6363C6FE09090F32000000000000000000000000000000000000
      00000000000000000000000000000E12194830415EFD2B3852FF2A344BFF2B37
      50FF2B3750FE2B3750FF2B3750FE2C3850FF1419247600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002228336A304463FE304362FF2E3E5AFF2A354BFF2D3C
      57FF2C3A54FF2A354DFF283146FF272D3FFF303441E206060716000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002228336A304463FE304362FF2E3E5AFF2A354BFF2D3C57FF2C3A54FF2A35
      4DFF283146FF272D3FFF303441E2060607160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003636
      5D8A33339CF73A3A79A70303060A000000000000000000000000000000000000
      000000000000000000000000000000000000151C266B303C52F82A354CFF2C39
      53FF2B3953FE2C3953FF303D55FE1F27369F0101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101022D354487324463FB2D3C57FF2E405DFE2D3D
      59FF2C3953FE2A354CFE283146FE303544DA0C0C0F2B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101022D354487324463FB2D3C57FF2E405DFE2D3D59FF2C3953FE2A35
      4CFE283146FE303544DA0C0C0F2B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026264C6A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007070B221D222E832C36
      48C32E384CCD262F3CA50E10153E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F121630252E3E8F35435BDE2D3C
      58FE2C3952FE353D4ED822252E7C0303040D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000F121630252E3E8F35435BDE2D3C58FE2C3952FE353D
      4ED822252E7C0303040D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E3C7F8C1A6FE9FF1A6FE9FF1A6F
      E9FF1A6FE9FF1A6FE9FF0E3C7F8C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000050391867C68E3EFF503918670000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000050391867C68E
      3EFF503918670000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004C27C10064
      32FC004C27C10000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000126AE4FF75A1F4FF91B1F4FF8FAE
      F2FF8DABF1FF8CA9F0FF1A6FE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004F391767C58C3DFFF0CF99FFC68E3EFF5039
      1867000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F391767C58C3DFFF0CF
      99FFC68E3EFF5039186700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000F0000000F0000000F0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006432FC00FF
      32FF006432FC0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000126AE4FF4180F2FF3F7BEFFF3C75
      ECFF3970E9FF8EACF1FF1A6FE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004E371667C38A3AFFE9AB3CFFE39D25FFF0D099FFC68E
      3EFF503918670000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E371667C38A3AFFE9AB3CFFE39D
      25FFF0D099FFC68E3EFF50391867000000000000000000000000000000000000
      000000000000000000000000000000000000090909362C2E2EA604070A600000
      00260000000D0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000160A39003E209E00562BD900602FEF00FF
      32FF006532FE004A24BB001E0F4D000000030000000000000000000000000000
      000000000000000000000000000000000000126AE4FF4687F5FF4180F1FF3F7B
      EFFF3C76ECFF90AFF3FF1A6FE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D361567C08636FFF0B340FFE89C10FFE4970EFFE39D24FFF0D0
      99FFC58E3DFF5039186700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004D361567C08636FFF0B340FFE89C10FFE497
      0EFFE39D24FFF0D099FFC58E3DFF503918670000000000000000000000000000
      000000000000000000000000000000000000000000002E3A47876796C4FF2439
      4FAC0000004D0000001B00000006000000000000000000000000000000000000
      0000000000000000000000000000005C2EE9007E25C000D22DE400FF32FF00FF
      32FF00FF32FF009927C8005B2CE0001D0F4A0000000000000000000000000000
      000000000000000000000000000000000000126AE4FF4C8EF8FF4385F4FF4281
      F2FF3F7BEFFF91B2F5FF1A6FE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004C341467BC8332FFF4BA44FFEFA615FFECA113FFE89C11FFE5980FFFE39F
      25FFF1D099FFC58D3DFF50391867000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004C341467BC8332FFF4BA44FFEFA615FFECA113FFE89C
      11FFE5980FFFE39F25FFF1D099FFC58D3DFF5039186700000000000000000000
      0000000000000000000000000000000000000000000000000005628DB4DD8CC1
      F2FF557EA9EB0D18258700000026000000070000000000000000000000000000
      0000000000000000000000000000006432FD00D22DE4006B25C0005C29CF00FF
      32FF005C29CF009927C800D22DE4005229CE0000000000000000000000000000
      000000000000000000000000000000000000126AE4FF5395FAFF458AF7FF4487
      F4FF4282F2FF92B5F6FF1A6FE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A31
      1267B97E2EFFF9BE47FFF4AC19FFF2A918FFF0A616FFEDA114FFE99E11FFE599
      0FFFE49E26FFF0D09AFFC58D3CFF503918670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A311267B97E2EFFF9BE47FFF4AC19FFF2A918FFF0A616FFEDA1
      14FFE99E11FFE5990FFFE49E26FFF0D09AFFC58D3CFF50391867000000000000
      00000000000000000000000000000000000000000000000000000D151E3F89BA
      E5FFA7D6FFFF5EAED8FF00273491000000250000000600000000000000000000
      0000000000000000000000000000004E28C6006030F3004120A4006532FE00FF
      32FF006432FD005B29CE00FF32FF006331FA0000000000000000000000000000
      000000000000000000000000000000000000126AE4FF5B9CFCFF478EF9FF478B
      F7FF4487F4FF94B8F8FF1A6FE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000492F1067B679
      29FFFBC552FFFAB321FFF7AE19FFF5AC1AFFF2AA19FFF1A717FFEDA214FFEA9E
      12FFE5990FFFE49F26FFF1D09AFFC58D3CFF5039186700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000492F1067B67929FFFBC552FFFAB321FFF7AE19FFF5AC1AFFF2AA19FFF1A7
      17FFEDA214FFEA9E12FFE5990FFFE49F26FFF1D09AFFC58D3CFF503918670000
      0000000000000000000000000000000000000000000000000000000000002941
      5C926FACD2FF7CD8FFFF4FC0E6FF0125338F0000002500000006000000000000
      0000000000000000000000000000000000000023115B005229D000602FF000FF
      32FF006426C3009927C800E730F1005C2EE90000000000000000000000000000
      000000000000000000000000000000000000126AE4FF63A3FEFF4A93FBFF498F
      F9FF478CF7FF96BBF9FF1A6FE9FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000472E0E67B27525FFFBC6
      53FFFBC042FFFAB72AFFF9B019FFF7AF1BFFF5AD1AFFF3AB18FFF1A717FFEDA2
      15FFEA9F12FFE69A0FFFE5A026FFF1D199FFC48C3CFF50391867000000000000
      000000000000000000000000000000000000000000000000000000000000472E
      0E67B27525FFFBC653FFFBC042FFFAB72AFFF9B019FFF7AF1BFFF5AD1AFFF3AB
      18FFF1A717FFEDA215FFEA9F12FFE69A0FFFE5A026FFF1D199FFC48C3CFF5039
      1867000000000000000000000000000000000000000000000000000000000000
      00000F314BA262B2D9FF83E2FFFF57C2E7FF0227358F00000024000000060000
      00000000000000000000000000000031187D005A2AD600A929D000FF32FF00FF
      32FF00FF32FF00BD2BD9005B29CE004121A60000000000000000000000000000
      000000000000000000000000000000000000126AE4FF68A8FFFF5098FDFF4A93
      FBFF4990F9FF97BDFAFF1A6FE9FF000000000000000000000000000000000000
      000000000000000000000000000000000000462C0C67AF7021FFF7BB3DFFFABD
      3FFFFABF42FFFABA32FFF9B11AFFF9B21CFFF7B01BFFF5AD1AFFF3AA19FFF1A7
      17FFEEA314FFEA9F12FFE79A0FFFE59F26FFF1D09AFFC38B3BFF503918670000
      0000000000000000000000000000000000000000000000000000462C0C67AF70
      21FFF7BB3DFFFABD3FFFFABF42FFFABA32FFF9B11AFFF9B21CFFF7B01BFFF5AD
      1AFFF3AA19FFF1A717FFEEA314FFEA9F12FFE79A0FFFE59F26FFF1D09AFFC38B
      3BFF503918670000000000000000000000000000000000000000000000000000
      00000000000013344EA368B6DBFF8AE5FFFF5DC5E8FF0327348D000000240000
      0006000000000000000000000000005B2DE600E730F1008926C3005C29CF00FF
      32FF00602FF0005229CF002914690004020D0000000000000000000000000000
      000000000000000000000000000000000000126AE4FF6BABFFFF599FFEFF4B95
      FDFF4B93FBFF98C0FCFF1A6FE9FF000000000000000000000000000000000000
      000000000000000000000000000000000000AB6D1DFFF2B63AFFF6C14FFFFAC4
      51FFFBC554FFFBC34DFFFABA33FFF9B21CFFF9B21CFFF8B01BFFF5AE1BFFF4AB
      19FFF6C86BFFF7D087FFF4CE86FFF3CC84FFF1C982FFF1D198FF2F6E34FF0064
      32FC004C27C10000000000000000000000000000000000000000AB6D1DFFF2B6
      3AFFF6C14FFFFAC451FFFBC554FFFBC34DFFFABA33FFF9B21CFFF9B21CFFF8B0
      1BFFF5AE1BFFF4AB19FFF6C86BFFF7D087FFF4CE86FFF3CC84FF3A7D45FF0266
      33FF2F6E34FF0000000000000000000000000000000000000000000000000000
      00000000000000000000163956A36EBBDEFF91E8FFFF63C7E9FF0626358C0000
      0024000000050000000000000000006432FB00FF32FF005B29CE006532FF00FF
      32FF006432FC003F1F9F005C2EE8004E26C20000000000000000000000000000
      000000000000000000000000000000000000126AE4FF6BACFFFF62A6FFFF4D98
      FEFF4D97FDFF99C2FDFF1A6FE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000004E300C75AA6C1CFFAC6E1DFFAE6F
      1FFFAF7121FFB07222FFF9BB37FFF9B11BFFF9B21CFFF9B21CFFF9B11CFFF6AE
      1BFFF8CA6DFFBC8231FFBD8333FFBE8534FFC08636FFC08837FF016432FD00FF
      32FF006432FC00000000000000000000000000000000000000004E300C75AA6C
      1CFFAC6E1DFFAE6F1FFFAF7121FFB07222FFF9BB37FFF9B11BFFF9B21CFFF9B2
      1CFFF9B11CFFF6AE1BFFF8CA6DFFBC8231FFBD8333FFBE8534FF016532FF00FF
      32FF016432FD0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000193D5AA173BFE1FF99EDFFFF69CAEBFF0724
      328A000000230000000500000000005E2FED00D22DE4009927C8005C29CF00FF
      32FF005C29CF007326BF00E730F1006432FC0000000000000000000000000000
      000000000000000000000000000000000000126AE4FF6BACFFFF68AAFFFF519C
      FFFF4D98FEFF9AC4FEFF1A6FE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AE6F20FFF7BC3BFFF7B019FFF9B21CFFF9B21CFFF9B21CFFF9B1
      1BFFF9CC6EFFB97E2EFF0000000000160A39003E209E00562BD900602FEF00FF
      32FF006532FE004A24BB001E0F4D000000030000000000000000000000000000
      0000000000000000000000000000AE6F20FFF7BC3BFFF7B019FFF9B21CFFF9B2
      1CFFF9B21CFFF9B11BFFF9CC6EFF90782FFF003E209E00562BD900602FEF00FF
      32FF006532FE004A24BB001E0F4D000000030000000000000000000000000000
      0000000000000000000000000000000000001A415DA079C5E4FFA0EFFFFF70CD
      EDFF07243388000000220000000500361C8A005A2AD600A929D000FF32FF00FF
      32FF00FF32FF00A929D0007326BF006231F80000000000000000000000000000
      000000000000000000000000000000000000126AE4FF69AAFFFF6AABFFFF59A1
      FFFF4D9AFFFF9BC5FEFF1A6FE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AC6D1DFFF5BB42FFF5AD18FFF7B11BFFF9B21CFFF9B21CFFF9B2
      1CFFFBCD6EFFB87B2CFF00000000005C2EE9007E25C000D22DE400FF32FF00FF
      32FF00FF32FF009927C8005B2CE0001D0F4A0000000000000000000000000000
      0000000000000000000000000000AC6D1DFFF5BB42FFF5AD18FFF7B11BFFF9B2
      1CFFF9B21CFFF9B21CFFFBCD6EFF0F6731FF007E25C000D22DE400FF32FF00FF
      32FF00FF32FF009927C8005B2CE0001D0F4A0000000000000000000000000000
      000000000000000000000000000000000000000000001E4763A37EC9E7FFA8F3
      FFFF75CDECFE0A253387000000220000000500211055005128CD006532FE00FF
      32FF006532FE00552AD6003B1E97001D0F4A0000000000000000000000000000
      000000000000000000000000000000000000126AE4FF68A7FEFF69A9FEFF62A6
      FFFF4E9BFFFF9BC6FFFF1A6FE9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AA6B1CFFF4BC4BFFF3AC1BFFF5AD19FFF7B11CFFF9B21CFFF9B2
      1CFFFBCE6EFFB67929FF00000000006432FD00D22DE4006B25C0005C29CF00FF
      32FF005C29CF009927C800D22DE4005229CE0000000000000000000000000000
      0000000000000000000000000000AA6B1CFFF4BC4BFFF3AC1BFFF5AD19FFF7B1
      1CFFF9B21CFFF9B21CFFFBCE6EFF006532FF00D22DE4006B25C0005C29CF00FF
      32FF005C29CF009927C800D22DE4005229CE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000204B69A286CE
      EAFFB0F6FFFF7AD0EEFE0C253386000000210000000500000000006432FC00FF
      32FF006432FC0000000000000000000000000000000000000000000000000336
      788C0763DDFF0763DDFF0763DDFF0763DDFF126AE4FF66A3FCFF67A6FDFF68A8
      FEFF539EFFFF9BC6FFFF1A6FE9FF1A6FE9FF1A6FE9FF1A6FE9FF1A6FE9FF0E3C
      7F8C000000000000000000000000000000000000000000000000000000000000
      000000000000A96919FFF2BB4FFFF0AC22FFF1AA16FFF4AE1AFFF7B11CFFF9B2
      1CFFFBCE6EFFB37626FF00000000004E28C6006030F3004120A4006532FE00FF
      32FF006432FD005B29CE00FF32FF006331FA0000000000000000000000000000
      0000000000000000000000000000A96919FFF2BB4FFFF0AC22FFF1AA16FFF4AE
      1AFFF7B11CFFF9B21CFFFBCE6EFF27692FFF006030F3004120A4006532FE00FF
      32FF006432FD005B29CE00FF32FF006331FA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002350
      6DA08CD3EDFFB7F9FFFF81D2EEFD0B2330830000002100000004004C25BD0064
      32FC004C25BD0000000000000000000000000000000000000000000000000051
      BBFF6095FFFF5D8FF5FF5E93F6FF6097F8FF619AF6FF639EF9FF65A2FBFF69A6
      FCFF5EA2FEFF9AC6FFFF9BC6FFFF9CC7FFFF9CC7FFFF9BC6FFFF9DC7FFFF0A63
      DDFF000000000000000000000000000000000000000000000000000000000000
      000000000000A86818FFEEB74DFFEDAC28FFEEA614FFF2AB19FFF4AD1AFFF7B0
      1BFFFBCE6EFFB17424FF00000000000000000023115B005229D000602FF000FF
      32FF006426C3009927C800E730F1005C2EE90000000000000000000000000000
      0000000000000000000000000000A86818FFEEB74DFFEDAC28FFEEA614FFF2AB
      19FFF4AD1AFFF7B01BFFFBCE6EFFB17424FF0023115B005229D000602FF000FF
      32FF006426C3009927C800E730F1005C2EE90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002454709F91D7EFFFBFFDFFFF86D4EFFD0D23308300000021000000040000
      0000000000000000000000000000000000000000000000000000000000000025
      54670051BBFF5D8FF9FF5A8CEFFF5C90F1FF5E94F4FF6199F6FF639EF9FF66A2
      FBFF65A4FCFF509AFEFF4E9AFFFF4F9BFFFF4F9BFFFF509BFFFF0A63DDFF0025
      5467000000000000000000000000000000000000000000000000000000000000
      000000000000A66616FFE9B349FFEAAB31FFEAA214FFEEA615FFF2AB19FFF4AD
      1AFFF9CD6EFFAF7121FF000000000031187D005A2AD600A929D000FF32FF00FF
      32FF00FF32FF00BD2BD9005B29CE004121A60000000000000000000000000000
      0000000000000000000000000000A66616FFE9B349FFEAAB31FFEAA214FFEEA6
      15FFF2AB19FFF4AD1AFFF9CD6EFF586B29FF005A2AD600A929D000FF32FF00FF
      32FF00FF32FF00BD2BD9005B29CE004121A60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000295B76A296DCF2FFC6FFFFFF8BD6EDFC10243081000000200000
      0004000000000000000000000000000000000000000000000000000000000000
      0000002554670051BBFF5C8CF5FF5A8CEFFF5B8FF1FF5E94F3FF6198F6FF629D
      F8FF67A2FBFF589CFCFF4C97FDFF4F9AFFFF509BFFFF0A63DDFF002554670000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A56515FFE5AC46FFE8A936FFE7A31FFFE9A010FFEDA516FFF1AA
      18FFF7CA6DFFAD6F1FFF00000000005B2DE600E730F1008926C3005C29CF00FF
      32FF00602FF0005229CF002914690004020D0000000000000000000000000000
      0000000000000000000000000000A56515FFE5AC46FFE8A936FFE7A31FFFE9A0
      10FFEDA516FFF1AA18FFF7CA6DFF106630FF00E730F1008926C3005C29CF00FF
      32FF00602FF0005229CF002914690004020D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000295D7A9F9CE0F5FFCEFFFFFF92D7EBFC1B2226800000
      0020000000040000000000000000000000000000000000000000000000000000
      000000000000002554670051BBFF5A8AF1FF5A8BEFFF5B8FF1FF5D93F3FF6098
      F6FF639DF8FF629FFBFF4D95FCFF4D98FDFF0A63DDFF00255467000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A56515FFE0A943FFE2A532FFE4A328FFE49B0FFFE8A013FFEDA5
      15FFF6C86CFFAB6C1DFF00000000006432FB00FF32FF005B29CE006532FF00FF
      32FF006432FC003F1F9F005C2EE8004E26C20000000000000000000000000000
      0000000000000000000000000000A56515FFE0A943FFE2A532FFE4A328FFE49B
      0FFFE8A013FFEDA515FFF6C86CFF026532FF00FF32FF005B29CE006532FF00FF
      32FF006432FC003F1F9F005C2EE8004E26C20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D637F9FA0E3F2FFC6DBDAFFAAAAB0FB2226
      247E0000001F0000000400000000000000000000000000000000000000000000
      00000000000000000000002554670051BBFF5988EEFF5A8BEFFF5B8FF1FF5D93
      F3FF6097F5FF649DF8FF5899F9FF0A63DDFF0025546700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A56515FFDFA541FFDEA02FFFE0A22EFFDF9812FFE49B0FFFE8A0
      12FFF4C66BFFAA6B1AFF00000000005E2FED00D22DE4009927C8005C29CF00FF
      32FF005C29CF007326BF00E730F1006432FC0000000000000000000000000000
      0000000000000000000000000000A56515FFDFA541FFDEA02FFFE0A22EFFDF98
      12FFE49B0FFFE8A012FFF4C66BFF0B6530FF00D22DE4009927C8005C29CF00FF
      32FF005C29CF007326BF00E730F1006432FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005363709FCDCBCFFFA4B6A0FF3966
      35FB2223227C0000001E00000004000000000000000000000000000000000000
      0000000000000000000000000000002554670051BBFF5787EDFF598AEFFF5B8E
      F1FF5D92F2FF6097F5FF015DD7FF002554670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A56515FFDFAC53FFE1AE54FFE4B258FFE4AD49FFE4A939FFE9AE
      3FFFF0C368FFA86919FF0000000000361C8A005A2AD600A929D000FF32FF00FF
      32FF00FF32FF00A929D0007326BF006231F80000000000000000000000000000
      0000000000000000000000000000A56515FFDFAC53FFE1AE54FFE4B258FFE4AD
      49FFE4A939FFE9AE3FFFF0C368FF4C6727FF005A2AD600A929D000FF32FF00FF
      32FF00FF32FF00A929D0007326BF006231F80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000505E52A03A6A2CFF98A8
      92FFB9BAC0FA1715217400000019000000000000000000000000000000000000
      000000000000000000000000000000000000002554670051BBFF5786ECFF598A
      EFFF5B8EF1FF015DD7FF00255467000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C2E0A75A56515FFA56515FFA56515FFA56515FFA56515FFA565
      15FFA66616FF4D2F0A75000000000000000000211055005128CD006532FE00FF
      32FF006532FE00552AD6003B1E97001D0F4A0000000000000000000000000000
      00000000000000000000000000004C2E0A75A56515FFA56515FFA56515FFA565
      15FFA56515FFA56515FFA66616FF4D2F0A7500211055005128CD006532FE00FF
      32FF006532FE00552AD6003B1E97001D0F4A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000059615C9FC9CA
      D2FF7C7DC2FF6363C6FE09090F32000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002554670051BBFF5786
      ECFF015DD7FF0025546700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006432FC00FF
      32FF006432FC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006432FC00FF
      32FF006432FC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003636
      5D8A33339CF73A3A79A70303060A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000002554670054
      C3FF002554670000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004C25BD0064
      32FC004C25BD0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004C25BD0064
      32FC004C25BD0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026264C6A0000000000000000000000000000000000000000121213345E5E
      5EAC2C2C2DA3000000380000000A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A2C
      5E67196EE9FF0A2C5E6700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCB8BAF8C5C4
      C4FF979798FF242424970000002A000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      656B4B4B4C4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000064636167C68E
      3BFF646361670000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000082B5C67186F
      E8FFABC0F5FF196EE9FF0A2C5E67000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000665D5F9CE3DC
      DFFFABABACFF888888F2050505720000001B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000074747D834251
      D6FC4E55B8EC4545454700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000064636167C58C3AFFF0CF
      99FFC68E3BFF6463616700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000082A5C67156CE6FF608F
      EFFF4C7DEBFFABC1F5FF196EE9FF0A2C5E670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006960
      639DE2DDDFFFA0A0A1FF696969DB000000500000001100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000343434355464EAFF4C62
      EAFF2C44E3FF6166ACD90909090A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404055D5D
      5F63010101020000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000064636167C38A37FFE9AB39FFE39D
      22FFF0D099FFC68E3BFF64636167000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000006295A671269E4FF6497F3FF3E7A
      EFFF3B74ECFF4C7DEBFFABC1F5FF186CE8FF0A2C5E6700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000393898BCFD6D3D3FF989798FF3C3C3CB50000003600000009000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059595B5D586AEFFF3E53
      E0FF233DDBFF1B2CC7FF37373738000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006E6E767A7B7B
      9FB3000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000064636167C08633FFF0B33DFFE89C0DFFE497
      0BFFE39D21FFF0D099FFC58E3AFF646361670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006295A670E64E0FF6CA1F8FF4284F3FF4080
      F1FF3E7AEFFF3B75ECFF4D7EECFFABC1F5FF186DE8FF0A2C5E67000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A09091FB0A5A8E6CBC8C8FF8E8E8DFE1717178A00000022000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F4F51525062E7FF384E
      E0FF2038D7FF172CCBFF43434345000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0D0D0E383CCAF45858
      5B5D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000064636167BC832FFFF4BA41FFEFA612FFECA110FFE89C
      0EFFE5980CFFE39F22FFF1D099FFC58D3AFF6463616700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000022758670A61DDFF84B4FDFF5294F9FF4488F6FF4385
      F4FF4180F2FF3E7AEFFF3C76EDFF4D80ECFFABC1F5FF176CE8FF0A2C5E670000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A171838C6BBBEF9BAB7B8FF666667E80000005C000000130000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000212121225465DFF9334A
      DEFF1E36D4FF152BCFFF74747C87000000000000000000000000000000000000
      000000000000000000000000000000000000000000007C7D919B2E38CCF70C0C
      0C0D000000000000000000000000000000000000000000000000000000000000
      00000000000064636067B97B2BFFF9BE44FFF4AC16FFF2A915FFF0A613FFEDA1
      11FFE99E0EFFE5990CFFE49E23FFF0D09AFFC58D39FF64636167000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002255667045EDAFF77B1FFFF67A5FCFF5A9BFBFF468DF9FF468A
      F7FF4386F4FF4181F2FF3E7BF0FF3C76EDFF4D80ECFFACC2F5FF176CE8FF0A2B
      5E67000000000000000000000000000000000000000000000000000000000000
      000000000000000000002D2A2C4FCDC2C5FFA8A6A6FF2E2E2FB9000000340000
      000E0000001E0000003D000000470000003A0000001F00000008000000000000
      000000000000000000000000000000000000000000000000000085879DA33047
      DEFF1A33D1FF132ED4FF3C47B3EE202020210000000000000000000000000000
      000000000000000000000000000000000000444445460C24DFFF7476838A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000064626067B67626FFFBC54FFFFAB31EFFF7AE16FFF5AC17FFF2AA16FFF1A7
      14FFEDA211FFEA9E0FFFE5990CFFE49F23FFF1D09AFFC58D39FF646361670000
      0000000000000000000000000000000000000000000000000000000000000000
      000000255667005AD6FF7BB7FFFF67A7FEFF67A6FDFF61A1FCFF4991FAFF478D
      F9FF468AF7FF4386F4FF4181F2FF3F7CF0FF3C77EDFF4E81EDFFACC2F5FF176C
      E7FF0A2B5E670000000000000000000000000000000000000000000000000000
      0000000000000000000000000000433D3F63C8BFC1FB868585FB1B1B1DB62F2F
      30AF636161DE7D7977E87C7977E9605E5DE22E2E30C000000072000000280000
      00060000000000000000000000000000000000000000000000001919191A5967
      D6EF1630D2FF122BD0FF142CD0FF7B7C93AA0000000000000000000000000000
      0000000000000000000000000000161616174A58CAE72136D3F71919191A0000
      0000000000000000000000000000000000000000000000000000000000006462
      6067B27222FFFBC650FFFBC03FFFFAB727FFF9B016FFF7AF18FFF5AD17FFF3AB
      15FFF1A714FFEDA212FFEA9F0FFFE69A0CFFE5A023FFF1D199FFC48C39FF6463
      6167000000000000000000000000000000000000000000000000000000000000
      00000054C9FF82C0FFFF7CB8FFFF7CB8FFFF7BB6FFFF75AEFDFF4F97FCFF4991
      FBFF488EF9FF468BF7FF7AA9F8FF9DBEF8FF9DBDF9FF9DBCFBFF9BBAFAFFADC4
      FAFF166DE7FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000504E4E80AAACAEFF999696F89B94
      8EC58C867D9885827C888B86818D9B938EA4ADA6A0D17F7F7CEA101012A50000
      0039000000090000000000000000000000000000000000000000000000005252
      53542E43D7FF122BCEFF132DD3FF1325C2FF5B5B5D6100000000000000000000
      0000000000000000000005050506787DADC2132EE2FF70717A7F000000000000
      000000000000000000000000000000000000000000000000000064626067AF6D
      1EFFF7BB3AFFFABD3CFFFABF3FFFFABA2FFFF9B117FFF9B219FFF7B018FFF5AD
      17FFF3AA16FFF1A714FFEEA311FFEA9F0FFFE79A0CFFE59F23FFF1D09AFFC38B
      38FF646361670000000000000000000000000000000000000000000000000000
      000000265A750054C7FF0055CAFF0057CEFF0058D1FF0058D1FF67A7FEFF4A94
      FDFF4A92FBFF488FF9FF8AB4FAFF0F66E1FF0F66E1FF1066E2FF1269E4FF1267
      E3FF0A3169750000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002122257A999593E5797268866F68
      616F817A74818F8B878F8D89858D87827E87857B7985A2938FA69E9B97EA1313
      13A30000002C0000000300000000000000000000000000000000000000000000
      000072737A7D263CD3FF0C26CDFF112CD7FF343EB4F235353536000000000000
      000000000000000000007E7F96A31B34E1FF5661C0DF0A0A0A0B000000000000
      0000000000000000000000000000000000000000000000000000AB6A1AFFF2B6
      37FFF6C14CFFFAC44EFFFBC551FFFBC34AFFFABA30FFF9B219FFF9B219FFF8B0
      18FFF5AE18FFF4AB16FFF6C868FFF7D087FFF4CE86FFF3CC84FFF1C982FFF1D1
      98FFC48B38FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000059CFFF6EADFFFF4B97
      FEFF4B95FDFF4A92FBFF8BB7FBFF0A61DDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004050633858482D98076698E746A5E76867F
      758D968F869A90877F928B827B8E8981788C89847A8D897C798CA58F8FA98685
      84EC000000730000001100000000000000000000000000000000000000000000
      000000000000808190951A31D0FF0520CCFF1A34DBFF595EABE01C1C1C1D0000
      0000000000007B7D8B951C35E0FF0F28D4FF49494A4B00000000000000000000
      0000000000000000000000000000000000000000000000000000706E6A75AA69
      19FFAC6B1AFFAE6C1CFFAF6E1EFFB06F1FFFF9BB34FFF9B118FFF9B219FFF9B2
      19FFF9B119FFF6AE18FFF8CA6AFFBC822EFFBD8330FFBE8531FFC08633FFC088
      34FF726F6B750000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000056CAFF75B1FFFF4E99
      FFFF4D98FEFF4C96FDFF8CBAFCFF0761DCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000040404299978D83C877685B79827567899E94
      89A2968A7D988E8278918B81758E897E738C897F758D88837A8F927C7994B6A7
      A3D5323435BF0000002800000001000000000000000000000000000000000000
      00000000000000000000808191961028CCFF0924CCFF273EDBFF7476A2C62424
      24257D7F939F1D36E2FF0521D8FF7B7D929C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AE6C1DFFF7BC38FFF7B016FFF9B219FFF9B2
      19FFF9B219FFF9B118FFF9CC6BFFB97B2BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000055C7FF79B3FFFF559F
      FFFF4D99FFFF4D98FEFF8EBCFEFF045EDAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000013716D6DD38474639C7C6C5A829B8D7EA0A194
      87A5998B7D9B95857897928375948E8174918D8075908C8378928E837C94AE95
      92B6787876E40000004500000005000000000000000000000000000000000000
      000000000000000000000000000076778084142BCCFF0C27CCFF1C31CEFF3F48
      B3EE152EDAFF021DD4FF5E67B7D60C0C0C0D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AC6A1AFFF5BB3FFFF5AD15FFF7B118FFF9B2
      19FFF9B219FFF9B219FFFBCD6BFFB87829FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000059CFFF79B3FFFF5FA4
      FFFF4D99FFFF4E9AFFFF8EBDFEFF0A61DDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000204052D847E78E0836E589287735F8EAE9E8FB1A797
      87AAA29080A49E8D7CA09B8B7A9D9887789A9686779893867A98948B7F99AA8D
      88B197928FEA0000005400000006000000000000000000000000000000000000
      00000000000000000000000000000000000059595B5D1328C0FD0018C3FF041E
      CAFF0016C4FF505BBBE020202021000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AA6819FFF4BC48FFF3AC18FFF5AD16FFF7B1
      19FFF9B219FFF9B219FFFBCE6BFFB67626FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000056CAFF77AFFEFF65A6
      FEFF4F9BFFFF4E9AFFFF8FBEFFFF0761DCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000007090B34807971E5836A5194977F6A9CBAA99ABDB4A5
      95B7B1A18FB4AE9B8BAFAA9886ABA79786A9A59686A7A19487A59F9688A3B08E
      87B599918EEB0000005400000002000000000000000000000000000000000000
      00000000000000000000000000001515151676778490081FC6FD0014C4FF0013
      C0FF0014C3FF72759CC004040405000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A96616FFF2BB4CFFF0AC1FFFF1AA13FFF4AE
      17FFF7B119FFF9B219FFFBCE6BFFB37323FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000055C7FF75ABFDFF67A5
      FDFF569DFEFF4D99FFFF8FBEFFFF045EDAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000080A0C267D7873E6866A4EA6987B609A997C5F9E9C7D
      619E9E8165A09E8368A09B81679D9980689B947C65968E7863938D7C6891AC8B
      7EB494908DE80000004500000000000000000000000000000000000000000000
      000000000000000000005757595C525CBDE20521E3FF001AD8FF0016CBFF061E
      C9FF041CC6FF0010BDFF70729BC21B1B1B1C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A86515FFEEB74AFFEDAC25FFEEA611FFF2AB
      16FFF4AD17FFF7B018FFFBCE6BFFB17121FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000053C2FF73A8FBFF66A2
      FBFF5FA1FCFF4C97FEFF8FBEFFFF015BD7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000007696766CA7E6448C5AD987AADC7B29FCAB9A0
      86BCB4977CB5AE9074AFA98D71AAA78D74A9A7917AAAA89480ABAD9B8AB0CEB1
      A5DB686A6AD30000002100000000000000000000000000000000000000000000
      0000363636378184A5BC4152E0FF2F48EEFF1732E6FF0320E4FF0A23DAFF6363
      676A7A7B888D1126D1FF0016D5FF565BA8DA3535353600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A66313FFE9B346FFEAAB2EFFEAA211FFEEA6
      12FFF2AB16FFF4AD17FFF9CD6BFFAF6E1EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000052C0FF71A3F9FF629D
      F9FF64A1FBFF5298FCFF8EBDFEFF0059D5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003F404277867667F39F7D5CB5D5C9B5D5D1BC
      A6D5D4BCA5D5D1B9A3D2CFB8A2D0CAB49FCBC3B09BC6BEAF9DBFC7A795C7C2B2
      A8F6191B1E840000000100000000000000000000000000000000181818197F7F
      89946D78D5FA7489F3FF6578F0FF485DE8FF2E46EBFF233AE7FF5B5B5E600000
      000000000000595A5C5D4758DBF01D38ECFF3E47BAF25858595D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A56212FFE5AC43FFE8A933FFE7A31CFFE9A0
      0DFFEDA513FFF1AA15FFF7CA6AFFAD6C1CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000051BCFF6D9EF6FF5F97
      F6FF639DF8FF5C9CFAFF8CBAFDFF0058D1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003040412797878CE856850EAC5B098D6D9CC
      B4D9D9C2A7D9D8BDA5D8D4BAA3D5CFB6A2CFC8B9A4C8CBB299CBD0B7A3F46162
      63CB0000001F00000000000000000000000007070708616163667F85C7E98694
      EFFF91A0F5FF8392EEFF7589EDFF5F72F1FF6975D5E847474849000000000000
      000000000000000000001F1F1F20898BA9AF5569F3FF4855D2FF7A7A86960909
      090A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A56212FFE0A940FFE2A52FFFE4A325FFE49B
      0CFFE8A010FFEDA512FFF6C869FFAB691AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000050BAFF6C9AF4FF5C92
      F3FF6097F6FF619CF8FF8FB9FCFF0056CDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000017181B33888481E0988371FEB9A2
      8AEAD3BCA2E2DFC7ABDFDBC3A9DBD4BCA2D8CBAE91E1C5AD9AFE787676DA0103
      043700000000000000000000000000000000848488906A79E4FF5F72EAFF7A8C
      EBFF8794ECFF8392F0FF768AF1FF8C91AEB91A1A1A1B00000000000000000000
      0000000000000000000000000000000000005B5B5D5E929BDBE37686E9FF7275
      ADDA444444460000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A56212FFDFA53EFFDEA02CFFE0A22BFFDF98
      0FFFE49B0CFFE8A00FFFF4C668FFAA6817FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000050BAFF6B97F2FF5A8E
      F1FF5C92F3FF6097F5FF96BCFAFF0056C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009090B22595858A28C82
      79ED9D8B79FAAD9681F5B09884F3A99684F88F837DE94547499D000000230000
      000000000000000000000000000000000000212121229799A6A96878E5FF6072
      E6FF778AEBFF959CD3E164646769000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0E0F6E6E72749A9F
      D3DA545DCEFE7E7E92A537373738040404050000000000000000000000000000
      0000000000000000000000000000A56212FFDFAC50FFE1AE51FFE4B255FFE4AD
      46FFE4A936FFE9AE3CFFF0C365FFA86616FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000050BAFF6893F0FF5889
      EFFF5A8DF1FF5C91F2FF9ABCF9FF0053C4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B1D
      1F4C4141419C504E4DC44D4C4CC3393C3D990D10124700000000000000000000
      00000000000000000000000000000000000000000000000000008484888A9FA3
      C3CB8F8F9A9E2525252600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C0C
      0C0D67676A6B8286C4D37D7EA5BF1D1D1D1E0000000000000000000000000000
      0000000000000000000000000000706D6A75A56212FFA56212FFA56212FFA562
      12FFA56212FFA56212FFA66313FF706E6A750000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000050BAFF769BF0FF769D
      F0FF789FF2FF79A3F4FF98B9F7FF0052C1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000002555750050BAFF0050
      BAFF0050BAFF0050BAFF0051BCFF002557750000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFE3FF000000000000000000FFE1FF00
      0000000000000000FFF0FF000000000000000000FFF07F000000000000000000
      FFF807000000000000000000FFFC01000000000000000000FFFE000000000000
      00000000FFFC00000000000000000000FFFC00000000000000000000FFFC0000
      0000000000000000FFFC00000000000000000000FFFC00000000000000000000
      FFFC00000000000000000000FFFE01000000000000000000FFFF030000000000
      00000000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF00
      0000000000000000FFFFFF000000000000000000FFFFFF000000000000000000
      FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF0000000000
      00000000FFFFFF000000000000000000FF8000C00003E0000780001F0F800080
      0000C0000300000F078000C00000C0000300000F81C400C00000C0000300000F
      808000C00000C0000300000FC00000C00001C0000300000FE00000C00003E000
      0780001FF00400E00003F0000FC0003FF80FFFF00003F8001FE0007FFC07FFF8
      0003FC007FF001FFFE03FFFE0003FF01FFFC07FFFF01FFFF0007FF01FFFC07FF
      FF80FFFF800FFE00FFF803FFFFC07FFF81FFFE007FF801FFFFE03FFF00FFFC00
      7FF001FFFFF01FFF00FFFC003FF000FFFFF80FFF007FFC003FF000FFFFFC07FE
      007FF8001FE0007FFFFE03FE007FF8001FE0007FFFFF01FE007FF8001FE0007F
      FFFF81FE007FF8003FE000FFFFFFC1FE007FFC003FF000FFFFFFE1FF007FFC00
      7FF001FFFFFFF7FF81FFFF00FFFC03FFFF01FFFF1FFFFFC7FFFFFFC7FF01FFFE
      0FFFFF83FF0FFFC7FF01FFFC07FFFF01FF07FE00FF01FFF803FFFE00FF81FE00
      FF01FFF001FFFC007F80FE00FF01FFE000FFF8003FC07E00FF01FFC0007FF000
      1FE03F00FF01FF80003FE0000FF01E00FF01FF00001FC00007F80E00FF01FF00
      0007C00007FC0600FF01FF000007C00007FE0200FF01FFF80200FE0000FF0000
      FF01FFF80200FE0000FF8000FF01FFF80200FE0000FFC047E0000FF80200FE00
      00FFE007E0000FF80300FE0000FFF01FE0000FF80200FE0000FFF80FF0001FF8
      0200FE0000FFFC07F8003FF80200FE0000FFFE03FC007FF80200FE0000FFFF01
      FE00FFF80200FE0000FFFF81FF01FFF80300FE0000FFFFC1FF83FFFFFFC7FFFF
      C7FFFFE1FFC7FFFFFFC7FFFFC7FFFFF7C1FFFFFFFFFFFFFFFFFFE3FFC0FFFFE7
      FFFFFFC7FFFFC1FFC0FFFFC3FFFFFF83FFFF80FFE07FFF81FFC7FF01FFFF007F
      E03FFF81FFCFFE00FFFE003FF01FFF81FF8FFC007FFC001FF81FFF81FF8FF800
      3FF8000FFC003FC0FF1FF0001FF00007FE000FC0FE1FE0000FF00007FF0007E0
      7C3FC00007F00007FF0003F03C3FC00007FF80FFFE0003F8187FC00007FF80FF
      FE0001FC00FFFE00FFFF80FFFC0001FE00FFFE00FFFF80FFFC0001FF01FFFE00
      FFFF80FFFC0001FE01FFFE00FFFF80FFFC0003FC00FFFE00FFFF80FFFC0003F0
      007FFE00FFFF80FFFE0003C0183FFE00FFFF80FFFE0007003C0FFE00FFFF80FF
      FF000F007F07FE00FFFF80FFFF801F01FF80FE00FFFF80FFFFE07FC3FFE0FE00
      FFFF80FFFFFFFFFFFFFFFFFFFFFF80FF00000000000000000000000000000000
      000000000000}
  end
  object ResizeKit1: TResizeKit
    FormPos = rpDefault
    FormWidth = 1280
    FormHeight = 1024
    FormMaxWidth = 0
    FormMaxHeight = 0
    FormMinWidth = 0
    FormMinHeight = 1024
    ResizeFont = True
    NoResizeFntCtl = 'lblErrorMsg;lblOrdersOnHold;lblOrdersOnHoldValue;lblDateTime;'
    Enabled = True
    ValidTaskbar = True
    OnExitResize = ResizeKit1ExitResize
    Left = 387
    Top = 520
    DesignFrmW = 1111
    DesignFrmH = 752
    DesignDpiW = 96
    DesignDpiH = 96
  end
  object tmrUpdateGUI: TTimer
    Interval = 15000
    OnTimer = tmrUpdateGUITimer
    Left = 472
    Top = 520
  end
  object TcpServer1: TTcpServer
    OnAccept = TcpServer1Accept
    OnGetThread = TcpServer1GetThread
    Left = 1088
    Top = 32
  end
  object TcpClient1: TTcpClient
    OnConnect = TcpClient1Connect
    Left = 1144
    Top = 32
  end
  object repTransaction: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Receipt'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41332.687627164300000000
    ReportOptions.LastChange = 41368.659971087990000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = repTransactionBeforePrint
    Left = 680
    Top = 384
    Datasets = <
      item
        DataSet = frxDBDPayCalc
        DataSetName = 'dsPayCalc'
      end
      item
        DataSet = dsPayments
        DataSetName = 'dsPayments'
      end
      item
        DataSet = frxdbdStaff
        DataSetName = 'frxDBDstaff'
      end
      item
        DataSet = frxdbdTrans
        DataSetName = 'frxDBDtrans'
      end
      item
        DataSet = frxdbtransactionprint
        DataSetName = 'frxDBtransprint1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 76.000000000000000000
      PaperHeight = 400.000000000000000000
      PaperSize = 256
      LeftMargin = 4.000000000000000000
      RightMargin = 4.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 10.000000000000000000
      EndlessHeight = True
      LargeDesignHeight = True
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 215.433210000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 257.008040000000000000
        object ABN: TfrxMemoView
          Align = baLeft
          Top = 130.393700790000000000
          Width = 136.063080000000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'abn: 65 323 646 050')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 143.622140000000000000
          Top = 130.393700790000000000
          Width = 113.385900000000000000
          Height = 11.338582680000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          Align = baRight
          Left = 147.401670000000000000
          Top = 147.401574800000000000
          Width = 109.606370000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'hh:mm am/pm'
          DisplayFormat.Kind = fkDateTime
          HAlign = haRight
          Memo.UTF8W = (
            '[Time]')
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = -9.448825000000003000
          Top = 88.818882990000010000
          Width = 275.905690000000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8W = (
            '157 Nelson Place, Williamstown, Vic 3016'
            'www.back-to-basics.com.au'
            '(03) 9397 7619')
        end
        object frxDBDstafffirstName: TfrxMemoView
          Align = baCenter
          Left = 41.574830000000000000
          Top = 168.188969060000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdbdStaff
          DataSetName = 'frxDBDstaff'
          HAlign = haCenter
          Memo.UTF8W = (
            'Served by : [frxDBDstaff."firstName"]')
        end
        object frxDBDtransid: TfrxMemoView
          Align = baLeft
          Top = 147.401574800000000000
          Width = 117.165430000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataSet = frxdbdTrans
          DataSetName = 'frxDBDtrans'
          Memo.UTF8W = (
            'Receipt #:[frxDBDtrans."id"]')
        end
        object custmemo: TfrxMemoView
          Top = 188.976500000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Clipped = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 26.456710000000000000
        ParentFont = False
        Top = 427.086890000000000000
        Width = 257.008040000000000000
        DataSet = dsPayments
        DataSetName = 'dsPayments'
        RowCount = 0
        object dsPaymentspaymentType: TfrxMemoView
          Left = 5.669291340000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = dsPayments
          DataSetName = 'dsPayments'
          Memo.UTF8W = (
            '[dsPayments."paymentType"]')
        end
        object dsPaymentsamount: TfrxMemoView
          Align = baRight
          Left = 204.094620000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'amount'
          DataSet = dsPayments
          DataSetName = 'dsPayments'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[dsPayments."amount"]')
        end
        object dsPaymentsDetails: TfrxMemoView
          Left = 86.929190000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Details'
          DataSet = dsPayments
          DataSetName = 'dsPayments'
          Memo.UTF8W = (
            '[dsPayments."Details"]')
        end
      end
      object Header2: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 381.732530000000000000
        Width = 257.008040000000000000
        object Memo10: TfrxMemoView
          Left = 5.669291338582680000
          Top = 3.000000000000114000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'PAYMENT')
        end
        object Memo11: TfrxMemoView
          Align = baRight
          Left = 143.622140000000000000
          Top = 3.000000000000114000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            'AMOUNT')
        end
        object Line3: TfrxLineView
          Align = baCenter
          Left = -3.779444565000003000
          Width = 264.566929130000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118110240000000000
        ParentFont = False
        Top = 294.803340000000000000
        Width = 257.008040000000000000
        DataSet = frxdbtransactionprint
        DataSetName = 'frxDBtransprint1'
        RowCount = 0
        Stretched = True
        object frxDBtransprint1ItemInfo: TfrxMemoView
          Width = 132.283550000000000000
          Height = 13.228346460000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = frxdbtransactionprint
          DataSetName = 'frxDBtransprint1'
          Memo.UTF8W = (
            '[frxDBtransprint1."name"][frxDBtransprint1."ItemInfo"]')
        end
        object frxDBtransprint1Quantity: TfrxMemoView
          Left = 132.283550000000000000
          Width = 26.456697800000000000
          Height = 13.228346456692900000
          ShowHint = False
          DataField = 'Quantity'
          DataSet = frxdbtransactionprint
          DataSetName = 'frxDBtransprint1'
          Memo.UTF8W = (
            '[frxDBtransprint1."Quantity"]')
        end
        object frxDBtransprint1Price: TfrxMemoView
          Left = 166.299320000000000000
          Width = 49.133858270000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'Price'
          DataSet = frxdbtransactionprint
          DataSetName = 'frxDBtransprint1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[frxDBtransprint1."Price"]')
        end
        object frxDBtransprint1Subtotal: TfrxMemoView
          Align = baRight
          Left = 207.874150000000000000
          Width = 49.133890000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'Subtotal'
          DataSet = frxdbtransactionprint
          DataSetName = 'frxDBtransprint1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBtransprint1."Subtotal"]')
        end
      end
      object Footer1: TfrxFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 26.456710000000000000
        ParentFont = False
        Top = 332.598640000000000000
        Width = 257.008040000000000000
        object frxDBtransprint1Subtotal1: TfrxMemoView
          Align = baRight
          Left = 177.637910000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdbtransactionprint
          DataSetName = 'frxDBtransprint1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Style = fsDouble
          HAlign = haRight
          Memo.UTF8W = (
            'Total: [SUM(<frxDBtransprint1."Subtotal">,MasterData1)]')
        end
      end
      object Footer2: TfrxFooter
        Height = 49.133890000000000000
        Top = 476.220780000000000000
        Width = 257.008040000000000000
        object dsPaymentsamount1: TfrxMemoView
          Align = baRight
          Left = 162.519790000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dsPayments
          DataSetName = 'dsPayments'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.BottomLine.Style = fsDouble
          HAlign = haRight
          Memo.UTF8W = (
            
              'Owing: [SUM(<frxDBtransprint1."Subtotal">,MasterData1)-<dsPayCal' +
              'c."total">]')
          ParentFont = False
        end
        object LayBy: TfrxMemoView
          Align = baCenter
          Left = 3.779529999999997000
          Top = 22.677180000000020000
          Width = 249.448980000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Clipped = False
          HAlign = haCenter
          Memo.UTF8W = (
            '')
        end
      end
      object Picture1: TfrxPictureView
        Align = baCenter
        Left = -3.779444565000003000
        Width = 264.566929130000000000
        Height = 109.606296770000000000
        ShowHint = False
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000033B0000
          013408060000000BE62DD3000000097048597300002E2300002E230178A53F76
          00000A4F6943435050686F746F73686F70204943432070726F66696C65000078
          DA9D53675453E9163DF7DEF4424B8880944B6F5215082052428B801491262A21
          09104A8821A1D91551C1114545041BC8A088038E8E808C15512C0C8A0AD807E4
          21A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C
          9648335135800CA9421E11E083C7C4C6E1E42E40810A2470001008B3642173FD
          230100F87E3C3C2B22C007BE000178D30B0800C04D9BC0301C87FF0FEA42995C
          01808401C07491384B08801400407A8E42A600404601809D98265300A0040060
          CB6362E300502D0060277FE6D300809DF8997B01005B94211501A09100201365
          884400683B00ACCF568A450058300014664BC43900D82D00304957664800B0B7
          00C0CE100BB200080C00305188852900047B0060C8232378008499001446F257
          3CF12BAE10E72A00007899B23CB9243945815B082D710757572E1E28CE49172B
          14366102619A402EC27999193281340FE0F3CC0000A0911511E083F3FD78CE0E
          AECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2F
          B31A803B06806DFEA225EE04685E0BA075F78B66B20F40B500A0E9DA57F370F8
          7E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3C
          FCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB7
          0BFFFC1DD322C44962B9582A14E35112718E449A8CF332A52289429229C525D2
          FF64E2DF2CFB033EDF3500B06A3E017B912DA85D6303F64B27105874C0E2F700
          00F2BB6FC1D4280803806883E1CF77FFEF3FFD47A02500806649927100005E44
          242E54CAB33FC708000044A0812AB0411BF4C1182CC0061CC105DCC10BFC6036
          844224C4C24210420A64801C726029AC82422886CDB01D2A602FD4401D34C051
          688693700E2EC255B80E3D700FFA61089EC128BC81090441C808136121DA8801
          628A58238E08179985F821C14804128B2420C9881451224B91354831528A5420
          55481DF23D720239875C46BA913BC8003282FC86BC47319481B2513DD40CB543
          B9A8371A8446A20BD06474319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F
          3E43C730C0E8180733C46C302EC6C342B1382C099363CBB122AC0CABC61AB056
          AC03BB89F563CFB17704128145C0093604774220611E4148584C584ED848A820
          1C243411DA093709038451C2272293A84BB426BA11F9C4186232318758482C23
          D6128F132F107B8843C437241289433227B9900249B1A454D212D246D26E5223
          E92CA99B34481A2393C9DA646BB20739942C202BC885E49DE4C3E433E41BE421
          F25B0A9D624071A4F853E22852CA6A4A19E510E534E5066598324155A39A52DD
          A8A15411358F5A42ADA1B652AF5187A81334759A39CD8316494BA5ADA295D31A
          681768F769AFE874BA11DD951E4E97D057D2CBE947E897E803F4770C0D861583
          C7886728199B18071867197718AF984CA619D38B19C754303731EB98E7990F99
          6F55582AB62A7C1591CA0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB54
          8FA95E537DAE46553353E3A909D496AB55AA9D50EB531B5367A93BA887AA67A8
          6F543FA47E59FD890659C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B
          0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352
          F394663F07E39871F89C744E09E728A797F37E8ADE14EF29E2291BA6344CB931
          655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A
          275C2747678FCE059DE753D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477
          BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806
          B30C2406DB0CCE183CC535716F3C1D2FC7DBF151435DC34043A561956197E184
          91B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE
          9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDF
          B7605A785A2CB6A8B6B86549B2E45AA659EEB6BC6E855A3959A558555A5DB346
          AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806
          DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D
          5A1D7E73B472143A563ADE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613
          CB29C4699D539BD347671767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BD
          E44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E
          593373D0C3C843E051E5D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F91
          57ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8
          B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025016703898141815B02FB
          F87A7C21BF8E3F3ADB65F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC
          90AD21F7E798CE91CE690E85507EE8D6D00761E6618BC37E0C2785878557863F
          8E7088581AD131973577D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3E
          AA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDF
          FCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485A716A92E122C3A96404C
          884E3894F041102AA8168C25F21377258E0A79C21DC267222FD136D188D8435C
          2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A
          9E169A76206D323D3ABD31839291907142AA214D93B667EA67E66676CBAC6585
          B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6E8545A28D72A07B26765
          5766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A586
          4B572D1D58E6BDAC6A39B23C7179DB0AE315052B865606AC3CB88AB62A6DD54F
          ABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D
          4F582F59DFB561FA869D1B3E15898AAE14DB1797157FD828DC78E51B876FCABF
          99DC94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40D
          DF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A4
          54F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB
          5501554DD566D565FB49FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203
          FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71FBEFE9DEF772D0D360D55
          8D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A
          429AF29A469B539AFB5B625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794A
          F354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F
          6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6D
          EA74EA3CFE93D34FC7BB9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4
          BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727
          EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7
          068583CFFE91F58F0F43058F998FCB860D86EB9E383E3939E23F72FDE9FCA743
          CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5
          FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE4
          7C207F28FF68F9B1F553D0A7FB93199393FF040398F3FC63332DDB0000FFFF49
          44415478DAECBD8B775545B6FFBB77DE01C2230F248180C8535E228A0A88A0AD
          B6B67DFA75FA8CF3FB03EFBD63DC71CF39FD3C6AB7A2A8808AF2924020214000
          49420821819077F6FD7C2B35378BDD010392EC10E61CA3B276D6A356D5AC5973
          CEEFAA5955E94C26937272727272727272727272729A6D9476B0E3E4E4E4E4E4
          E4E4E4E4E4341BC9C18E93939393939393939393D3AC24073B4E4E4E4E4E4E4E
          4E4E4E4EB3921CEC3839393939393939393939CD4A72B0E3E4E4E4E4E4E4E4E4
          E4E4342BC9C18E93939393939393939393D3AC24073B4E4E4E4E4E4E4E4E4E4E
          4EB3921CEC3839393939393939393939CD4A72B0E3E4E4E4E4E4E4E4E4E4E434
          2B292F60E7F7BFFF7D388E8D8DA5464747431A19190949E72CA96C768FAE25EF
          D36FBB96CCC7D2E0E0606A606020BC67E1C285A9152B56A49E7DF6D9D4A2458B
          C2395DD33DC3C3C3D96792EF7E50B9267A9F95C992F2B5F72F58B020B56CD9B2
          90F4FEC2C2C270DD5232FF645EB9F54F9635792DF7FD76DEF2573D45454545A9
          254B96045E2C5EBC38555A5A1A9E1B1A1ACABE3F97BFB9ED60F9E6D677A2FB2D
          EF3B77EE84FFF5BEA54B97A69E7BEEB9D433CF3C932A2E2E0E3CEAEFEFFF97F6
          7C10AF73EB3911FF933CD33BF4FFDCB97353CB972F4FAD5CB932D4DFDEAF946C
          E7DC3C9265B1FB923C527D73E565A27AA81DAC2DE6CF9F1F782199907C482626
          92F189EA3A517BE7CA4EB22DECBCF8ACF7A7D3E950FF356BD6047ECC993327B4
          D3EDDBB7B33296CC33B71E0F53366B7F515555556AFDFAF52159FBEBBAEE7B1A
          486D2CDE8BC7BDBDBDA91B376E84A3F5A7BEBEBED4CD9B37833C969797075D31
          6FDEBCD086BA76EBD6ADC04BB5A1C9A5A8A0A0202423D3E97A57520E748FFAA0
          FA81F255D27B744E65B3671EC626E87E7BA7DE93D46BA6A7748FF22F2B2B0B6D
          AEB2AB9EDDDDDDA1FD75BEB2B2324D7DCB90C545E4B3947AAE248FC594750C7D
          75199DD1545D5D7D857CEE50FF8CF8A164FCD0FBAC9E56074B564ED55F3A50EF
          130F74ADA3A323D5D8D8983A7FFE7CE0BBFA82AE2B5FB58D48FD93F2053E996D
          511D2C5FCB53CF2A25F9696DE4F4AF64BC13A92DDBDADA523FFEF863E817E26F
          4949499017F15249F72A99BC2B3DE87CF27FE5A376519B4BF62E5DBA94BA72E5
          4AD0792A87DA4F79E4BE2B376F9365BB27F99EDC7726CFAB9F493644AADF850B
          174219D4A745BA9EACEB44F5CBBD66F23C513972CF25F96DFD5E722C1E9C3B77
          2E75F5EAD5D087C4732B4BEE3B93FFDBB989FECF2D93DE6B49E72D7FD923B5B7
          7871EDDAB5D0E63A6F7A6222BE5BDEC6ABE4F56419ED68EF4D964D722052DBAB
          DEE28164427DD564EE7EBC9FA88DEDBC9539571673DBC4F25039C40BE994EBD7
          AF071D74F9F2E52013BA3E513B4C247BB9D772DB63A27E61FA58EF10DFC57F7B
          BFE442F7485EC50FAB8FF172A27725FB4A6EBB1B6F8CB7A23FFFF9CFD3AF6F1C
          EC38D871B0E360C7C1CED493831D073B4E77C9C18E831D073B0E76A64DDF38D8
          71B0E360C7C18E839DA927073BFF0A76745FAC6B69454545153AAA9EFAAF4216
          D7725F35FD6468D5AA556791D5E3C8CC39AEF7707D44B22C5E38D87972C9C18E
          831D073B0E76A64DDF38D871B0E360C7C18E839DA927073BFF0A76F49BF214D2
          1F96A29FD650B72DF0E505AE3F4F7EF300193D1B366CF86EE3C68D5FD6D6D61E
          E39E3664A65F72934CB9EF73B033F3C9C18E831D073B0E76A64DDF38D871B0E3
          60C7C18E839DA927073B65C1E045B05340FD8BB9AF1CF9ABA14C2BC9663D75DC
          D2D9D9B991EB2BC9AF1090D189BC1C247D86CC7E4F3EADE43BA4BA282FE56D7A
          46C7F8BE740ED8C93C08EC9C3A752AD5D2D2E260679AC9C18E831D073B0E76A6
          4DDF38D871B0E360C7C18E839DA9A7A71DEC98F1E47C417777F7120CBCE6E6D4
          A19796528EC51C17F1DC22EA59497DABB86F8C67AED7D5D51D261DC03837905F
          97EA21F02119523FE25C313C2B822FC5FC2EE47D051C0DF0A832639C1BE3B951
          DE31CCBB86A9FB982EC9C13E79F264AAA9A929F05665144F1CEC4C3D39D871B0
          E360C7C1CEB4E91B073B0E761CEC38D871B033F5F4B4831DBD2B829D9A9E9E9E
          0D18F82DD47F2DCF2DA60C69E4F02606F83AF7F70A10290F9EEFE35A33BAAB11
          BEFC48DD87545EC9EDDAB56BCB6A6B6BE752AFB9F0A59CEB65DC5FCAF3851C05
          783211EC8C726E98FB86C8678072DC8107B7B874BBBDBD3DD5D0D0101C3EF50F
          95D1C1CEF490831D073B0E761CEC4C9BBE71B0E360C7C18E831D073B534F4F23
          D849948FE62E9ECBBFD55C7B96FA6C42DED6519F653C57C6B5EB94EB2C65FA01
          793CCFFF77385F425D0B91DB3BF0A90F87600C1E1451DE0274F93CE4687E5D5D
          5D0565AF80677348E511EC14E5809D91087606B9B79FE7FB78470F977ABBBABA
          FA31F203385DC3F07488320C727D90F20D03C842BD1CEC4C0D39D871B0E360C7
          C1CEB4E91B073B0E761CEC38D871B033F5F434829DE8E014715CCCB9E790C175
          D4EF39AE3D2300C47B47B8DCC351CB4A3773EE0C46F102E5D2F912EEAB027454
          76767656B5B7B757C1AF2AF29A832CCDA7FF680183729E2B27EF3264A984A2C8
          9AAA3266DBC2C84EEAEEE8CE207237C03BEE68D44840AABBBBFB367CEDE17C77
          4545C535DEDB01AFDB698B21073B53470E761CEC38D871B0336DFAC6C18E831D
          073B0E761CEC4C3D3D8D608777169116736D3565DF4A7D37533FCDCF190458B4
          A29B9B28C745EEB94ABDBAA9630FCFF6611815D65649FEF5C8E59AAEAEAE3538
          042B79BE8EEBF329EF3C8C753965D71C9D22F22F20A91262443A87175AA0602C
          1E057A46799FD0CA30494ABA977CAE518EABF4CB0B5C6FA11CCDBCEB47AEDD71
          B03335E460C7C18E831D073BD3A66F1CEC38D871B0E360C7C1CED4D3D3027612
          7D698EE6E3706E1DEDBC49A33A947D31B70FF3CE56E4FE0764E228FA59737206
          257F1D1D1DF3BABBBBB5B16835C6B19672ADE099B5D47D1D6939F55FC2FF15A4
          92C765BBE0411FC0AB933ED9066F2E92EF79DAE01CE90232DA0ED0B9A9C4EF41
          EB470E767E3E39D871B0E360C7C1CEB4E91B073B0E761CEC38D871B033F5F434
          811D011DDAB58EB26A39E96DC8DE5A6E9B8B81ED42DE9A317C215C8D329C47FE
          6FCB1052C7A2F6F6F6F5009EE791C5553CBF9C7CEAC8AF163911C8D17C9F39F6
          8EC7499469045EF4508EEBFC7B9DF7B6C3AF567875BEBABABA49800C79BDCABB
          871CEC3C1E72B0E360C7C18E839D69D3370E761CEC38D871B0E36067EA69B683
          1DA5589762523DE5DC4079B751C70D0A3DE35D1A2539823EFE065DD4CC3D8394
          6918A39BE1FDF3A9F7EACECECE97003CDBBABBBB0578EA918F85645F4A1D3492
          5394BB59E8E3A2C84385B929B44DF385FA2957077DB319B93DC6F118F27A96F7
          6A53D33ECA9E155A073B8F460E761CEC38D871B0336DFAC6C18E831D073B0E76
          1CEC4C3DCD76B023A22DB5DF4D35E57D01797A0599DB4059E761E8AE5554541C
          47171FE5BD47786E206E04AA11A0E51C35A767132067337C59DFD3D3B392E717
          E5C33E59BDB4480265FD917237723C4D3F3905AFCEC0C74BF054A33F03E2AD83
          9D4723073B0E761CEC38D899367DE360C7C18E831D073B0E76A69E6633D889EF
          2DA22D1751C6E7002D3B012C2FF17F25F2D5565959F92DA0E13B749026FD5FD3
          3B3402445DD72277DBA99BD2067E6B5E4E15E7173CEE50B58725E94B0CF49096
          C5C63168A7CF2A9CED04F53941BD35CA7305DE0E99E3E060E7E1C8C18E831D07
          3B0E76A64DDF38D871B0E360C7C18E839DA9A7990A76CCD1337A98F630A326A2
          4C0B148A4639B70276B651D6A5B4F1ADEAEAEAEFD13BFB79D709D55575A1DDB5
          C8C02AEE79913AEFE27E819D953C5F31D3E4213A6943F4D32BB4C9298E47E0D9
          11DAB381CB1D1C07E06BC61C5A073B9323073B0E761CEC38D899367DE360C7C1
          8E831D073B0E76A69E6622D851DBEB5DD20D3617C6F4CB64EBA414CBB89AF2EF
          A44EDB29E7339CBF856C9FAAA9A9F9AEB2B2F204C6AE5732C83D153D3D3DCF73
          DF2BA457495BA8DB2AEA3D37DF6DF420827723151515574867E9BF47E0DF612D
          B400EFAE0AD4D9E88E839DC991831D073B0E761CEC4C9BBE71B0E360C7C18E83
          1D073B534F3311ECFCDC3036336C94A7BCBBBBFBD5CECECE77A9D326F2B943F9
          8F5657571FE07886F7DCD0FD94BFACABAB6B1DC67517F7EEA5BEDBA8CF33F060
          5EBEE6E74C96C41B2D3FADBA60531A0170DFC1C3EF711A4E72FE22C741073B93
          27073B0E761CEC38D899367DE360C7C18E831D073B0E76A69E6612D8A9A8A808
          799B614F5E97513267FD7EF621315747F374E6225B8B0131BB30DA7B287F2DF9
          9C43C63EA19DBF40D66F2A6FDA7A4E4F4FCFAA8E8E8E57DADBDBF700765EA14E
          6B784741EA09227893A14E5705E2B02D87F97D009E1E2375D16E4366F0450E76
          EE4F0E761CEC38D871B0336DFAC6C18E831D073B0E761CEC4C3DCD14B0A33C25
          7FEA0F22E5A776507BE89DD2973284A2FBB58D85AEF1DC3CCAB40210B386B2BF
          880CADE6FC98E6E75456567E5E5D5D7D44C04AA4BD730039AFE360BC29C043DD
          576835B67CB7CBA310867B18FE75C2AB1FA8E37E64FB20FDF81C7DA90BDE0C5B
          7B38D8B93F39D871B0E360C7C1CEB4E91B073B0E761CEC38D871B033F53493C0
          8E74A2DA5DF9A80CCA5FD7EAEAEA52B5B5B5E11E91AEE7DA08735A942F3253D3
          D5D5F532C67A1B793CCB394DD4BF48FA81FEF60340E792DEC3F905D47727C6F4
          5738387BBBBBBBD7D2F625F96E9347A5E8408D52BF56FAD2B7F0ECAB08ECB4F9
          68B7B5C7D322DB8F42312C301C257F723CE5FC224F0E761CEC38D871B0F378F5
          8D831D073B0E761CEC38D8997A9A896047FC5739D4F67AA7E4A1BEBE3EC8A748
          659B08ECA8ED942FA0A51E87E1DDB6B6B6D7B5C21A06B4A5B2B2F2207DAD897B
          3471FF36EF5D4C9D9ED51C1D1C8B5FB6B7B7BF4C3DE6E5BB3D1E07513FCD4D3A
          875ED58A735FD6D4D4A8EEE70C0CAA9D9C2626C991854C4AAEE5F8CAD992E327
          B993AC3AD871B0E360C7C1CE63D1370E761CEC38D871B0E36067EA69A6821D00
          4BC85BEF14D0F929B0634E85F2A50EEB70DA7E83D3B29B761C45960FA263FE97
          E7AF70DF1D4E9522779BA9D776C0CE6E85AFF1BE6767539BE334F400F0CED19F
          F7D39F3F44CE0FC3E7DBE28FF8E734311968963CD9C88E1C4F1FD971B0E360C7
          C1CE63D7370E761CEC38D871B0E36067EA6926821DBD5BEF54DE16C6A6A47936
          7A3ED936966F742A0AC8B7903ABC80D3F6EBB6B6B6ED5CEAA5CC9FF0FC9FC8BF
          5BCF535E85B9ED696F6FFF25067D7B4F4FCF4ACECDCF775B3C6E42B7DCA8ADAD
          3D848DF93BC7CFF8FF0AFC1A1A4D3070A6AF36375D94DC8856245996FCC9E102
          0C873E21B6493F38D871B0E360C7C1CE63D13B0E761CEC38D871B0E36067EA69
          26821DE5636047FAA1A6A626B48DC08ECA9BB40F49B0C3B532FE9FDFDDDDFD02
          40E72D8CE57ADED7515959F909CEFEDFC87F48F70ADCE0D0FC1AC7EEF70246D4
          6D21EDFD44ADBE361982271978D7407FFA0CB0F799F61742BEDBE1519FF8657B
          1839DDDD8856FD5E3A497D40A38B4AA683C4AB5C47D3C18E831D073B0E761E95
          1CEC38D871B0E360C7C1CE34D04C043BE23D802424DDAF7756575707B0237DA1
          E7EC4B7C22DF02EAB280FFEB90994D5D5D5D2F52EEC59CBFAC659871FAB5DCF4
          90EEC7817D49400787E677DCB35EA341F96E87A922EADC8E5CFF808E3D000F0F
          C167EDBF73CDC08EB5D7D34EE60C49EED507B40A9B9C2DC9B8F8743F87DAC18E
          831D073B0E761E951CEC38D871B0E360C7C1CE34D04C073BA6AB2A2B2BC3B5FB
          811DA888BC6AF97F35655947D996235B85DC7781721F41B64FD2D746B93E17B0
          F37A6B6BEBBF5DBC78F13DCABF3CDF6D309584F3D0A7FD77B42A5B6D6DED3F00
          7D9FC38756F1D1FAC9D34A493FC31C38F5FDF6F6F614B2119C5EC9BD1C22031E
          B9CEA4831D073B0E761CEC3C2A39D871B0E360C7C18E839D69A0990C76540EDD
          2359D435BDDF9E9FC04694706D15E73772FD39CA3F9F7C7A3877161D738A77FC
          88212DE55A3DF5790303FA0E8EDDEB94BD3ADF6D3095047FC7A8BB56676BA8AF
          AFFF1BFDFB2FFC56385BB63F3CAD743FB0A3511D39BB0676CC01B425A91DEC38
          D871B0E360E77190831D073B0E761CEC38D899069AE960C77495AEC930595BEB
          9833A9BC9CB491B495F3F52415E412C706DE7391F7DCA2AE553CB7997CDFD0B2
          D438155B28FB827CB7C154133CC8D0B75BE8577F47CFFE4F4D4DCD61F4AE162A
          C83C2D729EA489962D573F1049CEE564C9D9D451726DA0C447761CEC38D871B0
          F338C9C18E831D073B0E761CEC4C033D096047EF347954B94C3798F18A3497FC
          B6717C99FB6A69C79B1C1BF8FF18CF5CA76C63DCBB82E7762253BB3B3B3B5FC2
          98AEA6EC73F3DD06D341B45D477D7DFDA7E8D9BF5657577F0D7FBAE049BF004F
          BECB36DD640B3398D32339923C49C625775A66DAF679922C9A23EB60C7C18E83
          1D073B8F931CEC38D871B0E360C7C1CE34D04C073BBA5FE7259BBAD7E455F798
          018B348FFC5EE3F82A3AA5863CAFD0968779CF1164AC9F362DE2F706D25EFE7D
          837A6EC1A95DC6EFD27CB7C1741046BDB7AEAEEE5BFAF7A7DA60151EB5C0C3EB
          A4A76287D1E41C2F9345C98F644F47C9B7408E969996EC994E34677822E7DDC1
          8E831D073B0E767E965E72B0E360C7C18E831D073B534F0F0376D4265A2800C7
          44C0A18CB629E75E1D4B69C362EE0F1E8C197252569127C10EBC4D2B914746F7
          D0074790BD41F4503FFDE10EE7FB79E7A8ADC6666047BFAD6FA87DCD80C5BC2B
          38EEE2B88336AC24CF668E5FF19EE3B47586674A78661BE96D7EEFEEEEEEDEC8
          3B9EE17751BEDB603A08A37EA7A6A6A61119FF9ABE7D08BD7B14DE5C841F83F9
          2EDB745012E498B3638E9D7ECB9993932B2753BF0D6C249D7D073B0E761CEC38
          D8799CE460C7C18E831D073B0E76A6811E16ECC0AF021C13CD7D598C015C0220
          A9E158491BCE8567B21A6901184BFC1F52D4E96911F71590B78E3A318281BB83
          BCDD00485D23EFABE4DDCE3BBB6C35B624D891BC28D9A890394DDA5F87E77673
          CF4E0CD802F23C8D6EF98C779C511D48C50A6123FD92B2EE26EFF524957BD6ED
          AF3311C19361F4FC25DAEF383C3E44BB1F8017A7487DF92EDB54928DE8989E10
          A98FCBA192832D99D63DDA4F478EBE927443D2B172B0E360C7C18E839D29D14F
          0E761CEC38D871B0335D60E7F9E79FBF07EC5898D4D340B960474E5F12EC88FF
          18DD02DA298D119A83AEA8C43159C2A3CBB4BC33D76BB5A2193CABE07E010AE9
          EFB104D8918799043B05DC53C0FF853AC93DA3F4C13EFA41273AF12AEFB800EF
          5B012257294737D707393F66616C9217EBBB66BC22CD27BB37380AECCC279F06
          DAF213CAD4A23A908AC9F70D9E7B9FF67F83BCD7F28E059285A781E08578281E
          37D2B7BEA6DDF7C18BEF493DF92EDB745032BC52BA457B3649C7C9B1D23539FB
          72AA94242F769F8FEC38D871B0E36067AAC8C18E831D073B0E76A614ECE86BBF
          DEA9CD2A376EDC1892DA5F75569974FFD34049B0235E0BEC60D8D2FC5F0C9FCA
          395781235409BF1670EF429CC48538260BF9BD085E2E84CF5A18A0147E154A66
          C557DA539EE558CC3B809DD8EEE9B8F96701FDAE201A2D6C5081C0D100FFF771
          ED06EFED068C74D10E5D9CEB02905E471E3BB9A72F8ED284F6493A0CFCD6C8CE
          9ED438D89987FC9CE41DFFA41E17E3FC1F85D9EDE59E5F73EE0DEAB89A73F39E
          16B0039F33B4DB6DDAEF1CCEC4D7F0EB63DAE320E946BECB3655643ADF162330
          A7568EB5F49B8E72AEA413345F470E662ED870B0E360C7C18E839DA922073B0E
          761CEC38D89936B0B369D3A6D4860D1BB26047BCD73B9F069A00ECCCC1B0CDE1
          FF39F069217CAAE3DC4A80C152785A457F29C51865304AC3188A7EDAE916FF6B
          D9B45BDC3388811CC54867E077261A9910C616DB44216E699E4D575656A691B1
          34D995716F0572309FF72DD07B35BF26029A1EF2BF421B9DE5DE3394F332E7FB
          23A0CA963F268DEC04B0439EF370EA4F52AE7F9067AB001CCE5C09BFF772CFAF
          C9774F043B739E9676565BA8CDB4A128FCF99A76F83BBCF88C36B99EEFB24D05
          D9421836422BBD2A5D2B1DA7A4DF72ACE4EC4837C8D977B0E360C7C18E839D69
          D5530E761CEC38D871B0339560C7E67D48F6F54E25B5BFE4C1643949F9D049D3
          41B4B1465B0AE17109C6752106EE19CD65D1A69CF050E063316DB09CFEB284DF
          F334C7060371133E7520BB97D163170116973024D778FE16867AB8B3B3533CCE
          98C11119EFF53E3936F4F93420A600C3368F7C9F0178ACC0A03E87DC3F4BAA43
          2616F2D80872700D593CC7BB4EF3EEF3B4DB55CAD23BA8E1A3189B140D6505D7
          F7F07B17F7CEA35C0D1C3FE1B6F3712961811D85B97D20B0431DD751DEA706EC
          A82D68B30CFCBE42FB6964E72FC8F427A4CE7C97ED71537231021DCD99954E53
          7F97CEB57D7394249702C40E761CEC38D871B0339DE460C7C18E831D073B5306
          764CFE748F146B4D4D4DA8B7DEAFBE605F7C5526739C920ED46C22FA5F314660
          3EF25603485985915D0B38580A8F2AB8A69117C59E698E8DB0C508499ED00D64
          A31D1EB5D24E97E0E165AE8F285C4C064A8E93B5A93935D6FFD4DF25F3E2B9E6
          4BA99DB956841CD4F3CC4ADEBB92B6D228520DE7E7F09E429E19E1D04D366DB4
          DF05EE51BA4CEAB27E0FCDE5BE3729CB0E74EB7CF23E8D03B58F3C9B541E1C07
          85B1EDA04CEF21576F52C7CD18F3B94F0BD8513B48A691ED76F824B0F327F8FB
          0FD2B57C97ED7150726969D30906289273742C74CD1C53073B0E761CEC38D811
          39D871B0E360C7C1CEAC023B49B95559C47339437ABF811E195FD53F0E1E648F
          B38DA87B1946408B0CACC5C06E6F696979B9BDBD7D25BC298107D7D10D17389E
          C7085DA4AF5E835FBDF0AF9F749B7B7AE04B0FE7FA2D0C4E8B1B5898D9443BD5
          C770AAC06F25B573DCEBA49CA4B9400B35FF86B480772CA61FAC40469E23BF45
          1A55E2FA655203EF3DC1B933BCF34EDCFCB19C7CF650DE1DB4DFC2EAEA6A8D06
          7D41B97E50994845DCF382163120CF37003B5B0177F5E45D98EF36980E4A38D7
          D7E19FC0CE7F735AF3763AF25DB6C749C9793A92350339D26D494729E9A03AD8
          71B0E360C7C18E831D073B0E761CECCC2AB093AC8FD55F7CD7FB25077ABFEA2F
          E5A87C92CA58349B467A50F6E5D4AD1E3E6FBD78F1E25B67CF9EDD83B15DC9A5
          21F442434D4DCD01E4E220727A02437489FE1AA2C790CF62EDB303B029A52F15
          D38E1A9D29D452CE4AB45D017CCEEAF268DC33F039C33BC794306A23A461F21F
          C2D919C0311DE0FF51333EE4578713B619A3B71D63BB8EE7AB2987E609B5F2BB
          81EBC7B97E91D4ABB039F278155DB2B3AEAE6E715555D5654DC4A70CC7B86F44
          72A49123D256CAFE12E067336935655FAC3943A4D2D9D09EF72373AEB5E04302
          EC7C345BC04E6E7F34C74976D642D76CB4D61C5C73741CEC38D871B0E360C7C1
          8E831D073B0E76661DD83199D1FB2D94498B15AC5EBD3AC8A2BE088B54562960
          337616DA96ACCB934C28FB128C401D7C7E01B0F34E5353D39B1D1D1DCBE8979D
          9595950791834FA9F7D7FCAF55BC82BCAACF6A4E4D4F4FCF32D2129EAD02F454
          20B35AD4A02CAEE4A69114A1435B1B5ACB4C8F91D7484C835A729A76EE451776
          F29E368E57F4BF0C9078ABB66F6B6B5B8EF3B101677415CFACE5BEC5DCA7D0B6
          EBB4DD99CECECEE35D5D5D6779E70DDAEC79E4F735D272EEB94E3EC769AF1394
          E326E5CB90C77C1C887ACAB99C765B4579D651CE755C5B83315FA632E7BB3DA6
          8A1260A73B829DFF4A8D839DF67C97ED7190F547F54FDB47477D583A4D8EB4F4
          7CD2D971B0E360C7C18E831D073B0E761CEC38D899D560C7EA233EEB3D7ABFDA
          5F6047F5B7FD3794D446B67A93ADF294555677F7797922804FB2BC22E4AD1023
          B090FEB01A4767574B4BCB6B5A6A9A7E71051DF535C6E05B78749E748BDF1964
          A4043ED4C1C3E7B4570D46700560A196765CC83D15F0520B0E94722CE11E8107
          DBB453CB4B6BD466983444BAC33B6EC2E72EF2FC11C7F402C726FE3FC7B576ED
          C1A37038805729CEC73C0CFF22CE6F422E5FA05C6BF8BD00B9A1A8378E70ED5B
          DED9CAF3B57575752FD6D4D4AC447EFA91DF66EE3B43BA4AF9BA7122D2A452CA
          59C6FB6A00736B28D38B00B6D730EC2F50975AF299959B8CDA9C9D04D8D1C8CE
          87B309EC241723902EB330497314731D72073B0E761CEC38D871B0E360C7C18E
          839D590F76ACFE527A6A7FC9010E7350BAF68C7E9BD364648E4AEE68CF4C2603
          3AC96334A2E5B4C3620CEC3A8CFC2A9CFF52EADC26F0C13D6D18DD34CEA0F6D5
          598021AAA1DEB5D4557369562AD40CFED590E6D34E9AF0AF15CE4A4C4693616C
          E6582057023DFDA45EF2EA26CF0E2D7240BAC87B353FE832D73A79FE3AEFEEEA
          ECEC1C96E187EA688717E9332F93CF7ADE310F407491BE7C8C6B17383FA7AAAA
          6A158E537D74A6AE69A965EA719E7B5B71E46E00E646D5F7B5400272B694EB9B
          91B15D18D61D18F7F51AA5A2FC65F96EABC74D0676C46F811DFEFF6FDAE68907
          3B1385AED912D3E61825E53DE90839D871B0E360C7C18E831D073B0E761CEC3C
          B560470A57EF5519CC3131FDA0FFCDA1D251FF3F0960C7C814BE281AD142DA61
          4E5B5BDB220CCB02C08E5661EBC30119A45E6538822B001C0AF75AC1FF753C5B
          455DB53C75153C9C2FD0014F4B4985C9369A6881821C23A78D47FBD101B728C7
          4D8E37688776DE7BB9A2A2A285363843DE6791814B32B61A75E1FEE5DCF33CCF
          BF4496AB3997D6080FBFAF53E63472A3450E54B632CA30A8CD480136CD9C6BC4
          8901EBB4B4292F811DFA5C417575753DF76EC1D97BADBDBDFD550CEC46DEB724
          DF6DF4B8C91C192D50A0D5D8F8FF7F689F277ACE4E729E8E2D7CA1FE28DDA1FE
          AB3E6DB2A6FB72418A831D073B0E761CEC38D871B0E360C7C1CE530976C4037B
          BFB593CA6CCF882F0A91A9ACAC0C47C9B048F73D09945C60C18CAFEADAD5D595
          C6C094C1F312CECD45169F818FDA50748B966A0604ADA2BD96C083B9D4B598E7
          3527A79063DAF24DBEE37E940CA58BC647287194A3467C04B2DAD1494DE8C813
          B4CB09CA704A4B4D7314384AC3EF451C37F3CC66DA4E8B0C54732C0E1B06719D
          F29551CEB91C0BC8E33672A511A3461CBA53381267006D6DE43F829C67B856C6
          3B9751E7CD80BDB77032DE04D83D4FF96755389B0C7D9C7BD61EC1CEAC587ADA
          3E3EA8FFCA61B6A5A5D527934E65D2B974B0E360C7C18E831D073B0E761CEC38
          D871B0C3FB6D0103952329BBA6F40574D47E66E4923453E6EF24F71FC9EDBB4A
          765EE72473F48B39D4597357B4DCF37AEABE5ECB52D30EAB3078755C9BF255CB
          680BADD07605FE6AF9E8460CE00F022BFCBE8253D4C671987E5B4FF95702C276
          00525E01A0ACA6ACE53C3EA2D11EEA522E40A67BD16F9D0A8DE3FE46CA7F92F3
          4DCA07B0DA515D5DAD55E1CA79F6598CEB2F5B5B5B7FDBD1D1B15D21794FCA48
          DD64283A12DAA4F58A169C4086FF4AFDF63DA99B8AE686A659A869728E8EE4D4
          AE3BD871B0E360C7C18E839D94831D073B0E761CEC4C0C76ECFDC9F6B0F92E31
          34281B3293DC88742650EE668B26FFB9BA268EF268093A81864D7D7D7D2FF4F4
          F46C54E89AC2D5480B385F3A5DA357F07390749376F811593C8D6C1CADABAB53
          3AC9EF1BF41B2D79BD10A7E4AD53A74EFDBAB9B9F9758DF0500F8A38AA3F5A23
          BB504B5DD33E031C6F69E96C0C6903BF8F71EE38FF9F0450DD91A3C5738B7078
          DFC3D1F877C0CE6E2D496D7C990DA4BE0CCFEE902E5277819DFF853F5F52BFAE
          7C97ED61C9DA241734583F34C72619BAE660C7C18E831D073B0E76520E761CEC
          38D871B03331D849F2DB9ED3350B03330361A1333319EC88A7AA93E4DF780F3F
          CAB58927E55F8D41D846DDB661DC36616C9F83FF8BF25917DAE536FAE91C32F1
          3DB2F1C5EAD5AB0FF1FBBC64B5B7B7B70CA0F3F6E1C387FFE3C48913EF3E68AE
          8D0C1DC0A61BBD7B81B63A4CBB7D4A9DBFC0B85E571FE47F81A7F771FAFED8D5
          D5B597BC968A5733A51D7F2ED1B6DA87A847A365D45960E71FC8C321EAD79DEF
          B24D8692F3CCAC7F99D3620E4BAE339D74281DEC38D871B0E360C7C14ECAC18E
          831D073B0E76260F762CB4ADE0EE5C887B56669B294E722ED8515D0DEC28F1BF
          464056727D3DB7BD40DD5EE4DC3AAE2DEBEBEB5B305D23390F22F4D315F4C3F7
          EBD6ADFB27E97374E619C9674F4FCFA286868677BFF9E69B7F3F76ECD83B5AFE
          FA41F9A8AFE3ECDFE47898FAFE99F437DAFD8AFA20E70AE0C37BD4FBDF01516F
          62DC57AA0FCE965036647394FE7D1DBBD3886C1F426E3FA36EDFC3839E7C97ED
          4164A02699AC6FDBC88DFA5DAEA3E960C7C18E831D073B0E762620073B0E761C
          EC38D87998911DFD6F233BC949D13319EC58089B811DFE5F0A3F344765277C78
          1180B3963AD768923FE7D33FF3F58FA3FC196D364A9B1C45363E59BB76ED67E8
          8AB3C86A0650B2A6B1B1F1DDC3870F7F70F2E44985B1CD7B505E711420439EDF
          53376DAAF9FFD26EAD71627B01EDF726E77F050FF660DCD7217BF3D4D6B381A8
          F7107AFE725555D509EA7A085E1C441E1A48B7F35DB68928773FA864BF4AEA22
          0B279DC8A173B0E360C7C18E831D073B39E460C7C18E831D073B93053B36B9FF
          49043B7174670E3256457A9EDF6F900416E4E03FC33D79073946F0B71F59BC5C
          5757776CF5EAD5FB485F201F2D02273D3D3D5BCF9C39F3EE912347DE397DFAF4
          2B94BFFCA778218347FB9FE0DFFF87F47FD3763F6A553D52216DBE193EED8207
          BB717E5F223D0B2F8AF2CD83C741C8F7404D4D4D23BAF66BF87910593D021F2E
          221383F92E5B2E259728B7FEA43E6BB2AB64FDEF7ECEAC831D073B0E761CEC38
          D899801CEC38D871B0E360E729013B85C8D772EAB601FEBEDCDBDBBB83E316CE
          2DD6B5995276113CED43165B013B47003A9F910E209F172A2A2A0A28F78B8D8D
          8DEF0076DE05EC6C9F0CD88961500DA971B0F37FD1CE97A57F68FB34F25FA370
          3EF27D0D43BB97F4327CA9C9370F1E0721A3B76A6B6BBFADAFAFDF87BE3F809E
          D11E46DDA3EA0C338C926047FDCBF49474819C2ED39DB9CEAE831D073B0E761C
          EC38D8F90972B0E360C7C18E839DD90C7694B43127B2B500F9DF8A01DB8D417D
          55ABAE695969EA543C53CA6D447FB8AD450570D4BFA78F7C4E3A887C9E476715
          5187F567CF9E7DF7BBEFBEFBD5C9932777F17FD94FF142068F766CE4DF3FD15E
          FF5F65656523406A181D342600856C3C033FB66068DFE9E8E8788BDF5A7EBB94
          679EE87D7790E7EBC8F53EF4ECDFABAAAA0EC1D72BB4F7D04CC23A4959B53E6C
          7374A40B680B2D4A91B5614907D3C18E831D073B0E761CEC4C821CEC38D871B0
          E36067B6829D488594BB02D9AFC790BE8E317B1B274FF3746AA967D9A3BE632A
          8976B9A3911DDAE608A0641FB2F995C2D8D01905F0B8B6A5A5E5BD6FBFFDF6F7
          C78E1D7B0B5999D4C80EE9126DB69F36FE08C7FF1879B773EC8946BE087E3C0B
          7FF6883F38812FE1602FA13F56E49B178F4AC8A856626B85771FD6D7D7FF0980
          F71D7AA6C7E43A5F94EC23E68CE89C8DE2988E36DD6D0B6BA8DCC9B93A0E761C
          EC38D871B0E3606792E460C7C18E831D073BB31CEC5450A77A9CF74D0AD3D27E
          3218D4D57131827C177542A23F0C21976D9A585F5D5DBD0F5DF1290EFB696424
          0DDFCB710ADE3A72E4C81F8E1E3DFA4E5757D7B2C9F08336BB8973D5880EFE1A
          C7FF1BE55D5151D1ACC50BE228C27CDA7D2B7CDAA94D4B3B3B3B37F7F4F42CE7
          5AE164CA3C93283A30B7B4571160F17FE1DFDFF87D12591DB5BE3013C89C1195
          478E951C2D0110E900734893FD6A2267CDC18E831D073B0E761CECFC0439D871
          B0E360C7C1CEA3809D89969ECEE717F32499531157B1AA45EEB7E1D8EC02E8EC
          C49868F3D0AA7C97F141847E18A38FDC4036CF024A3E4157FC2FF2F9BDDA4846
          1183BCF5ECD9B35AA0E02DEAB4893ACE27CDD108CDFDEC08790E036EAE21E3CD
          00A8AF003CFBF8FF3BCEDF89F2514C5A06AF9E07ECBCDEDEDEFE26C71790C7F2
          872C7EDE09991C867757349A435DFF81AEFF1CBE5D90DC9A4C4F171958C9DD27
          C71C40F15EFD4D4E1E00331CA503CC093327E77E8EAD831D073B0E761CEC38D8
          F90972B0E360C7C18E839D47053B3375535133AE2A2FC066134ECD2F71247F81
          21DBD2D3D3F38C4041BECBF820C24065689B7EFAC915E4635F5D5DDD5F6A6B6B
          0F007CFA5437EAB498FA6C6C6B6BDB4E9D5E425ED6706E19FD6711ED3721E089
          6D36401B77D5D4D41CA4DDFF0E18D8CF7BDAE0C7486CEF795A821B27783720EA
          DF003BBBF9FF1993DF2785E0DB7540CE0FD4F300FDFB4BEA7D8CFADF982E39B5
          F788927A58640EBFDA437D92760B0E9E922D44A07B93602709781CEC38D871B0
          E360C7C1CE4392831D073B0E761CEC3C6A189B9229E0A4439C6FC7382AFA34BC
          9C8743B71343FA078CC85BBDBDBD2B38579CD7C24D82A2711AC308DEA07D0E21
          9B1FE1B87F49BFB9C0E57E8DC2683487765A4D9DB651C79771DC5EE0F7B3C8CE
          C28942CF128EC63040E028797E4CDEFBC8F30CED759D76CF90679A3C4B30F2AF
          02747E8BE3F10EF9ADD56205929F2781A8E318BAFD0CFAF54BEAB91F27E2B8E6
          2BC1937EBB672AE433B9D040EE79BB6647EB2FD2C7021C72BAD5E7C5E35C87D0
          1C131FD971B0E360C7C18E839D4724073B0E761CEC38D8992CD8B17798313343
          970C639BEE30A189887A51BCA2B9D4A516A7FD4D8CE86F15C2F6A44DB8A70E03
          55555572DCBFE67890F6390EBF7F84EF37D576D042EAB41A07617B6767E70E0C
          E536EABB4AF3911E942F327FA9AEAEEE606D6DED7E64FE30EF69A66DFBACEDB5
          E21B32F81EE95DEDEBC3B10AB92CC9373F7E8A248BF0E516BCFA16B9FE081DBF
          1F5E5D441E7BA8DBB4A1351B3D3270611F06D46F8CC75A658DB60ACE9D565BD3
          F958FEAC539374DC1CEC38D871B0E360C7C1CE2392831D073B0E761CEC3C0CD8
          49CE3D4826D3233321E409799A4B1F5B465D36E050EEC190BE0518D844D966CC
          C6A19321F89AC108DE40579D47771E251DACA8A83846FF69A60F0F4A56A9D3C2
          BEBEBEF518E95DD4F34DD26BDA38F541F9F26C9F4014B2F72DC7FDE4F70D795D
          B63E2A90881CEE400EF6E210BE465A8D4C2ECA373F1E44D129E9A32E972B2B2B
          BF247D88337988F337E1D1B0E477BAC846C1A46769AFA06394A4E714B626C7AE
          B5B5353898FA5F7DDE1C91A4F3E860C7C18E831D073B0E761E0339D871B0E360
          C7C1CE64C14EEEFB93A33849E56B463D5F4459AA28D716EAB11387468B12BC80
          115D9A6F10F628042F3318C35BC86913B2F2554D4DCD7E1CE8A3E8901F752D02
          9E9A9E9E9EED380BFF86E3F63E467AC583EACA335A00A1131D789A3C3F01F07C
          44DB9FE0998CE48FC342D25AF8F732BCDBD3D6D6F62A8EF18A7CF3E241844E1B
          C2BE5CA64EC7E9C75FC1A32F91EF93F028A01CEB83B973767256EE7B644A8670
          DAE8A71C18D93C805748D2BB72E6CE9E3D9B3A79F264702ED5DFECDE899C6507
          3B0E761CEC38D871B0F333C9C18E831D073B0E761E05EC58DEBA5FFF4BA6F5BC
          197029D9E95CB420B179A6EAB61443F5465757D73B18AF57716A9653A779D3AE
          601F63DDE0EB3564E530EDF5198EFC21CE3551DFEE3889BD80FA6DC261F83D8E
          DB1F706237D03EF75D992DEED732A45110F4D03F69FB3FA30F0FD186B7A3A35E
          C63DD57D7D7DEB003AEFB4B6B6BED7D9D9B965A68E8CA9CFC2930EF87384F405
          7DFA1B1C88B3D4A3C31CAD643F7A9C3299BBE8811DAD3F48BF48AF08ECA8BF09
          609C3A752A75E4C891E0D488CCA199082838D871B0E360C7C18E839D9F490E76
          1CEC38D871B0F32860C7F2B336555E72E8949FFAB9395436F233D564065665C2
          60AEC178BF8F13F381E6B160B4165196276EBF9824D167FBABABAB4FD7D4D41C
          A29D0E50DF23C86A8BDA2C1ACAE580BB7F13E0C1606FA30D173D28744BB2479E
          DDE8A12F90BDBFD26E5F92D78FE43940DB1570BD0439AC131F31BE7F686F6F7F
          0D9999936F3EE45274467AAAAAAA1A6A6B6B3FD3A20B3891A7A8472FB23794BC
          772AC1B7E56B0E9DFA8339316A2385B319D8696C6C4C1D3D7A3438357ACEC18E
          831D073B0E761CEC4C2139D871B0E360C7C1CEA386B1E99CEDEE2E858DB31964
          1A873CB4A9C96756C93DA690A189C81439EF4C6BEF99A6A6A6DF937EA37D7590
          ABD26957AE8F99341283FED4DE31C7E93F5FF1FF97E89163184985B9E9966A8C
          F32F003C1F6834ABA7A7E759ADACF6A03CB500026D7504D9FB54AB9791FF29F2
          EA443F8CC9482287F37142DEC309FA23C737F8BF9A762F9C09E1803184AF9FF2
          DEA40F9FA31E87550740CF61CADF2179971CAB3FE9B7011025C98AE871D4C3E6
          AFC532FD0BA8B0DFEA5BFA5F0B13288CEDC48913C1B954FF3027DCC18E831D07
          3B0E761CEC4C0139D871B0E360C7C1CEE3023B2653D6A6AA8BAE251DC2A92273
          E4A8570986F3A553A74EFDF1F4E9D3BFC578AD9AAED1A5A924E432837374131D
          DAA8BD63E8431FD38F0F90465577783C87B6D39E3BDA0C7497C2CEB4A710E7EF
          CB782D80801E6CA9ABAB53789CF6F1F9BAA2A2E22C72D0AFF6A36D0BB56437CE
          E06FE0E91ECDDB81BFF3E0675E2765C530BC6164AE1D5E9CA1DCDF0076B4D842
          037CB9C42D195BD659CE93645DF551FF96DE9763611B7AFE1CB291A2A4236F4E
          893926E66038D871B0E360C7C18E831D073B0E761CEC38D87902C18EDD6B79A9
          1ED5D5D541815B794453ADDF1260670186FBD58686867F07EC7CA08509A65DB1
          4E0145A33C88BC5E8CAB8DFD1560F239F5EE8BEDA1393ACF213F2FE2C4BDDED1
          D1F13A86FB79DAE681A35A385C37C8AB19B0F00DEDF709BF05786E889FF0B200
          FEBD4C5E6FB5B7B7EFD628190E402D79E675AF22013F787147233A94F72065DF
          87CC7DCFFF6D947B587D484E535B5B5B8A7207A7C5461ED5CFD5E76DD3D99F23
          9749B063CEA1ED3D95EB6048E739D871B02372B0E360C7C1CE3493831D073B0E
          761CECFC1CB0A37C749452152F057494F45B4A5CE7ADEE36C23215A33CD1F016
          C1BF6730DC3B003BBF3D73E6CCBBBDBDBD8BA75DB14E014507658C36BA0E7F0F
          E0B8FF091DF64FEADC691B82725B15BF97E330BC8E93FF1E867B07EDB3F041B6
          45008A3C3B05169081BFA2973E06ECB4A9DD0476D019ABE23E3EBBC873475757
          D73A789CD7B93BD4798432F7604F34AA73509B87723C86CC7528BC4DF22BA745
          4EAC92F6B1916CD7D7D7079D23DD2F7E4AD67F8EDDB57E2D9D61CEA992FEB7D1
          4CBBE660C7C18E831D073B0E761CEC38D871B0E360E709033BCA53E5B515D9C4
          3BE5A1BEA5793B5AB0404A5C64CF4F1545476E2EF55A81E1DC79EAD4A95FE154
          EEC160554EBB629D228A4EC400CEFD77C8EBDF909D7F60285B46E386A0C85809
          C70A9CFB57319ABF0198BC4D9F5F31F28095D9040EE87FDABCF407F4D1FF2007
          7F51289BF513F2ABA25FAED312DEF0F5171D1D1DAFF27F5EF7DCA19D077114BB
          E8BB17B0290DC8DB5164ED14BF2FC09F6B946F24097604302497EA639275033B
          7199ED472E477264473A55EF90E3E260C7C18E831D073B0E762626073B0E761C
          EC38D879E2C08EB5AD819EB84C72A897F2164FCDA8191F921B933E2EA24FA591
          A34594634D5B5BDBCEC6C6C6B79B9A9A76E0F8CFE8CD301F8570EC1B91D77DF0
          F753787D1C3E5EA51D86C55FEA9FA69F6BBECE7B380EBFE4B889FFABB85EF013
          799EA53FFE8D7CFF429EDFD396C3C8C8A80014F96A29EFED3824BF16E0E9EBEB
          ABCB67FD91DB7E64B55B7B0591DA286F2BFDF83CB2D68CE3D04A993B29EF6DE4
          6000276E001E84451CD4C7CDF63C8E919D24D831E7D4C08EC8C18E831D073B0E
          761CECDC4B0E761CEC38D871B0F344831DE5A9736A4F2DB5AB70B6AAAAAAECA4
          70295E7B26B954EFE320FA5421EFADA11C1B7172779C3973666F7373F34B18AC
          85D3AE58A798E83FD768B7A3DA641499D522053FC0C79BE2696C8F25F4A51D5A
          9D4D2BB329F48C36AD78509E0A5D43063FAFABABFB98FCBF219F6BF0B2271AD1
          0A9E7FA1BDBDFD0F023C00C8356AC77C116D3D449D6F23BF7DB4F91D7EF7205F
          D7B57436C71FF9FF2AB75DA59C5728F3659CDA1B9275F571E91CD921073B0E76
          1CEC38D871B0E360C7C18E831D073B0E76260D762CD9BBA464D5CE023C9275F5
          37336E3F7762F844449F2A428E6AE1DF661CDC9D809DDD380F5B3158F3A75DB1
          4E31C1C70164B535866F7D860C7FC1B966C9AEDA05B99ACB713572F44A4747C7
          1E85F5E1D8AE7C509E9A03433B1D1780A2DD0E71EA3479B446235F80BCACEBEC
          ECFC03F9FD16877D0B7C2E9DCAB0C40711B2354A1A89C7F09BBA0F52CE3B7129
          EA36EAD0829C3500F47EC0813A8BACDF948C4BE73AD871B02372B0E360C7C18E
          831D073B0E761CEC38D89934D849D6D742DAC44B8DF0A88E9AC323FEDE6FD102
          73021E95C6B14EF152DEAD11881D3894BB701EB6CC46B0435D15967513DE9E03
          4CEE83B71F22C7DF69B1012E67E06311C7AABEBEBEB580935FE044BC0750D90A
          BFEF0B50B46929C0E9525555D5119CB083C886362EFD41BA4A6D055F97F7F6F6
          FE0607F1371C5F42972CA0CD67C49E3B4942E632C85998CFC3EF5394F328F27C
          027E9D47C66FD0CFB58A5BB857322B3267E061C9FA80483A2CB94081E5EB60C7
          C18E831D073B0E76EE92831D073B0E761CECCC0AB063616DFA2D59577B6BB102
          D555233DFADF96FE3587D39C804725DE53821C2DE3BD5B23D8D9D9D2D2B21983
          55F1C899CE508A866B1403790D9E7E595757F77700CF01DA4FAB91F5EB1E785F
          02D879A6ABAB6B6F5B5BDBBF61C477D2AE35DA8768225B03FF4671BE7AE8038D
          E8E92FF9FD21F271507BF1C4F65C4CFF7C873CDF83A7AF92EAF87F0EEF99DA0D
          941E81E2BE36DDD4E947EADA024F4ED2CF8FD7D6D69E44DE5B90BF8050247B49
          27EC612969031CEC38D871B0E360C7C1CE4F93831D073B0E761CECCC0AB093DB
          EEAABBDA5C75159F05782483C92FE33F57FF45B0532FB0D3D1D1616067D36C04
          3B469AAF02C83946DBED439F68FECE69DAB48D4B01A0004CE6E05CBF8253FB0E
          8EDD6E1C8975F0A31A9EFF8B672F59A44D4670C02E5455557D49FA13F2F02997
          06250FF07511CFED20DF3791CF57C9F3BE79CD04D2080F867E107E74538FF3E8
          FB23C8BAF6273A8C637195FA8E26F5C6A35072C53573987474B0E360C7C18E83
          1D073B1393831D073B0E761CECCC0AB093BC6E75155FC55FC9BDCDE1D1FBC403
          F1E6E7CE9F886067B9C2D804769A9A9A76613436CE66B003EFC6347787363C56
          5B5BFB95E6DB5454549CC4C00D89E7801DF17F35C76D3811DA1474A7361A85D7
          E513E5170D6F1760F42BDAE8BFD0D71FF18E1BEA97F0751EBF37D0CE3BE1E9CE
          CECECE97701657D0C685F9E6C383286EE8D94D5DCE6A4F1EE4EE2BE4EE1475D5
          0A7677CCFE244718274BE297749974881C5773D4934EAD831D073B0E761CEC38
          D8B94B0E761CEC38D871B033EBC08EBD4BD725F73687A7AEAE2ECCE3B17D786C
          AF9E47A53867270B769A9B9B776964075ECE5AB023D28A64C8ED25F4C9B7B4E1
          C7F0763FE73A12ED380FFED76BEF1D1C8A77DBDBDBDF00FC2C7D001F87013BDF
          D03E7FD25C2078AA89FE23B4653186B39E9FDB70925F6F6B6B7B03C0B391FF4B
          F2CD8307511CB192CEB90E9FCE6283BEA3CF1F82475A5EFB82361C1500916E7C
          5892ECAAFFA8EF68D541BDC7C0BBBDDB0086831D073B0E761CEC38D871B0E360
          C7C18E839D5906769492B26F8B1688E7023B7A6772E3D1E47359C538C9793C02
          3BA47ADE911DD9D19C9DD90E764418CB5B38DB0DC8F0C7F0F4239CA853F07000
          591A8B72370780A355EADE03A47C8043B199F6D2620513329736F941F9209B9F
          D0578F63306F727A8CB65B443BAE05E4ECD5A207E4F70A79973F6471A79D2443
          C87A06F9EEA28F37A1FBBFA45EFFA0ECDFE3F00E202FA3809E8736C002EED261
          EABFD2E7D2ABD607ECBD0E761CEC38D871B0E36027A18F1DEC38D871B0E36067
          B6811DBBAE7AA97D754EED2D5DA03E505B5B1B7820C32FC56CB29ADC7434F9B5
          FC7E54343EB4A3D5D8B644B0A3A5A7B7C0CB59B71A5B2E893F38DE5700900769
          C77F22D387E1C515787D533C15EFE07D1D8EC49B00955F61D05F812FDA8B67DE
          44F9F1FC45DAE620B2F105BFBF465F6809EA5BB0B814D958AC15DE7010FF0070
          DA4B7B3D316052F28E8C77D6D4D47C8DFEFF10BE1DE8EAEA6AC7D1EA45370E3F
          6C7ED2A3EABBCF3FFF7C9063D3E30E761CEC38D871B0E360676272B0E360C7C1
          8E839D590B76922BB4E9BEE4088FFA81FA8314BE3DF3B0FAB0687C53D125DA54
          34AEC6B6A7B9B9791B066BC1B42BD63C107DBAAFAAAAEA2CF2F40D7AF6108ED4
          51F871963416371B9D4BBB6ED5DC1DADCC8693BFB9B7B7B77E74823937F4CF2E
          8D14010ABED52808791DD3A47EF24AD3474B05765A5B5BFF13B0F31E725493EF
          BA4F96D4DFA8C308F53A4DFA129939003F1A9097D6DBEA740F4992D7D5AB57A7
          D6AF5FEF60C7C18E831D073B0E7626A3871DEC38D871B0E36067B6829DE475D5
          5149EDAE3036D55DFCD7BC075BBAD746738C773F45F4A902EA5345BD9E17D869
          6C6C7C0BA7F2150CD6C26957AC792078361AE7A568EF9D83F0F2D38A8A8A6F31
          A4BD11EC1469AF1C646B3D06FD758CEA5E9C5D6D0E3A3797BF024EF48BABE471
          94B40FBDFDB9F6F49151561FE5D937704CFE0F60E757E89465B4D18CDB6FE77E
          24E38FEE6FA75E5AB9EE1080EFCBCECE4EEDC5D3F5B079891FB960C7645CE460
          C7C18E831D073B0E76EE25073B0E761CEC38D899D56027D91F2C544D65B03D78
          C40395437A427DC49E9D0C717F1A39AA20DFD538E13B4E9D3AF5EE99336776E1
          CC564DBB62CD1351FF218CE60DC0CE777575751FD6D4D4ECA7AF5D46CEFAA2FE
          A940B6AA71F25EEBEAEAD2DC9DD769EBA55C2B32075D24E0842CDCA61D4E92D7
          47A4BFA12F4FCA20ABDD787E3B80F20FA4F7E1EF6A0126B5EB934238998380B7
          6BF0EB705F5FDF8700904F90B5CB0F9B8FF4A8C08E85B1C969F1911D073B0E76
          1CEC38D8B93F39D871B0E360C7C1CEAC063BC9EBF6BFCAA1F6573BE80BF9860D
          1B425BE89CAE891FE620E45252674647AE542B8F6138773434347CA0D11D9CF1
          2726CCEAE7523468231AB500ECECC701FF4C2045F377E0F590DA15035E4CDA8A
          D3FD2EC75F9036226F35B4513A990FBC1C03109C413E3F4446FE1B40FA8D8CB2
          DA129EBE80A3FC7E6767E73B1C370218AA69A719BD04759224F7E8C04164E624
          72F817EAF4178E0DDA40F561ECB01628902D53FF553FF2911D073B0E761CEC38
          D8793039D871B0E360C7C1CE530176C40BDB5BC796FC950C6CDAB429B56DDBB6
          A01F5436D30DA6A80DF098AE9C00EC14727F2586FBB593274FFEFEF4E9D31A79
          5832ED8A35CF8413750DB96A00EC1CE07800A7FC28FCEB12BF255BB46F2D693B
          C67C6F575797F6DED9403BDCB3D080F88D3CFC889EFA987CFE4B1B8D6A1353B5
          07F7AE07E0ECD58207388C2FE2C0D7935F59BEEB3D1932872B3ADE177134FE8E
          A3F1277E1FE15C1F323532912D3699B53C94E4A0488F6BDE99EC8964361976E9
          60C7C18E831D073B0E767274B0831D073B0E761CEC38D819073B66846D4352F5
          995CB0932473E4B8BF0CC3FD724343C37F9C3A75EAB718CF15D3AE58F34CF062
          08B9BE5E5353731CA0B28FE3A7F4B9062E8DC53E56425BD42367AF747474BC05
          BFDE00F4ACCDCD07237C93E73F4736FE5A5959F91986F332CF67347A46DB6DA7
          EDF6F0DCAB7A96BC16E5BBDE93259323F4A078F4197DE0EFF0EB1BF87615BEF4
          2543FA8C4C66934E9B64540EAB74888195DCF738D871B0E360C7C18E839D845E
          74B0E360C7C18E839DA705ECD835033B920985B06DDDBA351BC6A66BE247D268
          641566C2705B9F8A6027D5D6D6B615A0F31FA74F9FFE3DC66B1DEF2A98843A9C
          55A47D65E212D25FD5D5D57D84BE3B084F3B6883A168004BE86F6B31AE6F6158
          7F05E87905DECD1F4DACCEC6FDFD809DC35ACE9AE73FE39906EEB9C33D8B68C3
          753CFF3A406737CF6EEBEDEDADCB779D1F9670307AEAEBEBBFC51EEDABAAAA3A
          A4D5EB90C92EEA17D08E019C5C9033915369E79232E960C7C18E831D073B0E76
          EE25073B0E761CEC38D8796AC18E0CBFC0CE0B2FBC10DA427D44D78C4F4947C1
          8C75529927C10ECEF73A1CCADF353636FE96DF9BE0E9BCB1FB6CA0399B0923DA
          5F5D5D7D4AFBE55456567EC1FF0DF0AB95FE3F261D004F16E05CEC686F6FFF25
          69378EF8B37D7D7D55668BE0EF08F2791AC073107DB95F13FA79A60D7E17926A
          E8AF3B3B3B3BDFD6C810F9ACCE777D1F967030FAE87727D14307E193C0CE3164
          52F39BC2AA18D6677534072EE9482529E9C838D871B0E360C7C18E839D89C9C1
          8E831D073B0E761CEC0076EAEBEB431FC1F10E6511E5CECF491A6191297ABD0B
          27660586FBED969696F730A22F62B4B4E2D81331A7E4719278535151D189AE3B
          8D6C7F4DFB7E89613D0CAFBBD4D6F02CADA5BA717A77606477015C5E8277ABE1
          55F006259F80A44B3535353F5455551DE0992FE0FB29E4A68F6BA5B4DDCB80A4
          0F30CCEFF3DC967CD7F761095E0C20F7E790B7EFA8A7C0CEB7C86433721A0C46
          7254C7644EBAD364CD78940B301CEC38D871B0E360C7C1CEC4E460C7C18E831D
          073B0E7626003B491E268DAD8E22E52BD2FFFACD738B311A2F633CF760445FC5
          89DF4C3E95D3AE606700D1D74768D70ECDD941BEF721EF9F92CEF3FF2D783806
          BF6AE0D71A1CBF97B55928C6FE5578F58CF82D022C75A32B2F00760EF2FC3F68
          A783E477534614395DD7D6D6F65B9CC53FF0DC2BB4CF13357A066F8690FF4BB5
          B5B527A8DB21E4E720FC6820F5E9BAEA18576EFB17A76E2227CBC18E831D073B
          0E761CEC3C981CEC38D871B0E360C7C1CE0460C79E3332831137CB0C3CD3D188
          FBE7F2DCCAAEAE2E8D3CEC7E52C3AC1E0745C76318637A09C0F235E913F4F009
          FE6F45D66FC2C322FA5D756F6FEF7AF8A5119A7790BFB5B6770E323204E0B9AE
          392DD5D5D57F456F7E4C5B75AA9F68C96AF8FB7B0CF37F6AA352DAB924DFF57D
          181210A44EED0AD5A38E023BFBA9B342D97A755D4E886C96F482ADB42659135F
          EEE7E038D871B0E360C7C18E839DFB93831D073B0E761CEC38D879C0C84E5659
          C237033AAA87EE312754441BCAAB5844DE6B3B3B3BF76A023EC797B9FED485B2
          1961507B012C6771EEBF45F77D435B7F0F9FCE8A8FF0AE80BEB714E3AE7D89DE
          C621DF8E0C3ECBB9E08DD05FFBB5CF0EB2F23F3CFF6780C115B501F757C0D7DF
          0078FE13C7F10DDA61413EECD8A312F23F4ABDB4225B23F2F735FCF80C19F90E
          99EA51FD2493DA2C547D440E89F413FC09B23691D3E960C7C18E831D073B0E76
          1E4C0E761CEC38D871B0E360E73E6027A91FED79E52B7E597D8C6751F117F3FF
          128CE7EB18F2DFE394EF46BE6A78E713B3F9E5E324F83186AC5F43C6CF699406
          5DBC0F037B58A33B513F9492B6207B3B7082B5A4F4761CFB7AF15A6D0128388E
          8CFC17F2FA3FC8C919789BC1712F87BFEF93FEC8BD7B69CBC5F0BF30094C6732
          09EC6007BA00706723D8F9947A1D464E7A745DFA40B228DD206744B22A80203D
          E560C7C18E831D073B0E761E9E1CEC38D871B0E360C7C1CE24C14E6EFD0CF4E8
          18142ABCE5B939E4F13206EC5738EF7B71C85793DFC2A715F0688E0AA91BB073
          04B9FB24AED0768E4BB7224FABE0CF6A9CC0BD1D1D1DBFD4FC1D781A3C4374F7
          79DAE56FC8CB9FC8E330EDD68FB35CCEFD7BE8B7BF21BD89DCAEE0586E236C33
          9D0CEC68C4CBC00EB27158233BB1CE4116D537E49038D871B0E360C7C18E839D
          9F470E761CEC38D871B0E360E721C04EF27CB25E367F876B05F0730DFCDC8963
          B35B737870F05691E79C6957B6338490B931F47013FAE710B2F72532FF3DFAA0
          057E0725491F5C105767FB408007E77C39FC2CA57DAED1473EE3B9BF71EFE7F0
          F41A8E4919D75EA61DDEE3B817E7601DE717D2DE4FC44205318CAD8B7486FA69
          CECE3EE4EA3BEAD3239D241B213D5D535313E451B22867CC9C10073B0E761CEC
          38D871B0F370E460C7C18E831D073B0E761E12EC04E5393E8A930D6BB37E19A9
          92732B31A2DBDBDBDBDF6A6B6BDB81C3B9EC49197D980AA2DD7BD07F2DC8DE61
          1CF9FDE865CDE1D18205817F18F9350A65C3F0BE8FF10F4B776B9183DADADAA3
          C8CB3FD01F1FD36ECDB48F1A601DFC7F0BDEBF095F37C3E725C856D1CF2EE4F4
          F021CCD9A9AAAA6AA4FE87700CB471AAC05F8F7401D74292BE927CA95FFA9C1D
          073B0E761CEC38D8797472B0E360C7C18E839DA71EEC6CDDBAF5A147760CEC24
          F994D81FA5887373315CEB013A6F6344DEC5A06DE5BDF39FA4C9F48F9334BA83
          81ED43079E41FEBE4006FE896E3E2C273FEAEC05F067A346C300887BE1D70B9C
          5FC0FD9701475FD17F3F1428A0FDBA31A6B5F07B17F7FF82FB5FEAEAEA5A493F
          7E22168240FE47003AD748A723D8F91C71398A1EE8B5111DC9A5487228A0637D
          F3E7829DE3C78F3BD871B0E36027E560C7C1CE3490831D073B0E761CECCC04B0
          53515191DAB469536ADBB66DA15F18D83199E519CDB329D05189BC0A9414AAC6
          F90CF78C92864943A431033BA6D435795E7BC160D4DFEEE8E8D889A3B746F377
          A65DE9CE10126F686FCD5739862EFAACBABA7A3FCED759F87E43D791432DEEF0
          0260E75D0CF01E78F59C36E1D44205A48FB8773FFF5FC098CEE39A36230D7CED
          ECECDC403F9E97EFFA4D8690FF612D3D0DA83919C1CE979C3BCEB95BD207EA9B
          724290DF02804E09A99CBE5982DC726B4106D91A415F8C9146E15B380A48724D
          235EE137E733D2B7D279EA6F72E64E9F3E9D3A7AF468AAA5A5C5C18E831D073B
          0E761CEC4C3539D871B0E360C7C1CE4C013B9B376FCE821D64A2103E1473BD98
          7B8B7926246E2DE1288753E78B2208527E774837794737C7FEA45321A20CCA6F
          B996A0C629DF25C71CC3BA41FBC94CBBE29D2124871DBE5F05F01CC7E1FF82E3
          01FE3F0ECFFAB58803CEFDB2AEAE2E8DD8BC8DE17F49A33BF45D6DC2B9AFAEAE
          EE43012539F4F0F1799CA5777056DE82AF2FD38F17E5BB6E9321F4E020FDEF32
          7DE018F5D29C9D43C8DD29EAD5277DA0911DF511ED1F042F16F5F4F42C068057
          F27F690438030AEFE37748FA0D3FEE499C1BE13DC3E43FA491A424D89173EB60
          C7C18E831D073B0E76A6981CEC38D871B0F374831DC9E1AA55AB7E0AECA49562
          FE3A86A4DFB16DD34A896B29BB27CA5E783E9651BA2E7B8D77A5A39351B07EFD
          FAE24D9B3695519652FA4829F25A8A4C08DC940AE0709B004F29CF9690570041
          3A47D2049C1BF0B315E57E9EE3F5A482B77E409DE5B42EC7C9D98653FE16C067
          17066DB59C579569DA15F00C208D4EE074B55556561E4516B442DB3EADD0067F
          4770EC8B49DB69A3D771F4DF402ED7C1CF41DAE76B64F6AFF499FDF0FB36BC5C
          8E817EEBE2C58BEFB7B7B7BF419B3D93EF7A4D86D083FD80B626D261F4C04164
          EE7BEAD302E01B00F0047B1575B3C22097C183F5DA7F0879AEE0BE5178718734
          C4EF007448FA3D82DC6949402581A021783C44DF1AE4D88FFC0D3637370F3634
          340CB7B6B686414881CE0876C2EFE810657836139D9CF03B3A2FF63BA3F3D1A9
          B1E732BC3B139D4DFB9D7910D89153A5E460C7C18E831D073BD3410E761CEC38
          D871B033ED60479B26EAFD9A27A376D1FB553E8D8468E44480425FB6792EFC26
          1F1D350F4649D70A49454AF15C517C4EA166851A21204F1D8BF4DB466392D768
          86429472214E67317C28A56F96F0BFF67D09A0063E29659F53DE24790E4A4572
          3691A11F3118FA42FF1DC7F30A2B32E39AEC0738EFA5725871F45EC1D9791DE3
          BA0D07541B6856EB9EA79134519F7E70115D70B0BABAFA53F8F73D3C6B855F1A
          765BCCEF4D38FA6F6A8356DAB99A763ABD71E3C6BFA03FFE4A7FB9D9D6D636BF
          A9A9E9758CF4EF705ADE8797CBF25DA7C9107AB00FB93F861E0EA35AC8500332
          D0A1511AE94873BC91B985C8CD3A64E515646533F5134F10AFB44610B3E16A3C
          AFD11E197285512AAC7294E34894CF218D04D1B706018443383343C89F40BAE4
          7494F7E95985C58D4620157EAB6D34ED2C8E24292FBB4FE02AFCB6F3025A7A57
          045F025DF65BA06B248E3265C18E9C7D0057D6D977B0E360C7C18E839DA92607
          3B0E761CEC38D8C9CBC8CEEAD5AB43FD79BF808BF64E29D391FCCA9478A69CA4
          DFA5E4A363491C5DD17D023CA55C1720D2798DBC14C77B8A23102A56D8590C3D
          D3484D004E0240BA268044531422174538008528FF0080046A342727929A2B38
          92FA622D07515FAD5361BFCC427D39BF585959F9354EEBFE8A8A8AD3D46DC074
          AAF1DE6490BACF25D5C3E71770E25FD57E3238B1CFD33F163D8D80273A9977E0
          5D333C3C8CE13D808EFA06FE36C1D722FA6795361BC549FF0D4EFF0664B67DC3
          860D1FA13FFECC7D1D50517373F3368CF41F719A7E071FD7E4BB4E9321EA7903
          5B7470D5AA551F53A783D4F33C32D247D2884BD649E077B5166CD006B5C8CB4B
          F48F3A8170E46A288E544A3805D80BB8BF308E7A16C4D1CD4C9CC7235034C2F9
          51F21A859F23C8A0CE09B00C2BC44D00C6C04A0C8D1BA14C366A341C47918622
          D0198847FD3F14AF0D92DF204785D70DF07B80DFFD1A8D53D2398D6669848962
          0CCBD997532567DF47761CEC38D871B0331DE460C7C18E839DA710EC88FFEBD6
          AD0BB220BEE8BC947F5C42590E5348A37142BEFDAFA489D3769E944E1E63E8D9
          3DD7146AA673BC23849D51D7021CDC747D7D7D11ED5082C22DE5FC5CDA610EF7
          CF11D091FDE738278218819D0062145616014D18E189233AE1BCC04C043401B0
          C4111D032F45E61CDA088DCA24C7502086F3FA8A1D267973DF18E51995F3A9F3
          946F84F61AC6491855F895C08EF293D307EF7EACAEAE3E423AC47D8D946750F2
          2E7E8BF74AD60FE2FF0268CBE0F5569C9E5D18D997306ECFD1360BC4039569DA
          15721E293A5F3749E7E1E5D7F0701F46F64BF8DD8B311E862F6B7004DE87A7DB
          D1E323F4DDC3F4994F68874BF06FA4B5B575FDC58B17FF1DA7E98FF071531C79
          9BB1A4BEA7F03D74E027809DBFD00FBFC109E8403E466DF972511C195C489F59
          03207E1979D942FF582210CFE511C9B2403BFCD19C30A522EE0DF3C9341A499E
          85F0A8407D2D352EF3A1EF5AD8A4E4BC707C91030344D914477846E368CF480C
          911B89BF87EC9C81231D057622E019E41D01F068044A00887B02D021F5097329
          A40EA03A0A88CD50FE4C5CA54F23540A7D1B8BE173A12FAAAFC54518C2D17EC7
          6BA1FC3C17CEC7D0B9ECF9C43D9924D851189D8D2C39D871B0E360C7C1CE9491
          831D073B0E76F20B762407EBD7AF0F7D228691A551B216C25512C14549041425
          71D444BF4BE3A84818318960A3C87E27474DE23D85F15C91859EC919D3680EFD
          B2B8A2A2A204B9B4D19AD208744A144286C2D47C9930CA129DB5F4F847EC7458
          092DABC4C697DC35D0924C022B630666CCF9894EDD98BE7693A7BE7A0FC941D3
          1768644223334318BFC1AEAEAE617D8946564791D951DA2B43B9431C91782285
          8EC1E8A5FD2EE1409CA39E9778A64F86432BBA599F13D92A6DB1AC023CCBE917
          9A8BB1454E7A4F4FCF1A8ECBF9BF466DF53491F40286B01B1E9E4226F6C3CFCF
          E81F67397F55A37BF0E9258E2F727D01FDF66A6565E509F87A01A7B917877939
          CECA6F705AFE080FB721BFE53379944C60993A9E43077D48FA93165B8820205C
          9743A0247D0009FCD6A19F56D16F97D33F16E863421C6DC9E8E301A021232705
          C05710433305C28BE05131EF29453E352F4C7DAB4C405BAF406E259445B11F85
          D14CF5B164D2B5F4B8B00681154832A094F4190AE27C1DF5277D2450189DF52B
          F5236E11181A8CA33CEA5B830AA9D30813F23E3A2205515838A2B0B9B8CADC48
          0C9DB391A6110B8553D288938056045961B449A17AF17C167C71EF600466FA7F
          80FC8790A731033B13810D073B0E761CEC38D879ACE460C7C18E839D71B0A339
          2B3F0576EE57AE49829DB49D573BA83D44D4BF60CD9A35459AAB82522BD7EA60
          287F858D6974A53C8EA8940BDCC4B0B252FB1D43CB02F0312014415100460A2B
          4BFC5F14E7CD84F0B1D1F1309C0078A042FD894E5741FC2A6FCE961968FB3A6B
          5F9CB3BF135F98EFF9021DE70C24C37386E25767CD5F18344789EC03C821690E
          449F42AA9428E7405B5BDB00467048213FF497B1AD5BB7A6E15701E04C2344AA
          4B18498AC67358B61367FB26CF7463C07BF0C3558E20F3F77196CAF83D1FF97C
          56F3313076DA2B469B633E473B5589B7D3AE98F344D11919D30A6D0232E8C883
          FCFE16E3A855D76E91AAE0E14AFAEF33EA2B1CAF212BADF0ADBBB3B373310EFF
          BB1C7F07EF5E0664D668F430DF759A88346241D93B01383F600B3EA2FF7F443D
          B5EC764067723E62FDD439245FF390834A644DF2A0FD99F4C141F369062573E8
          AD5140CEF0F1E3C7474E9E3CA93035F59F347916907F716D6D6D198E6D39CFCD
          E1DEB93144B49C7BC268691C0D2D898B6F94263E726457218C23A5968AEDF768
          9CC3A6BE1A7F6BA4C996662F346064402815E708E9383A4E21B44EFD35021603
          3A0670860DACC47039811DF55F8D2285D03925F5674BF1FE8108AE06E2EF7EEE
          EFD3C892E64AA9BFEB4306406398BE3A7A9F30BACCCF013B133998B960478EA5
          831D073B0E76A68F1CEC38D871B09307B0239910D051927CAA6D6278988D8414
          C6D1110BC72A8ACE447028E2F56C8A615B0531842CDC63CE483C5F089FC351FD
          1E83572487083ED02CA5E5318CCC9CA17294944655E400D9884E081D33072835
          FE3538BC3775EF97E1C2182E63A331290B9F49249361D1580C9D198E60451317
          34AF6084F28CF07B18A53C8203374AFB859094541CB989A12AD99096549CB41D
          F3D3BD067E745E8027BB5CAFDEA549DCA971C0131C27F8A0B90583F06208B013
          9C21CA90814F051B376E2C406E8AE15BE047043BD2DCA5E4AB2FE745809D3E8C
          D655404B2B32DF499EB7721D181DCDA1507F800F7370DA57636C36E3046DC059
          5F459FD1DC8C6ADEA12FF915A479237757959B767D3D5D443BF7D3177E9C3F7F
          FE29FAC797F0FA00BC6A8287B7B95601105A0C50A850781B7CEA686F6FEFA19D
          AAE1DB1BF0F003D22BB441BD56D2CB775D2622DABC8FF237D2E7BE41FF7D465D
          BF4106DACC11917E927DD0A8273225D0564B3F7886A3E67449DED4F85AC440A3
          14C35C1BD682030D0D0D438D8D8D5AC52EF403F290CC16A2EBC3C8A9C00CF76A
          44D63E58D872EAD6976DAE9B8584DA821EF6F1C146570DE0D88A8869E94EDE5B
          A084DC860F1CC878316D54441935EF4A1F338A234032FD51104768D3B1FF2657
          74CB240192521C8DCDC48F1A024C5A806134F6E7D138B728E80ECEEBC343F663
          86C2E938D7A7503AEED1C217FD38B98380E321FAAAF48C2DD4602172A3162EA7
          14177FC87E6089739DC2FFBA666180D2275AB8217E90B10F30D9704085C2AA7D
          45E887B0D71140356C181B65C3C18E831D073B53480E761CEC38D8C923D85179
          90CF327DE9E7B9D244D20849999C13FDAF2FAFC91113AD54167F1B2029B1D193
          3861BF283A2C36AA52CCBB8BE490F0FA30A28223540C4F8AF999CD271543C828
          4F7048A4236C842833EEA5D812B563115864E2310B32E2175C0189708C606338
          5ED779011A39266246F81A5B18E3FA39DEA16E0338B072468635974140A7AEAE
          2E8DB35BA072DBC2032AA7C43AA6C2B8F74D4816A213CB5D60ED941EA754AC57
          98C81DE7D264E2A85186FC33327E94210DCF0A68AB42E4B5A8BABABA5073216C
          5E509C07A43294C595E36EF3FF39D249CE3592572BEFBA3D16279D9BD2971191
          C321632359E15D15D4B50E87B196E7EAB86F29CFACA0DF3CCB3985BB2DA11C8B
          62FB4DBBBE9E2E8A06B80F996C434F86451FE0D577F0AC857303C8C01CFACC3C
          7E17E0ACDE6E6A6AEA6F6D6DADC2397805BEBC0DAF5EEDEEEE5ECB7181DA36DF
          F54992DA9F3AB5508703C8D217F4F9EF90A516CD6B31674CF220D9800F73686B
          85386E25AD55FB4BBEECC3400CE95208D828F51D01F08DE2AC0C6B9E991C6DCD
          2D13E091DD23CF20EFA37179F6540C4BB37726FAAF4E5B389A8580661DFCD86F
          03C8D08709810A783E0CB81C46764771E033B6C2210E94C2E8944A682B7D0C28
          8F8B8D68A4B8DCC2E9385F1A573BB47DAB425FCE9D7B67602B15477D2DA4756C
          7CBE5D41D447A12FC77A66621D741849E89910562742463432A6D1250BA3CB8E
          2815DE5DA041C79118366823C41A5DD27D2174AEF0EEE20D4331546F308E3A0D
          C5DF3A0E680970921C82017835E660C7C18E839D69D6C10E761CEC3C4D604775
          9FE8FD3960C726D78709F5B11CB6474B48C9FD5D22D8C9DE9FF80A9F4E24B543
          5A7363D4165A01ACB6B6B65C0EDCFCF9F3E7CAC191331043C7B2E1631CCB12BF
          B3612623718531FD1FBF961AF8298AE0A7303AE2364264F3668A6CE44580C60C
          82F5C7D876C1D989A160C1B1524CBDFD8EE7CD11B2DF3661D92631EB0B6BF8BA
          1A476D06E3738371F2F26074F4047402D8E11D9AD0DC079F063A3A3A8631840A
          CD09FD0750A85128CDE329D34206DC3387B296C7A4B0BAF2F875BACCF6C749F2
          CC46A8E217F26C285AFCE29CDD28349ED7D2D40216815FBC53F3200410C39CA1
          C4DE38E9A413867C6BFE4E33ED791487E2B0C2B0387F41F312ACCF9A33A1CD4C
          136047298C9EF15C85C2B528CF2AADD406E05A834319E6F2501E85BDCD55192D
          F42F8EA699139BEBE0DB2A72F6953C6D0038F1DC8C221949CD61C151D608C8B7
          F0E9103C3BC2B195BE3BB06AD5AA02AD9CD7DEDE3E76EAD4A9311CA545F4DF8D
          3CBA0B59D901087A117E2D9B4960471F0068EB9BD4E73BF4DF3F6A6A6A0E2003
          CDF0BF8736CF9853207DA4236D5C451D76E100BD43FBBF8CF3538FBC97475B9D
          8973D0C26FE42724F251FBDADC96B0CA5A5C69CD3E34D82203D915D712A39C83
          D1690FBF6318685870A030AEA6A63E6A8B0EF0BFFA6D3FF2D80FD8EAA72D0622
          D80A85928DC3CE14A0638BE90BDA083584C71AD8914EB37E6BFB578DDD5D64A4
          3486EB59386C5162D4A9D0469E94E2879D300F30B1CCBC8D20D9D2F205096017
          CA17F59CF50D5B6EFB9E70D80868B2CB6DDB72DA3C33643A2E82A0EC8A7409DD
          36608B35C4A3C263FB69738D2CF5D1D7EF00D2FB15268BCC0650161DFCEC5E46
          D1390DBF753E3A91762D9BE2B5EC5E48C96792F7AADE0636A47B0CECC8B96D6E
          6E0EA0C3C18E831D073B8F991CEC38D8C907D8D1172DC980963C161F4CE1723D
          1D470B6C69E2606413F34CB271EB89258D8BE2FD8571F4A430028AC23829DFF6
          8BC9869945831C8CB07C6764A18C548ED29923275ECEB9BE76725D613821BC24
          11339F8D914F8D3BADB6DF4B1CAC4817585F8E8E5EF8C70C5D881703C4C4AF9E
          8A9B1F8B615CE12BA58C32651B821F32C043F044863D7CF1C46119C5F9541859
          30A211E0A5A3424B270CCA583C3766139653E3A33BD910B3188632620E987E5B
          F85A742A344F6604E53F06E0496B1E02EF2DD4AA6DFA522CFEC8F183970670CA
          22D8298B40263B1F612C310F210246F1B1343AFC59E03896987314FF2F325D65
          7D6DB2445F6FA79C67ABAAAABEC1A9F80A7E9D4026AE51DE215B1C424A5FB268
          612D326E4AD20BD20FF05B75AAC3D15D89115A0E2F96609817690E07F9CDA71F
          CDE5A8FACE89A37F6511F0164679B0F040F15BA365B739AFC51604146BB45F8B
          8093E472DA95FF2409DE5D8317CDF0F330BCFA1C9E7E8FFE6CD368A88CB44281
          649CE18F26F12FA5BE5B01876FB4B5B5EDE1DAC6990276D4DE9AA7A3450990E1
          AFD07BFBA8DB717471A7FAA22D46618E9AE40D995F41BDDED372DA80B7D7909B
          8593798F3931E6D4A7C6FB5DD86CD41CF6E8981BD01932B063A313F14345768E
          9B8D5618D889A3B001F450D60178AE51D801408F466B431FA7CD46007499EAEA
          6A01538DC6FECB8786D4DD10BAE4C84D6E486CF26391F92AE9E8D04BBF67E4B0
          D2DE69C0A1567B2C8AA3D3E11DFA4881335782D356A2851AF8BF24EA86306750
          4A382EC41000917D3488FACC280B2C8D52318C56752D8CABC4451DA6912F8D7A
          29FC36E8B6780C8B9F68597AF1ADAFAFAF9F3E2D9E0DE93B08D743485C0C8B1B
          4D7E508AA34CE15CD1F8BE47238950B9EC0854E299111B994A80D910DAA7F657
          590576E4C8CA2E6ADED0D9B36783C3EF60C7C18E839DC74C0E761CECE46B6447
          3290787FA94609B4BFCBC8DD3D5DCA6C6445FFC7103273964B2CCC2C869165BF
          488E8E4FCCCFEEEB92EB3C278192404B7A7C79D822148E42C68A2C9C23866514
          44636A31ECD96558538989BE16136EF1E2F1CB6D30B2C9AFB805E34BC386108C
          D4F868CB608C6DD7484AD8619DDF7790933B287D19627DB1553E21665DBC92EC
          E270CA3F2851DD6957598C906C6429950068FA3D76776273007CD119CF3A3289
          F93D369727D45B7397304405287D2DA7ABC835392D9A0710F896F87A7B4FD84B
          749AB25F756DB426110A9375AC72FEB73909F7009BE8003D946E93E3819C75E1
          E89D201DC0D9FB86D36791B3AB383923EA0FE9F1E587835E501F50FF5032B023
          6744008EB65800E09B4F7BCCE57A19F222705C813E5B002F349F47A16DF32370
          298B4E6441622447CE4D0FCF75C9D1E1DE6ADA55FBB66C54C89C6471DA95FFE4
          F9A8B95A3DF0A801E0F829FA6A3FE934F5EF169FD4A7E5A0D077D56704FA56E3
          74EFC571F9009EEDD064FC7CD741441DBA9183D338FF47E83F8700B2DFD31E0A
          6F1C49EACB04D8A940EE3700DA7E8523FA1BEAB475B2EF9A60F422FC8E4E4726
          7D7769E9B19CDF2389FF83F39D73CEE6BEDD93E4D46B010FCD1DD2078A54FC70
          415FD592ECFA38929D0B931A9F63974AE8332B4F162824CA651F438293AEA477
          C58509C29C25F83A08AF06E91BDA287558CB582BE43435FE21291CB5F4B656A4
          437ECA357A4E39C2D2F6D2E59A67A70F2789D1A4ECEA9389794CD98F4DA3E3F3
          20EFF9F094BA3764367C80B2A8008DEEDB28B93E3CD8A891EA866C8A6F214437
          86D16543E67246DC86E3B5E11CF0622349437171061DB32BCFC5F3016015C445
          1A285F00AB1A9543BF6894A99F3264E4DC363535F9C88E831D073B53410E769E
          5EB0A32FB3AB56AD0AE590F04BE145B063FBB564F784188DFBBBC4F336F93EFB
          7B2C6EA2373A3E613FB9D78B199CB0C70BED10EEA5731728BC4213F3354A201F
          3A6EF4980DB1804D21BC2215572CB2108BD17B571DBB67326FEAAE635F981CC9
          C971AE93F5B17E675FDF47E357C131CAA13D5E14F9341243C486513A721E4628
          7F98109B1A8F9DCF1424763C4F8462843931067C0AEFDD0763281E251059C388
          0212F8E9874FFD5D5D5D0A21931321D091A68DD2801DF1AC08A7A14421291646
          A691159E9B134755CAE357D3323B8EDE5DBDCD36FEB41426488FC6D5DC46EF2E
          82109C8BD1BBABB88511B4E870D852B83FA5B7F2FE455F6D84CE69C5C13DC1F1
          7BE4FE18F5398371EDE813E2A15FD86474199B38C93B1806011D0121918CB156
          6E9221563F8A235C73C87701CF2DE45C257D4B7BB1CC5798907898BA0B7642F8
          12ED7713B9B921DEF18EE768DBDDA45D5AE63ACEDF9AD1042FAE50DF6FE8B7FB
          E1D7B7D4BB09FEF61A1035638BAC3E03AF76E3B8FC0EC7F717F06EB1FA7F3EEC
          9B283AAFB770B29B158E07E0D148DF4964E12265BF653A722C2E38111D32C9FD
          B3B4CD769CB0777104F7F6F4F4ACC8771BA412CBBC4F743E02A98C8580C551A4
          099DF6180A6BCB46675748B4112573E4E3886436742E8E34857372D41512060F
          EF747676F6030A07687381886C68978EF03A83CC28FC358CA0D31742085D5C5C
          248CA0E78C0467F7F08AA174D90F36C9117EFB68231D4FDF2BA4FF2A65E746C6
          E880ECE811E5298CA348F671273C6FF3A40A127B06C5B033039CD9450E2258B2
          B953D955276DF3571BB9B38F5A31A44E7A5E4E487F667CEFA3B04803F6446175
          7D1A6C46170CC1BF31F8A811FBB0C711BC1D8BE171F7EC7964FB202552F6FF38
          BA95FDADBD8FECB9848D1B33B023DB2FBF404043F3972887831D073B534A0E76
          1CEC4C2BD8D1847C8591D5D6D61AD829E67A72E424EB104750915DCA38195E36
          1AE7A6C4F3F7849CD975DBD745732FA4C73582A2A583698F30319F0E69A334C1
          3197C14B8F4FCE0FB1DE50F86A1743286C04E26EE719EFCC36B9377CBD4C25F6
          76B1119878CC1A300B1F9301E2D86F31F194631045A73D5E86B407456A1C908C
          E0288D0038E440A7F5B532C6A907E31963D2D33114231D6398520960102839E9
          38FE9B89E5098EC1D8F80A68A3BDBDBD9AF43C8693A5F9458167386C61DF0EAD
          44A650108DEA8867721252E3A0D0C2432C54A524D779488C722597B4B5D1AFE4
          B2B6F738A871F18069D7513F9714A38FAC5DA1CD9A399E40D68FC3DFD318D88B
          F0EFB60C093C0D0647605F064E7DC8162F301D211064FD4700095908CF91DF1C
          F299C73581F5F2B847913951364F475FD6FB30681ACD5B40DB6EC1817EAFADAD
          ED0DCAB1348654CE68D2176B74E67900CFB71CBF803707A95393ED4563CE8074
          8536DFC4686B6447735D562BF4CFC2C4A693542E2DA34D6AA1FD8F91BEA5DC3F
          D0D657286F4F0C29BD47CF479DA97959AF508FDDD463370EE82664637EBEDB60
          32943B2F26D1673311F8D8C7189BD7379C48B65169766E4C1C91184A7CA01936
          273EEE9913F6ECD106A5388A83E82B8D948550AFB8F16F98B3441B686193428E
          0174D80207513F668FF63B59EE64C8DAD8F8E207E15C7C87F6121A45578FC951
          D46226FA78203D66A3F47A9F7426F646A174FA8056668BCE6864A9607C1FB16C
          289FF479FCDF1662288C65B332A62DB42F737773D8EC8859942B5B606234FEAB
          7286056138975D75521FB814B61CED8D56F20BE1C5AA1BD703EF62E85C72AFA3
          619BC31401EB4802C08691A538CA943D26C222433B0AD86AB106033B72AEB540
          0260D5C18E839DA9D5510E769E3EB0233E4C16EC4CF4AE38093F9707E9DC76D3
          BB35215F4ACD26672F5DBAB4E8B9E79E2BC1792FD3C88A46099446C7F776298F
          A304657154C5F67709E1648991000B372849009ED2D1BB7BBB24F77729326024
          16288E1B329070CF467AD1A8D8EA44A3F12B95EDED325690D8D3257D7762FEB0
          1D13863AB9BF4BF8526931F0F6E532351E567087DF77E49092C71DF830A0B00C
          14FF30CA27CCABD1D7338061A6BEBE5E5FF5B5725A899C5B52184D219FB009E7
          D8F8DC95926432B061FC88A34DD955DA925F2EC7E2D2D50A05895F2B43C89DF2
          11E091E116DF52713F1C1BB54ADD0D4BCBFECE3D2663F027BA667AE8490435F7
          A3F4F884F30100CA0DCDD710E0E1F411F87A0CBEB66048B40C71E81332BA32B6
          D217EA93023B3AA6C757D10A4924C3A46B4A32261ACD54189740A98D74A6E29C
          9D38D72043FE639AE3C3EF6771085F8D606707CF55CEC4050A26E2A3BEE4C3C3
          26ADCE46FA5FF4E9D718EADB0571952991F411FC5B8BF3BB4B4B51777575BD18
          F72CAA98CEF2EA4B36EDD381837D9AB27EAFC52AE0FF49CE5FD657757DF5B676
          4DEA7EF54FFADD169CCE77A9C31ECABE19A747ABB0CD78406A94FCBE92DB9713
          A174C97D77C612C03C93F89D0DD54DDE9BBA3BEF2F2CFD1C47C215461756A62B
          B8BBB080857C0D696115E4470EFCA885FAA6134BDD278097EDD965A323D955D5
          A2BE1660C88205FAAFE62C29E477B0B5B535AC88A7FE289B42BF0F0B99704F1A
          1928D27C43CDC3E39C3E50D87E47DA74271941704F48DD6862319A44385D72B4
          A978F4EEB603D930BB183D909DDF19F5B4AD44690BCF64E754C6C553C226B05C
          B3F941D9B940C6C704B0B1D5E786E3A8DC50BC6730460A64F73DB273A9184227
          7BA73EA051392D42820E1A401F0D5DB87041F64E6032F82872C269B7CC046027
          3301D8C94C0476ECFA64C08E1C7C073B0E76A6841CECE40FECD4D5D585A59735
          0F23AE06A5E575B393E9E304FBECE4FB641A1DDFF3A5208E98D8FFD98DE44613
          7BBBC821D63D9A94AFFD5D52E35FCE0A50FEDAECAE54B1D4F0610EF7C800D8DE
          2EA5B61A4F6A7C927E98C89A1CC1498686A5129359E37BD3999CC9ADA6E81393
          5DC59FF0C52B8293ECD729CD63D172A49437EC6111C3803407435F08C7E8FCA3
          D15909C6397E55CB861E588C7BC2A066E3DB53E3A334165E3614E3D183F1D426
          813AC7BBB5DCF2A8569AEAECECD497C230BCA40D40B56786C2C8787F59043B01
          2052660388F784911958348018E71ED97E1A2509A098BB9160D6A8C65197543E
          BE8ECF16529FC3D1B9463AC7EF06F8A98D324FF37F7B7575F50DCEDDD45769DA
          3B7CE99431B0A5616D752E4B66309444A613EC6345CE1C8D704E2BC8F15C1DD7
          36E344BF8E717F13C3B69567E6E49B370FC343F8A1D5CC0EA2BFFE525353F329
          7DB25DCE277D664C7A366E98BB987EB11627E64540C30ED2764DF68FA3BE5356
          3EE973F5615237BCEE44579C43CFFFA0511DCA7D96B6B84C59FB92A31FA6B3A3
          6ED24869354ECEAEEEEEEE0F70BC76A28396C50F1AF966FF134149272C7EA8B2
          B0AE6C285D621429BB025DE1DD95D4CC691F881FA8FAA3F36E0B32840D8875DE
          565653189DC27EB5AA1AFD570B8084D02F7D60501897E62C017AD3C86B21FD5D
          110361AFA318EA268FDB74AEADA8698B371426404D91D9D3545C4ADF3ED2E943
          A2E636D2AF0B91739B0F6AF994E8C31E65D15C477D240B6175F6E1CBDE67D100
          49C010ED9AAD12980546F19CCDABB20F82D979A3C6EF081A872CD44E23703189
          A77728D31D7DDCA3FC5A867B501FF7D081D979A89437F04FC02B86F85908DC58
          1C551B8B4B825B689FCD89CA2EE41093CD3B1B89D7C233CA5F322350A1511D2D
          D240BF73B0E360E7F193839D19017634393E4CCAE77A8939C8511997C6C9FAD9
          F024738AA5A835415D8AD5FE4F8EA8D8A881859369685F93CCE37C02BDB34843
          FB52C07484ACA3ADF03129E782B8B74BEC90698BCD8FF5B5CDE5B25FA712935C
          0D648CE5C43567E39B53717F17DE39186398C3844D192E2D7B4C7907B5420E86
          6B04251CBE7649390232C6E097C221D228A8C218931DCA1FCB1DC20F12C0CB46
          2CEE9990AF36B01585122319198BDD96D32A4587B3532803A6103CF152CB548B
          673A2AAE3F3A6F065A8A13E1634549A3998C3B8F236136813FB98F4576A42795
          D883C3CA9A9C57E0F468A449DAC87B17B2D4466AD1BC1364A919B07316193F8F
          A16F47E6C614B2960B76925F2793464C94ECFFC9B91F226B3BF9313CB396DFAF
          205BAF6BF23E8675ADE427DF7C7918122F003B47D1A11FA3C33E01503451EF2E
          7837A895D9E42C4470A0D0B515F06817757F933EB515E0A03D8CA6CCD6E1140C
          519E1F69B7667E37D24F1B3836D1E697E07D27EFEDCBED4766DFE480F2AF360F
          5D8BEED983D3F136C7CDD4619E8DE8394D8ECCA1B3DF3994B505662BEC635462
          6427B94CF750E2E394AD1C19467D34EAA13030FDAFFD7AD0D73ADAC8480801D3
          3DDA0C597B1E91C6E8CF69F5DDA40C168C2FD2901CF1CAAEF266235BA944F8B3
          8D48C5303D7D1CD34792D1AB57AF661446A70F8F922785C3E9285B85BF61FB1D
          09FCC8BE6B254BCD5DD2D2FD61E9EFF4F87E47B6D1ACED5B6676DC3E765AB85D
          36CC2E7577E9FD74EAAE4DBB67B438F171712C86D265E76691F7B03E2C02D446
          6C810B5B8C21F2301BEE28FE47B022FEEBDA606251862C90B5C51A6C74298640
          0E44301BCE69710BDE35803E1C70B0E360674AE969043B9A98AFA478FB24D891
          831BF3B7D55CB27BB9D868849D4BECE172CF350B2D8BBFB3E7F5E527BEC70084
          46094A7018E6E068CDA5B36962BE46576CDF038D0284499CA3E3AB3BDD337933
          31C252920037162295053A31D952CC457114C82699CBF94A9BA24F8DC7436757
          AD498D6F64975D5E330EA56737778B6165C9BD5EEE59752CE70B5E728F179BB0
          A9D49F043B9AB029B0A3393374FA113A7CA6ADAD2DC887DAAAA6A646E177C51C
          8B4B15D00CCF6430C843E141211CC14654E264FC309A12CF9565EE2E736C5FEB
          2C3C213939DF00A28525655775B378EE82710B6EF1DAD963EAAEB1B9EFFF997B
          F786499EFF57A5F0807014A78727736824A35A9D0BE7E73200FA0CBAE0044D7A
          0AE37611A7FD3AFA4221320A831A8B5F37CD094AE693B22FAD313E7F42309A18
          919BCBFD5B90A3D771C876020CB662D8355F67C62F4E90CB43FA5F0BBAEB207D
          F10BC0C551EA709EFAF4CA6151388AE63EA5C657E39A0FBD081FF7F0DC2B9C57
          789B96DB2E8D5FBE1F1AC02747D8D277573D549894E64469E4AE053D7F927414
          7D721ABDD2AE2FD90A114ADAAB4C5C79ADE0EEB2EDD55CDF88C3F70A0EEB6BE8
          9F6D38CFCB9F8410C3994839531503E5CEB34CDD5D3A3AF93B3B3F27F7FFC46F
          D1581298C4B93C59BB65CE7A62DE4A76A352B34D1602567877F9EFA1783E1BF6
          ACD1248D2CA5E35E47764EF64A234B1C6F2B0C4C7B1CE1AC07D023BB9F743835
          C70F7B9FAEADAD2DD43CD504D8B1A880320B1F4FDD9D7BA98F20D910E818069E
          5DA0C7E624C50F6861B96FA5F8F133BB925DE2635A713C66E7941A10B539B099
          71CAAE5867233089F0F091F4DDFD90B273840AEFEE0D95DCF0D5C2EC06A2CD0F
          61749197613F37746C587D147D7807FEDDC1D6F76B745D6591CE4DEE77A4051A
          E2220D164677CF3E47360AA6F3B6E791DD5398D8E7C8EE89F986FE6F6043BA41
          23FB5AA841C0CBC1CE14E906073B530776647CD5D8F67E4DCECF013B0AF32A89
          21635900218090041036015F4EB039C5897916E1EB4B7CA6D0C2CF6C12BBC2C8
          C6EE2E93A95182122DC589B350AE393302357AB7BEEE6864257577E96029B5DC
          A57993CB066765C7462BC29FE8D8A5B25BBB8C65124E998E612F82C2B86CA694
          B9F62041F184FD5D46C63D341B89095FC81446060F4328198A2A1D27959AE24C
          9B42B1F0B25462918082BB4B9C860998B63840FC1D94AB26BC4A816A0772ED04
          8E02D40EED61A51DD59D77172AFC0ED9511859984314E3AE43F85D6ADC5094C5
          364C829D52033BF19AB56949E268F1D9D9A59453E35FD0EE9133A7D94152F6C8
          F32D64F932CE7813F2771EF1BF4CEAE0F26DAD92C4F96090B9772821D336A15A
          FD6A48615124ADEA75676C7C13D840491D15C1CE229E7999FFF72AB40BA0F33C
          86BD667406EFB1733F4277B603747E58B264C9216D364AFD4ED04FAFC9406B09
          DBA42DE3DEE5F4D74DF053A3241BD1C5CFD19F97C0E76A74FF82088C1EAADD62
          78D22DAD7047FB5C471774C2DB4EDAF02AE72E694102EDB124302B47CD6C8092
          851AFEFFECDDF9B75C577137FCBE1AADC9B66C4B966579C26033D8C6660AD824
          0492907922F0643DCFF343FE8D77BDFFCFBB2064201399982190803106633C60
          039E0734A0C9D62CBDF5393AD5DA3A3E7D75FBEADEEEBE57BBD63AABFB0E7D7A
          9FBD6B57D5B7AA76557A7429FEF8ACF2E1EF387AF4E88301703EAA24785CB7C4
          FF4FF49C51A5CBA7F25C486160DA808DBE1BB47D6ED65EE86D54829C131D07DD
          10DCB445198EAFB9D0F3886CF0DA54530B80DC54545364808E93FA854FDB12F8
          D2E8CEEA7914BCC9C998E77ACA2AA2C35601799672D0466CCE9EAF8A9AE9E06B
          3272C3608FFF51EAFB5C7CEF5CC894A64D00475F9BE9B0BEB877038E9CFBD4EB
          28C6E60C685309AF0556D2FB9A26C9736DA3E4D686C833B529FBE63A0E876134
          ACCDF2288B0135FDA5CE5D2804D4942E2737133C023E317E20E7583CC30969EB
          D6CA14B5E97359A0E14C5B123C7B20957D8E2E3A2796D1A8FCB93813D6FC4C9E
          17E7C994503F0750D0EFC086E6AECF3FFFFCE0F0E1C3CD33FA5B053B4BB8472B
          D8994C6407D011D911568EC5573D6978F5F477690EE3B711813C73C1C0CECA64
          79003D232D6F89B6003D6503CC1468482A5930DDB0B7CBB9A68A7143D9B9F96C
          2144F24CCAD9368C3E2C953C777167EEE1D57AA89A907F7CE78916B89C6CF39E
          BD1E134991BB2B879787459335F9BB0178121029C1DCE4E8C69C39A4CFB3BB56
          FA1B8F9474BB417BC093801D9C2F239A87354B219E695D6B5368B7427C7888B3
          054FAA9C29CFBB368C8FF5710DBD55E6CA9C490B90B25646B1061742FE6BCF15
          3D5DDAD78BFE569C27BAA8C74BFBBF99D632BC92FF6B7465F55071F6E68D78FD
          55FCFCABE029296EFB9CF90805F32BE75382D70EC7EFDE68D367CE9DFF6893F2
          44910339AFC4F57CFC0E486A6C027287514DF6A49C8ABF5F17D747E2FD6FC7DE
          FA702877518EED22BFD39E8B7129E4F8A19D3B773E1B72E0E130E4BE11CFF0DF
          61EC3DAF9293D2B565B4C699C030F4AEBFFAEAAB6F8E79BE3BFEF75DED799E3B
          C33093D6763D8FF442BE9791136B7234AEC371ED93B216D7CF43263C1BF77D29
          C0C9EB31E70780A0F8DE5F85BC6FAA4D590F87A063CE9BAA7A59A485C73DEE73
          4D8CF7F6F8FDFB42EEFD4680B65F8BF7CEE96CE1319FF65C571A9F4A03AF4C27
          2DE4F7B09C74F13AEC79D4B932EDAE4C61CBC2388D9E153494CA260D2CF6FDB0
          99686B70AB58A76DC1E9B26D41FB7D4DB5B635E74B5CA78E3F5BA6ECA5B371D0
          82B422B5AF39630A3404DF379910D2E802F0C82259D316B2614BA46E5511684D
          F0BBAA9E9CAC9B95003F77BE654173DE7470DE6108F834368FF745242953E053
          8F9765C11BF036E814C269CF102750CB6AAA83D62934EC2B65FEB4793077DE17
          C0655835B02CED5D5E454469D8EFA84DAD3B5514671816B80058F5B303565BF0
          DA38B4145F3973BE5FD43955E96A6467F9E88A003B004E3693145941BC6D2DD8
          599BFD5BCE5EE8EF9287EED7B407F2CBBF95CDC386BD5FDAD4B361AF97ECEF62
          F36DDDBA55AF92B57165551600475596CD6D7F8CA62CE5E07C3AD410CC0CCE1B
          F0C3B2CB65C467D04600CE5E281E90657B8786B5F1B4559AB2FA55536DAC14BA
          96E1CC05CAC6709927DBBCCADC2234636388820C2BE1B4FF93BD00866067EE7C
          359BD36DBE6C597A3241D071DE29556D2C85DC59DE2967651807998E17EBD344
          6EC28058B37BF7EE7561E46C904626DF58283E9E6B984616EF379F2D9A7EB6E0
          31232B1BDBF7196A4F61BA31856A7B687438BF672E94B04E60333C77937B67E2
          1BA7D2AAA316FC48A53C2CC52DF6D881607107DD0FF1DEB6608715BFA6CDC7E7
          5DDC1BD713F13F3F88EB59464CCABC6C509A87DFE36F3738BF123CFC49602780
          CEDB63BF6D5B89602764E79BD75F7FFD8B21CF1DFCFF5A3CC3D7435EFC149890
          739F25BA114041D6C7FF6F0678620EEE0A997F77FCEF3B620EA4F1ED88B9D9DA
          94663C7F367098EAD946CF9A883463282E87D145740E87B1F64B63887B3F1B6B
          F64CFCEDE5B8DFAFE27216B0311038B77C3F850FE43853C48069C7E5FCDDD5F1
          B5B7877EB82FC6FDC130743E10D7BB42A6D5884EA57168986AB7E642CFB5ACA2
          96A59F2FEA759491A5366294C67856593B9E518F36AAD454536B7F3FECD39305
          06F4650B23F944809DD3070F1E643F34BD8D320D2C332EFC8E0D147ABCB17F50
          8C39ABAB0EB31F0617004F5938675D7B5E685DE1406C9C9A325D1466C88A94AD
          5DB4A1CD86199E231EB45558459744B71AAF6EEB641CB465C70B4030AC06B8E6
          42FFA3B2CF519EA1CAEAAC59867BF8BAE6E2BE76C34244E675CDF9C21759A841
          4AE21B31C6E3A24B2FBDF4D2E9D75E7BED4C3C4FE35C8EBF99CBA630439B0637
          EC6D54F6312AFE36EC7354FC2DC75FFEDC5C9681BCA22B388CA4D1892C55B0B3
          84340DB003E8B8947BC5DCC1501BE3EF00C4C60413995254A42325C828CFA694
          FD5DCA3E2FC332C752C832EDCC86121988CDAEC70B63BD3928D86EF46CC09887
          F31B9A3B5F6F5FB838414A73A627EED9E40867C83C53B4066DCA58B1099B0DDB
          4648869EA2C1F94ED4AE6399BFEA551530F5F6C3703825956BD036A5F4BF3674
          08A83337DC70C35973A731276F4D9B06B3B63D0C39CCC7CD752DF8EA5C1BA548
          C1DC8C2D37ADF189E684D217123F17EB92D5E0A491359E9CD87452C9D6AB6813
          B421A35F0912DB6A364330D382C58B2A8F955EA2F40C25904C90D30AD28BAA59
          256F55AAB49CD4965BE5353D02E430265A05D9ECEFC17970BDB655822F8541FD
          9DD8135F71768503824C6C8B5B3469104551921DF1998F061FFF5EEC2D60E76D
          F17F2BF2F07BC8D05321CB5F0B39F0A390A35F89FDFA9F7A176553568E922C73
          2F558CBC52623F3EA3F2E3AEF8FBEE90338A015CE750CF4D37DDE4ECE2FA004E
          EB53E6B65FD5A4BCC67C496B3DF9F2CB2F2B82C003FB66CCF7E11B6FBC715F7C
          EEB5002EAF4A25CCD2E1BE1B3112E2F6CD9A8AB4013B00D9DCF9A6B1BBE2FBDE
          1672F6BDF199F71F3870E03E8D4335419DF6FC565AB954D80417956B1E9CB703
          86C51932BDAA38E772D1CFC5EFD25199675E4FB52960C7DB26B0279C7105F215
          68105D8AEF3A5DA672250053A821785E2ADD5CEC198DAA1B3327B32D066DEADC
          79D3E7BCBFA17536A4733653791BA021DBC39F8182D85B6BF6EDDB371732AD01
          406D4A5CD952419ADC3A91A5901FFA1D356974A24AB265E27E9CCF57B5A97759
          09AFCCFA483B67D832A18D14ADCD796F8BC80CED9C7494E439E4CC54C9B4BAB9
          A2E7901E7BB25D146AD05F2FE4C0E9B68C3A27F39936B2343CBF9C29727E9F6B
          99D1A88C40B5AF27D65E281B7E51A9F04C898C39D1F388CDD744C6A5D13DF7DC
          7315EC2C257DEA539F6A5EE7033B67CE571C9B2BC0CE5C07ECCC75C0CE5C098A
          440552E187613077EBADB7AEBFFDF6DB37EAA41CBFDAD276819746B6B9F5F08F
          ECEFD2A6886D2C0CE68DAD913CECF9521CE45B577816D2885E9B602601CCE042
          A4654D9BBE74AE0D230F3D096B2F94753C938CDD0AA2E101FD36652C43CC275B
          861E0AB222BAE2F5587B60AFF1CCA8751FEF8FC5063BB177EFDE932A90112067
          CE374F3B9B1DA981C5DDBB772B7F4C68000F4D4597166C88AC94CD2533A56E08
          345A70715147EAA22258936EA7AF8B33322DD0D9D0A6E135E065CDF9DE38E995
          992B52C2D61673B9B698CFB2874BF95AF67929CB54BFE510EB8834844A959685
          4ACF629E2F2BCEEB2435877B4369BF107BF14B7BF6ECF97BE598455D29AC309C
          9B83AE5ED3F08E3DDE809DE0E1DF6B233B2B16EC388310B25C69E7C7E2B9BE14
          BFFAF7788EC7ED4FA002E001F8CC05A0416E013C8087A90850B1299E7FA35E55
          A10BD6DF7FFFFDEBDFFEF6B76FD0F4918C69E5C9B974F430E47EFEF39F9FFAE1
          0F7F78FAE9A79F3EA33C2EE32040D2C9B8EF8918078751631C0033AE2C1FEEBB
          7DAFB1893A852143E6DC18F2F39DF1FDF7C7384573DE1B7FBB950E5A8967A82A
          CD16957AABD45FF99AC54DE68ABE46830BFD8E32C5ABEC73545686CBB3AFC30A
          A8A82DC0A1A16B93D5D11AE1E5D994D3595D4D5A5DF6EF5953B46548C0D51AEA
          D940B6A97697696073E7FBF43451111111AF417AD2A946A711761399D5E328FE
          3ED79EFF69CEFAF85DECC53537DC70C3BA6BAFBDF6AAF8994DB745768874BAF8
          9FCDF1FF5964A83C77CB319AA975C3A6D8AD7374439B519376DEDAD2C669B36A
          1238A57DB266D0F6412BE6F66C82237379B6ED77B4F6AD8D5CCB421759712E23
          761715BB68814E16B7389E67C08A089DD737DA12EA6FC43845E88EFFE217BF38
          F9E28B2F4AEB1B9E19CA7E4725A0EB009D7305D83957829DD619DF0B76BEF085
          2F4C7E7F4CC390FBCC673EB3A6DD807960AE3178F3B07DCB4CC3F30C6DA4E42D
          5727E52CD3D19AFE2F9A23B60DD9D6C62653856CFD8D37DEB8310C8586C1DB8A
          244D7F9273E74B2E3675EF07176ADF975DDECB319525852FEAEBD2739D2B009D
          F7C3F29179D9D09937EAA03EF4DFFEED747BA0F15430E4A9D8AC4D194B87E732
          CDA265A432E7F7749BE692919C7C2D9BA539477332F34C791502EC9C51CD8507
          320C8661EA9BE2069E93A0307FBCA00E19B669644D63B456586C2A04C5F0CC51
          5BD16DF8FBB36FAD429607F9B3CF4B96BB5C9FA97909862BE0A854E93C85D1BF
          EFD65B6FFD6218EA9F0DC0F355110F06B7F2A53C74F2AF19FE2814CC8E11696C
          D37E8CC53CF7D99045FBE2F5C72107FF337EF56FF15C1A76360E2F4ADA3C6464
          4709EF3CE40B0065E35620E4DE7BEF1D3CF4D043837BEEB907201245CF03DA83
          16EC9C011A9F78E289C1B7BFFDEDC1F7BFFFFD666E29733DCA42160EA337E612
          C8F2FFA26AC60364B9E2BE1BE27BAF0FD97A438CEFCEB8F73D31563D8FDE1DBF
          BF23D669CBB4E7B552A5CBA13468DBB32059D63B0DF3A1E1DE3A60CBE6DAA7E6
          2E549F7B8B91DEFE6D68A0C7D544BCDBB3BEC75415D0843BF6E5E9D87F0D006B
          9B289F6D7BF09CCDDFC55E3D1B7B76EE9A6BAE59ABF7101B44754660261EA129
          ACD0DA7C173569CDF3BE83F3119F35E7DA3E47F133FBA829CC107B592ADDFAB6
          40C3B06A5D5B2CAAB16B82D627B58E9521781AB4E77EE7DA4AB54501866C9A3A
          2C513E684152E1143F974EF12283E7746BE70D5B6E14E7A6BD36C707A44F6B68
          1ECFD9146908E0683E4FB55942CAA567B18BBC7F339FF9739B2E372CEAD01673
          183AE8F36C9AB50776E36ACE93E199BFFDDBBF7D73E27C3A25B073835740A33D
          94DF445094406E0DE2D2081EA693B551963C909FA96589AC2F3A67A1BF8B6B70
          3E5F736D283D95C8D6AB069239A12DC819325986515BAF4876E63D57D0D9CC7D
          2C16331B480EDF1707FC9A7C4DA9DF71013227DAF0E59BED613595948EA942A6
          F4A14B37E8411BAE45182736E8995DBB769DD35C524A97E7CEEEF68336F49A85
          0606E773FBB3D3FD70830EDA148D1684E53336D1B03000E662C30A056719C98C
          B83473AC808A3E2FBEDBA66DE73DA336CD180A70380C1F970026FFD67A38DE12
          E16905C8A01D63D95BA7F679A954A920B2E3F6DB6FFFD7BBEEBAEBFF0BD0F39F
          DBB66D5399A989EA24D829223BD7876CFA7051A0E0EEA3478FAA02B6E20EC187
          FC49B0D34476423E0CC14EE971CCC6AB404E467DCC0720429628257FDF7DF70D
          1E7CF0C1C1BBDFFDEE042583422E36FF2722F3E4934F0EBEF39DEF346047896B
          FFE3FF811D67828029BF0376388BB29292BFC7FF31726E8E397F67ACCB3BE37F
          DE15B2F6AE18CFADF1BA53D5B52ADB2AAD06CA3DB8A62D2B5D166A282AA50E2B
          A116919D2C7434740227582AFE6F58F068EE4279E95321C39AFE46AEB640C3A9
          D6A03E938DC233DAE4BC318771BC3625FD8DB12DE0725135D7368A752653CF8A
          DF655A7FF31DEE1D32E54CEC6B6D2A3476E5246E0A3FAD69FBEE65B12214DFAB
          1E7E530D37FEA769F511FFDFD8BF67CF5775BD6AEE7CBFA3B4A736740B2015E0
          AB39B794765E46B1CE5D68A69EB6531666C89F33C56E5811D7C53E558DCE3106
          052F72DE45E2B267D49A0B4D63BBE97227B3D25C1B853A95A97245EAA3F4ECE3
          406A9B4D04EC3C3B691E9D0AD8F9A33FFAA387BCC6E2690077B590622E7C6B3C
          0F0FACB587CB13EC0C9B589EBDD0BC727D324271507FD8B3A48DC6CCB54C3D0C
          ADB58B9E35F21BF0921D77F3707EE6B85AC076D1B30C6173CD15DD99D373D1E6
          BF368B3D385F894C4F9713EDFB614766A1586007AA0E25784A53419E591ED98C
          06F146CE9D2F5D3DB767CF9EB537DD7493E66080E1262978E6CDA669D3EEF2FC
          CF86320D2F0FFA15D193E121FD04927E9642A6DA5B02C7B2D25BBBE1F26C4EF2
          CD304C3C98A78F4BE7E78BFE7EEEADFD0FDE4235A253A9D2C54479DC76DB6D5F
          BEF3CE3B3F1F60E74B21135E0F657F5664810CF19AE715435E6D0F5954969E7E
          77C81BBD5D565CDA94AA526130ECDDBA756B821D696C3F690B3134C043344771
          00911DBF077232C58C6CF57F223377DF7D77037814AE5150C0EF4B22837D460E
          FB638F3D3678FCF1C7077A6F014E223ACE02014D01349BFF8D399D8B795F17AF
          8D83C741ECB8EFCE987BD5DFEE0FF9AEBFD15D2AC1C53DB6B6FA6BDA535AA9D2
          92D1281D3E82BABD8D0673FDBD8DDEF2BBB90BAD2DCAB3CA69AB656FA393991A
          97365C564BCB732C2DA83A5DF6E6698B0834295F2DB81A166788EF690A34A8A0
          A6DF916A742FBFFCF2E9975E7AE98CF3C6EC9AB6A8C05C118D699C2EE4840872
          C88475ADC37D5361F3369931ED352CAAD4DA6B17D96D452ADDD0A9DF66455DF4
          B7C2E1BCAEB089D329DE9AC3E77B7D25404A309451A3F6EC55DAC5A7335BA8A8
          BA9BFD8E4E156975C3AABB83F3112573DEA41EAA301AF7DC6BADBFF8C52FFED3
          C4F9731A02F7431FFAD0FFE33516E8E658A86B955F6E539E1C1E6BEAC1B7E733
          1A8F7F51FD6CAE2D275896E7CD0738571E82CFF7453AA4BCD2ECA2DB844A1DCC
          0F65E8F54CA68F6554A63DC8DF6C0C39F1DBB76F5702B951A8EDE1F58BFACA64
          14A87D9F63480F41E31968196578DEC6F71857206A1D90D7C4B536C6B3268B1C
          482303E44279AF9542169B65636C2680C4991951AE4D2DD8B9A89F4BFB73563A
          D990B9A7C5E1FC0CB5665EEAFAD60BB1FEDC859E3A8DB1906964952A559A0D22
          A76EBEF9E6EFDC71C71DFFBC7BF7EEAF86F2D5ABE7E8E1C387CF88303830CF51
          8242D65D1DB24653D15F8FBF7D24648C83F1BB3982A6FD1CE352009993612CBC
          1A86C38F42797E39E4D397E3399E4CB003E8002E0C8B2CFD2CD222E292296C0C
          0F919998BFA61580084CCAF4569F34DF45FE014AC0A30A454AB28A9C013BC014
          C0E46ACFE5888A6F0F30733D2079E2C489ED319EEBE2BB6E8ABFDD269A13C0E9
          ED3196DD71CF8D15E454AAB4B49487E8DBB32583B27A5A7136A831C0D75CDC70
          7C087EF26C507B0E3AD3ED1AF0139FCB6A742AC92AD2A04F8F73CE4D1559D125
          8E7225BE43F69C69D3E886295E219BF40AF47A4E8186C1F9C84FA6AFE5D9E3AC
          FA9A1575CB0A9165464E23DBD88ACE02C6D5A4D16589EE4CC91B5C9C71B3BECD
          A0592F3B47555B6717DBB34A8D93DCDFE6CE372F5FDBD69BCA825979ECA43CDF
          3CD7CEF7B9B6BADBB93C7FA4C895B6218E6E986F511FBD0CE33A14DFF9820F3F
          FCF0C3FFEFA479642A60E7D65B6FFD17AFA1A86E577AD9C265B8B38D9A6479BC
          733D67528661B69691CB105B593D64585504C851DE2F3ED7F476D1E322DEBF19
          8AE998A65CD2C77846076DA53000093AF23BDF110AED5C28C7A613B18A1E1823
          FE7655F6C229D2B932C4382C999811A77317F75A59DB82B8E6BC5128432067BD
          328AD2C88A6A6F4DA465EDF9865CEBCEF3E7BAB53D07FDD7B679A5B959DED2F7
          65703ED56D4D771CEDDF2E72C994871AEB01FD4A95668BC8A430B41FDBB367CF
          D776EEDCF9CD900B8F879C78A539B11BC67836B044213BB6C47557C8920F85B1
          FD6028E60F86CCBB531477DACF312E851C7EE3BAEBAE7B3E00CD2321C3BF1E72
          E99BF15CCF26D8D13302D0C92A420976DA0201CDBC308AFC4F8222FFEB77DD82
          2499FEA64581088FCF03927EE77B802460477A6FFCEFCE00987BE2FF6E8FFFD1
          3BE79690E937C51CDF18E3BB3EAEEDF1394EBD8D6DA3D74A952A2D2115D5E7DE
          52A8A1D8DBD97034EDC9B267E0B0F1F8DC5BFB1DE5EF4FB7695CCDEFD98861AF
          35BD8EE2EDA9F66C4AA6729D2A4A81ABAC7632E486DE47A7DB4849661465A650
          B7B7D2A9C185CA6D27DB084A9E6B62CFAA8477468186D75F7F9DB3A5090AB00F
          B3CFD19A0B9467CD9B3E488A4C85DCDA1436E5A6F85B73EEBA4DA5DB9467980A
          9B366DDC3CBA7051C3FB41DBAC7ED0DA9E7966BE2DD0B02EABF6B665BF1596F8
          85B578E185177E77D23C3215B0138AE6A996F9F6B4C85A43B623B11087E3D7C7
          62928E2B6B68B12DB2143255701CD4F7BEAC75DE862287A0A740EDC303706D94
          A6392FD3E60E1E8B853A1ECC72D281AC50FEE79C5B11396A174C996735999BEA
          5D4A26EAF31260478103D11069645BDA4A6E9B8B34B2611832EBC7170D42B39A
          DB86F22AAAB90DABB79561CAA24042A68D55AA54E90A26690661F4FF62D7AE5D
          DFBBFEFAEBBF1372F1BB21DB9E0E3971B8CCD146F2C043BEEA2B736F18EC0FBD
          FAEAAB1F0BC0735F5B76754551E88D5F05C0782A9EFDBBA1A8BF15CFF8BD788E
          973C2F6347D446FA9AA201DEB7D1998DF1DC9B43D6ABBCB9AEED2FD19475553D
          A875A695D90179AE317BA689B0AF51F0A6AD16A99500A797CA4E0AB65C1DDF73
          6380A25B03E4DC11DFA7DADDAD017E76C5FB6BC9FF69CF5BA54A95968FCA220C
          65C5B4FC39CB7AB3655B3B75D87B301B90E6D54692FC5DDA9C9F9B46A42249CE
          6AC6F5A6543AC71F42A69D08A0732AAE33B283E2FFF5346ACE24B9DAEA68C3A8
          8B60820C3AB2EBEAABAFDE107A83F77C5844AACD08DAD04683CAD70DAD033DCF
          8737557339E645945CED110865BE651F35402AFE7753D8D0DB9C117546B1054B
          2F9BB343870EBD6BD2EB3415B01393FD9CD758906BB76CD9F24A80892763F25F
          889F5F8F4939F2AB5FFDEAB8888B4353184915B21D3B76B87CB60120892007ED
          5992C1F930E0F987EA494938DB76CFB5F88C0514CAE95C4CBAC3F96BDA332B17
          9DF7C93E2F0EE8536C2E7D723084620A6543AC649222CFB2BCD6177F1B8299EE
          01FE415B86BA7B40BFA69155AA54298971EEECCA0D37DCF078809DEF86FC14DD
          792414CDDEAC4C96B223FE979B6F5BC8B33B42AE7EF4A5975EFAC3508E0F86FC
          DA3AEDE7189702E4BC72F3CD373FBC73E7CEFF0ABDF13FF18C4F04103990CF9B
          050AB2EB38D91B8A78A73E3652C838A75A2F2BC7DAF1D67B9A056132ED799011
          EFB621E1FA2C45DB16D1015E36C79C6E8A7B7855D9EEBAF8FD0D71ED089D7163
          E8B01BE27BB7662A61A54A95563715E596CBC20C8336EB6818193A77A1E7D1B0
          226FD90727B393E62E34612FABD501474DE357CEFB37DF7CB3298F7FE4C81185
          AD9AFB669FA3F6CA7337C3F3E78A0D88664BC5D53331FE96D5E50645CA5CF363
          3E5B7B3CA3710A65F53567DD45BAF7EEDD3B17D7BA00348D5D7BCD35D76CBCED
          B6DB36EDD9B327B0D4A66DA1737686CEB9F5B5D75E7B77FCCFCD21AF0FB967D8
          DE774E7A8DA6027602343CE15583A950D83FBEF1C61BBF1DAF4FC6C4BF128AE9
          B81CE9E79E7BEE9CC96C15FBB998BCB950741A4B021557B53D72F270D7C622A5
          6C581BBD68109A87F29BFCC80CC165C5B6B602D9FAECEBD2960D1C567C8BA136
          A9643C7A6282ED9996619F97736FEDE7327C3D57F47419747ABD740EEEBF85CA
          74B24A952A554A0A857574FBF6EDBF0800F0FDB8BE1C4AE69B9A8D52BA65EFB2
          C1F9E6C41C393B0E1E3CF860289E4F85E2F99D30C6774CFB19C6210A78C78E1D
          4FDE7AEBAD5FBFE9A69BBE1EBAE3D1908B2F85FC3E96BDD6925AC3839C073AEE
          8AE77E208C8277C61C5CC35008B0734055A0B65B7C9ED1EC829D757916320F12
          7B8D7B28A6B32DBE57611DFD8A3667619D3C2BD9EA9C2AB72B55BA42A84C97CB
          9FCBD7A4B6A042B7C7D1F077E5EF07EDB18AFCFDDC853E474D2A1EC071E63C9D
          6ECF9767FA5CF6333A55166448D05494813E9395ED8A32E0DDA32027DBE852D3
          043533A3E2FB8E6B26AB3883F38C61B73776EEEEDDBBE73EF8C10F0E1E78E081
          B9D04B1B43D7EC7EFCF1C7DFFDD39FFEF4D70314DD1B00AD118A218FDF33F135
          9A8640BEFEFAEB1FF11A0AFAF8AE5DBBBE7BCB2DB77C25000FB07370DFBE7D1B
          6262AE89EBEA408542616BA0D0F8BFB5F13F4D35B216EC68FD9ABD5EAE2A7BBA
          643A99548DB697CE30CAD2E61E66B86E58A5ACCD331C56796BCFC4ACAD7D5E2A
          55AA346B4459852CDC1B0AE5D1908D5FDCB973E7BF899833F49D2B1155C8F321
          142E5978E4C8910FBDFAEAAB9FFEE52F7FF907F1FE36D1EB9520D7DA8A4627E3
          19BFAFBF503CEF57E2D99DD53918CF7A26C14E79BE303EA3BCF6DBDE78E38DF7
          EDDFBFFFC150CCF7023B1478CCDD41A92059B1A9F5BC360647FBF9043B0D8031
          77A94B801B51B1E3C78F6F0D1D74558DBA57AA54699A941125E96A5929AD3D1E
          72A648A3CB685156103E91A0A64D9F1B166368E562D98014D85194217BF3003B
          AA08376974A153CE1E3D7A14D83973C71D771CFDCDDFFCCD7D1FFDE847F786BC
          3EF9F2CB2FEF7CF8E187EF7FECB1C73E19FFF76BF17F4D5A6FD8F6EF9FF43C4D
          0BEC3CECF5DA6BAF7DF3A69B6E0276BE1640E639398601766E7AFAE9A7EF8CEB
          B69890EBE2DFA4919DDBB66D9BAA64DE372961ED19978CE40CAB4E646E61992E
          D61ED42F0FF3979530327D6CAE54989D14B889CF51A54A952A8D2201668A67FB
          F6ED4FDC7CF3CDFF18D717429EFEA4043B9946052CB4D57BEE0DC3FF8F43C6FE
          9E9CE9F8797BDB7879A64975A30072AFDF70C30DFFB57BF7EE7F8AD76F6CDAB4
          E997CA9B7AC632B2D3A6EF4945D6CBE6FD870F1FFE703CEF87957D1695699BDC
          1D6B957FE9291D467606E753A2D79CBBB82758EA94265320BFB752A54A95A64D
          0978509946D7BE1F9E6F1FB467DD07E7CB420F8B22149588B3B7D1B0FD4AA772
          5D132D8ACF9F943AA7374F809EB36D03FA5301765EFDC4273EF1D8AFFFFAAFFF
          28C0CEAB0176B67DEF7BDFBBFF473FFAD1EFBFF2CA2B1F8EFF17C0B8F2C0CED5
          575FFDE6AE5DBB1ED9B367CF776262F62A931A8AE99DCF3CF3CCFB9E7DF6D97B
          62426E8C7F5BDF36F15C737E1DE7BABD5BDED2E7A5F8DD7C3F2F885682E7B352
          A54A571EB529BE3F0BF9F9C55B6EB9E5EFC955A906A74F9F3E9BC67879F62F14
          D2EDA16C3E7AF0E0C18F07E8F940BCDE198067CBB49F633E72F646042B40DD93
          0172BE19CFF8A56DDBB67D5F55CD6E69FC4C19118509A0F3DE00749F081DF250
          3CEB7BE2FDCD6DCF3054F6F6C89FDF32BD85BE285F6B85CA4A952ACD1C5DAACF
          51597172D0D3DBA8E7E7DEFE47F9737B0EFECCD9F3246870F2F6DB6FFF45009D
          AF3EF4D0435F0A9BFEC90038EB1E79E491FB7EFCE31FFFEEABAFBEFAC137DE78
          E3CA8CEC003B37DE78E30F6EBEF9E6EFEDD8B1430DEE1D0176EE0FB0F3919FFD
          EC67F2AC3754A552A952A54AFDB479F3E65FDE74D34DDF50CE3FC0C0FF5C75D5
          55AF87CC3CDC364C1E46A6DBF7D705E079C79123473EBC77EFDEDFF8E52F7FF9
          6B40C02CCBD878BE37AFBBEEBAC7152508C0F3EDAD5BB73EBA7EFD7AE97AC32E
          E839FE6C0C1ACF784D00B95F8FE7FB93003AFA0BED0925BBE20A3254AA54A9D2
          4A21606AF7EEDD0702EC7C31C0CE3F846DFF68009C733FF8C10FEE7DFCF1C73F
          F9DA6BAF7D20E470D3F2E04A063B0F87A23E1C60E7C650500FB460E7FE360FB0
          52A54A952AF5D0860D1B8E0610782C00CFB776ECD8F19D6DDBB63D1EBF7BB13D
          743F2C54D09EDF91D67BED9B6FBEF99E00011F0F45F4C9787DE0C4891333591E
          79E3C68DA7AEB9E69A9FE92514D797435FFC209EEDD578AE37BB552B295A51A0
          A039E59FF7EDDBF73BAFBCF2CA9F49618BE75331ADEA924A952A555A460A1D74
          E4631FFBD8BF04E0F982ACAD0038C0CE3D15EC74C0CEDAB56B819DF7FEF4A73F
          FD50809DFB42696D9AF8E02A55AA546985D0FAF5EB4F841C7D2594CC8F03107C
          3B64EBD702F0FC48C76A7F97CE9667785A9A8B9F6F56992D64EDEF0718F8A8E8
          8E622FD37E969294878EE77A49018678B6AFC4EB77366FDEFC73F9E3009C6702
          E032B203EC84FE70CE6647E88D07E2D97E3BC0CE2743A9BEA7ED5156A952A54A
          959691424E1FF8CDDFFCCD7F0DB0F38F37DD74D30F5E7FFDF50A76BC76C0CE91
          50563B4349DDFFF4D34F033BF71E3B766CA61470A54A952ACD1239CF18C0E0E8
          35D75CF352C8D2E1017EA5A9C976A020AF0405AA511E3F7EFCDD52BDF6EFDFFF
          B1003CF71D3E7CF876D5D9A6FD3CC8799C789E9F869EF8415CFF1DEF1F8EE7F9
          992896F1036E31FEE6F25C6D3F2173B13D9EEDBE50A89E4BA9D3F7C5FB1BA6FD
          3C952A55AA7425D0F6EDDB819D7F0BB0F30FA18B2AD8596064474DEECD131F5C
          A54A952AAD200278366DDA7468E7CE9D2A5BF2A8FDFBB66DDB9E8F3F9D4BA003
          202428680B16687EF9EE43870E7D3064EE830178DE77F4E8D13DF1FB05176F59
          4A6AAB06E900FEC6D6AD5BF50FFA9EF4B5003A8FC4B3FD2274C39BFECFD83D4B
          284DD5E54AB0A34DC03D274E9CF878FCFEE301DE00384DECD65FEED82A55AA54
          A9D2A529C0CEFE8F7FFCE30DD8093DF468053BA3C1CECE0ED899E94A41952A55
          AA340BB46EDDBAD301109ED8B367CF97429E023B8F0708DA7FFAF4E9536565B6
          2C4B1AD7C6F8FD8D216335DDFCF0FEFDFB3F12AFEF090004045D35E1B1EBE67D
          24AE7D01745E8CB1FF4434E7DA6BAFFDFEE6CD9B9FD1C8AE8C521D3B76ACB944
          76DA333B8A0FEC8C9F3F12CAF4930A30C4DF6FD178BA9687AE54A952A5C950E8
          A07D6D64E71F2BD81954B053A952A54A4B4D214F5FDFB973E723BB76EDFA46BC
          FF6E80842743BEFF3265BCD7AC58968D4603F0DC20C273F4E8D10F1C3A744839
          EA7BE3F58EB66FC2B2938E025BB66C391CC0E6F900384FC5EB63F1F363017C9E
          59BF7EFD4BF10C47E2B5193B801363D37D7B1040A689E80450DA10F7B8535427
          14E94331FE87E27FDEA9F16759A9AD52A54A952A2D2F55B0D3A10A762A55AA54
          69692900C2B1000C2F84C2F95180866F6DDDBAF55B01169E50992DFF271BCF65
          A5360D98E3C71B031CDC1D80E7FE03070E7C2814D1BDA1946E02869CEF896B49
          52DBB2F15DD1A8EEF8C68D1B0FC6385F8DF13E1D7AE1B118FB239B376F7E3AFE
          FD40002E4DEF142B68405A8C6FB077EF5E8AB249650B10B43EFEA674F6FB03FC
          3C78E4C81160EDEE78DDB95463AE54A952A54A0BA30A763A54C14EA54A952A2D
          2DAD5BB7EE5C009EC352C142C6AACCF61FDBB66DFB6EC8D5BD21E74F654A5729
          F3DB83FD4A52DF188041D3D1F70458B8E7D8B163EF886B4FC8E09B42415D77B9
          E960404E002FD7B1002807629CAFC5EBAB81575E8971BF183F3F1780E76731E6
          67366DDAB44FA53567728C357E6E52DD9CD3098539084026AA03E8EC89CFBF27
          C6FD508CF92331F6B7C7FFEC88716F98F65A54AA54A9D2954615EC74A8829D4A
          952A555A5A6A818BEA6C87439E3EBA6BD7AEAF6EDFBEFDBFE2E79F4A670B0071
          3A9B8C96E777DA68CF8678BF3540CDCE93274FDE21B50DE8397CF8F0BBE2BA35
          64F1F5A74E9D5A1488F01D014A8E3B97B365CB967D21F75F546D2DDE3F1D7F7B
          2EEEFB4A7CEFFE00358763BC87366FDE7C368B101867FCDC4477809FD00FC0CE
          5CFCFF6D71CFFBE2EF1F8A717EE8E0C18300DAF5F1881BEA399D4A952A559A3C
          55B0D3A10A762A55AA54697928C0CB99000DBFD8B163C7A32157FF7BDBB66DDF
          5FB76EDD5321EB152C389B3D6A8AFE34CD05506CD8B0612EC090E8C89DCEEF84
          727A57008FDBE27FAF0F10B125AEAB94A88EFF5917BF83925C73ED45999C03B8
          5CF15E758433274E9C381E9F71F6E6708C656F8CEBC518D74FE3FDD3718F178F
          1E3DBA3FAE33A237A1131A7093911D402CFEAF89EE04005B13FAE1EA7DFBF6ED
          88F7EF89CF7E30FEEF7D01C6DE79E8D0A13DF15D33513ABB52A54A95AE44AA60
          A74315EC54AA54A9D2F291284A80849743F93C16B2F5DB0A1604D87826C0CA01
          2022CB36033BD2CB008CAD5BB7FA5C13F90900717D00885B423FEC8ECFDE1032
          7B5BFCDF960014DB42616D0E00B3D9799EF82A677E1AC0A374745C40CB69CD4E
          E377C78F1C39F26628B9A37BF7EE3D1C9F7D23EE7564D7AE5DFB43EEBF16EF5F
          8DEF3AA4E040FC5F3316633096ECA503845D73CD35CDEF62BCD787F2BC2BEEF7
          AE18DBFD31867BE3776F0B60B633AE895690AB54A952A54A1753053B1DAA60A7
          52A54A95968F008F001D2702F0BC1032F67B004FBC7F347EFFB390AB0702609C
          0578001B4002A01055115D51E92C94D15CFCFDAAF8CC5577DE79E7FABBEEBA6B
          FDB5D75E0BE45CBD7FFFFEAB43696D3B7DFAF4E6D01F008FCA6D736D44E74C80
          A2939B366DD217E78D7DFBF61D79EAA9A70E3FF3CC33470F1E3C782A7E7F3AC6
          732A00CF89F83E80A84957537C00D8D9B2654B13C5918A661C71BF35F1BB351B
          376EDC1E3FDF15A0E983AFBEFAEA070E1C38A0FADA9E003B573BBFE3392A55AA
          54A9D2F4A8829D0E55B053A952A54ACB4FEBD7AF7F3314D04FDB4A673F0860F3
          A300123F0FB0B337AE63D2C5445302C834A00768003C543CF33E40C9E081071E
          68AE90D1CA3F6F0819BD353EBB2580C655A13F28AF043BE742869F09607232EE
          793CC0CBB150766F3CF6D863C7E21A044869008DFB84DCA7189BC88D92D299B2
          96911D7A09B08AF15D1FF7BE21C6B227FEEF9D31AE0702E8BCE7D0A143B7D10F
          15E454AA54A9D26C50053B1DAA60A752A54A9526439B366D3AB865CB96D742EE
          3E05F06CD8B0E1D1000E4F0560795ED351004364475407E83878F0609356A6BF
          CD6DB7DD3678FFFBDFDF809DF87C034C140988CFAE0BB0B33EF44703745C21BF
          CFB50512CEC6F79D52627ADFBE7D83279F7C72F0E31FFF78F0C20B2F34D11A67
          7080A81D3B763469737E97604764C7159FBD3ABEEB8E508E77C558EE8AD7B7B9
          E2FF6E8DDF6B7CBA0550AB54A952A54AB34115EC74A8829D4A952A559A1C3947
          73EDB5D7BE1272F62701261E3D7BF6EC0F0334683AFA8A743257FCEEB4B2CEFB
          F7EF6F408D080BB073CF3DF70CEEBEFBEE06100126FE073871AE06A50EC93E3A
          4012108334017DFEF9E707CF3EFBECE0C5175F6C4094BF013BBB77EF6E804F80
          A675478F1EDD10DFBF2180D2BAB8C8FD9B630CCEE6DC23652D0018E0B33300CE
          1685116AB3D04A952A559A2DAA60A74315EC54AA54A9D2642940C49990B92F07
          88F979C85A8D3B9F8ADFFD3C14D46B5BB76E7D3940C72FF7EDDB774AE34EA046
          840520017842465F54254D7183D41DF92A450D494D037AA498398F23BAA33F8E
          4B3102602814E160CF9E3DD2E7360768BA3E7EAFC8C00D71FFED71BFEDF1D99B
          DBC8CE1D0178F4FFB9F1CC99336BA63D87952A55AA54A99F2AD8E950053B952A
          55AA34596A2BAF9D5CB76EDDE178DD1740E78590C11A793E1DC0E68900303F3F
          70E0C02B711D13B5016EB66FDFDE9CAD11D551B50D651F9BECD343870036F91E
          F91920029A001E111DE780BC02433B77EE5C1B406A7B809D1B03E0DC1A80E66D
          CEE104A8B9F9F8F1E33BE2B3AEEB621C57C7EB56E5AEA73D7F952A55AA546934
          55B0D3A10A762A55AA54697A1480E76C80990301625E0AC0F1F455575DF56480
          989F85327A31E4EEAF422F9C8CDF9D0C107432FEAF791FF2F9B40204016ACEFA
          7CBC3FABEA5B0B768475A497AD8DF76BA5A6056859EF55FF9B003DEB03C8AC8F
          FB3BE7B32EBE774BE881EBB76EDDBA2BBEF7D600412238B71D3E7CF8660D4CE3
          FFB7C67D6A24A752A54A95560855B0D3A10A762A55AA5469BAD4F6D739BC69D3
          A6D702BCBC12BF7A2D00C6EBF1BA3F7E3E1A00E750FCEDD0C68D1B45828E847C
          7E33AEE371890E9D76013ED04E0B4C9480DE18D7267D7802EC6C0EB0B3D9391B
          1779AE6475809FCDF1D9AD71FFED71DF6B352C15CD01728E1D3BA6C4748DE254
          AA54A9D20AA30A763A54C14EA54A952A4D97A49DB5E76B4EC4FB13F1FED8FAF5
          EB819B83EDB52F00C97EAF71FD2AFE7E24FEF7CDB88E075811E95171ED4C0B76
          5465DB106F379D397306A0D9AA74B426A4715DE30A40734DC8F46BE355496991
          9BCDF1F9A631A9E204FAE53897538B0F54AA54A9D2CAA30A763A54C14EA54A95
          2ACD1E89F604C0391EAFA239BF0AF073B07D259FDFD03B27AE9301785CC3C88E
          0A69F171296A7AEF6CC9688E0BE00910B3F5E4C993DB0020296AF17E4DED9153
          A952A54AAB872AD8E950053B952A55AA347B24DAA35A9A9E39223DA23852D7BC
          C6DF4472D49B766EA739BB13EF1B05127AA439B333380F789AAB8DD694D7C600
          3DEB5474CB2207952A55AA54697550053B1DAA60A752A54A956697B28C744BE7
          DADF9D2B7F9EEFE3830BBA65AEFBC79AA656A952A54AAB8F2AD8E950053B952A
          55AA54A952A54A952AAD0EAA60A74315EC54AA54A952A54A952A55AAB43AA882
          9D0E55B053A952A54A952A55AA54A9D2EAA00A763A54C14EA54A952A55AA54A9
          52A54AAB832AD8E950053B952A55AA54A952A54A952AAD0EAA60A74315EC54AA
          54A952A54A952A55AAB43AA8829D0E55B053A952A54A952A55AA54A9D2EAA00A
          763A54C14EA54A952A55AA54A952A54AAB832AD8E950053B952A55AA54A952A5
          4A952AAD0EAA60A74315EC54AA54A952A54A952A55AAB43AA8829D0EAD34B0B3
          66CD9AC1FAF5EB9B6BDDBA75CDCFC8DC9D3D7B7670E6CC99E1E5E7FC5B497373
          73CD95F7CBF725F94C79CF69AC4DA54A952A551A9F427F35FA819EF0BE94F3A5
          8E48D99E579752578CD213888EA87AA252A54AB34415EC7468A5811DCA6BDBB6
          6DCDB569D3A6C1860D1B2E5262A74F9F1E9C3C797270EAD4A9A11242E6B65456
          9497AB044C25E567DDE7C489138378FEC1B163C7A6FDF8952A55AA54691E22E7
          E9852D5BB634D7E6CD9B9B9F53CED313E43A5DE1753EC798CF2470EAD313FEDF
          E7E91C7A828EA87AA252A54AD3A60A763AB4D2C0CE55575D65CC831D3B760CAE
          B9E69A06F00040A994BA111EEFD36B9760273D75141825D85564798F043AC114
          8323478E3497F7800FE596E0CA6BA54A952A559A3E91EF00CEB5D75E4BE1377A
          62EBD6ADC3284F497D119E92FCBFCF75F584EF28F50480432F1C3D7AB4D1135E
          4B3D91BAA252A54A95264115EC7468A5811DE066E7CE9D8358BC469165848772
          F3DE2B404431A5D76D14D8A1C07C76E3C68DCDFFE7DFFD6F468828B1043B1498
          EBF0E1C38343870E0D0E1C3830D8B76F5FF3EAEF952A55AA5469BA448E8BE870
          8A852E6B5EB76FDFDEC8FAD415C08F8B0E4820928EB192D22146A7A49EC894B6
          524F0036A59EF03EF5C4C1830707FBF7EF6F74859F2B55AA5469B9A9829D0EAD
          34B043E988EAECDAB5AB516031EE06E4781FE36F7E9F402801CFA8333BE9B5F3
          7FDEA70243145FA639506679013F14D6ABAFBE3A78E1851706CF3EFBECE0E73F
          FFF9E0A5975EC234D39E9E4A952A55BAE209A0A103009DBC801B511E0028F4DC
          E0D65B6F6D7E0FBC8C3A6F931903E519D1D41F651641EA0999005E8F1F3FDE80
          9CBD7BF70E5E7CF1C541E8D0E67AEEB9E71AE758A54A952A2D2755B0D3A19506
          7678D9323D01D0A1C0801D3F033977DE79E7E09E7BEE19BCFDED6F6F145B5F9E
          3532D7095E5CDEA7672FA33E3C7994A6D74C7FA0D4809D975F7E79F08B5FFC62
          F0D4534F3557CC53A3C8009EBC57A54A952A559A3C91D9F4021DE0E20C4BB0C3
          2176F7DD770FEEBBEFBEC1DBDEF6B6E6FFD2D9D525723C410C00E33D2758A927
          324320DF230008D80903A3D10B4F3FFD74A3279E78E289466FF81BBD53F544A5
          4A9596832AD8E9D04A033B94120092E96A79657487128BC51D7CF8C31F6ED2DD
          E623A907140F6514CF3A3C584A61B917F0C4FBB77BF7EEB780269FA5C844747C
          FE273FF9C9E0C73FFE71E3BD13F591C250A952A54A95264FA230004F99BA464F
          486F23DBEFBDF7DEC1830F3E38B8FFFEFB9B28CF28A7189296C6B9254243E64B
          55E3F4723F4E367AC63DE80BDF55129044B7F83C3DF1E4934F36BAE299679E69
          7EAE7AA252A54ACB4115EC7468A5819D4C3FCBAB4C330052DEF18E770C7EF777
          7F77F0C94F7EB289F05078A348FAD977BEF39DC177BFFBDD261D4DC4C61A5062
          14D75D77DDD5DCE39DEF7CE7E0F6DB6F6F3C83256595365E3A9EBB60A4E67AEC
          B1C79A14377FAF54A952A54A93A5D413DD6A6A5E0192F7BCE73D83DFF88DDF68
          00CFBBDFFDEE918E319117BAE1473FFAD1E0D1471F6DE43CC043B6D3071C6174
          031DC1D146FF0053250146A927001C4E313AC7C53956A33B952A555A6AAA60A7
          432B0DEC5C8AF6ECD933F8BDDFFBBDC11FFFF11F0F3EF0810F34E778BA157810
          05F3FDEF7F7FF0AFFFFAAF832F7DE94B836080A1978D4294EA2025EE5DEF7A57
          0378A43C003FF2BDFBEEC773C76BF73FFFF33F836F7EF39B831FFEF087CDA1D4
          59516459940165AE79A54A952A5D890494C80070BDFFFDEF6FD2D9447DBA4427
          705EFDD77FFD577391EB643D4A3D71DB6DB735F7A3271E78E081466748B5E634
          EBA6C6D109529EBFF5AD6F0DBEFCE52F37F7F31DD2E366A1474F82C2DA37A852
          A5954D15EC7468B5811D074E7FFBB77F7BF0477FF447835FFBB55F1BDC72CB2D
          8DD2E912410E98FCE33FFEE3E0DFFFFDDF1B6F5B49047E164270FE475A1C2F20
          C0E33BBA4ACCFD78FC4476DC0FE011395295675A949E4C51AF3C77649C72CF5D
          AB15F0940D0513E065C189DA00B0D26AA6DCF3595D322B5266DFB14AE7494486
          3C0776E8099119E779BA24DA4FA67FED6B5F6B64BAE84E997A66BE33954D64E7
          431FFAD0E0831FFC60E328A33BFA748FB436BA07D8F1FAFCF3CF37673DADD1B4
          282BD865853AFAC1737A5DA994E5C251EE83D40195C623FC5116E97095053A4A
          DD3AEB94F2B16B1BACB6D2F015EC7468B5811D911CE90952D9289E3BEEB8E32D
          E967C8069546F04FFFF44F4D64471E7537ED2C0FA0526414E26FFDD66F35F7E4
          05EC538CEEC96BF79FFFF99FCD25F581629B961293A7AE8883B40A171020FFDC
          98A639AEC552A6A494AFAE4C616458E421E1BC320A978DFF4AE19C878EBDA631
          98D5FBE67B8F46755B4F419A6996697076EF335FB7F66EC7F6B24F472A94F964
          455FAAE738DF598EB7FBDDCB49D93018DF1A77F62FF19A635F8C8C1CF599BE03
          E9E352396FA5D25C0E305DF27E7999B72C8DEC2A7BC21843560A4B5ECFA6CB25
          3F954E804BF1D76A2019004009C0C39125950D68E952829DAF7FFDEB836F7FFB
          DB8D538CEC2C290D41E7769C01FAC8473ED2DC7B547A9CF997052052E49EF484
          F436A96ED3207C62DF49DD76E12115E3A46287513495312D74DCA5ACCD7DE092
          AAE8D5EF726F9615F3721FE47ECD3D3B5FCFA5A4DCF35D193B4AD6F77DBEBC4F
          59DDAF94B79370C875D33DCB66EBA957F143EAD612F0948E946CCEDB9535DD5E
          87DDF9E9367E5F2ACA7549FE306E3C01D0673191AE6D9057C91FA55C9CD49A2C
          1555B0D3A1D5067678EC1E7AE8A126BA931E36067F9730EDF7BEF7BDC13FFFF3
          3F371E36CA0710E82302416A0210C513283D0E88B281BAA497020FE057BEF295
          E159201EB269AC2DE0679C22530A2D10500A2A50D8C0DD4AF2DA11525243804C
          8A1980CD0EE9E501E414C8799502AD546825D8C92B055CBEA6D07665D3405756
          EFEB92EFCF12E8D21DB39161D98FA304555D4AB0548EDDE71C88CE3E1D78C918
          E6F342514EE689A1651CE6C6BDBB80AE54D82548CB4A85F6038F33C3C7254AB9
          5C80C7778B987224E0596B6D9DCAE74D45532AC7721EBBE0653E83A5FB993EE0
          D3F7D9ECD75596AE4F70667EB26889B55ACA337B64585616CB72FB2EFC9F055B
          BA20BF046025B04F1EC7C7F95AF610CBFE30ABCDD39984EF819DF7BDEF7D0D30
          E1C8928286FFBA9460E71BDFF8C6E0BFFFFBBF1BB9698DFBE6062FE05DF7FDF8
          C73FDEE80BD19E3EDE52C4460A9B7B4A69932A378D92D4F8849C321FCE31192F
          F9017C3DFCF0C34DF5B859748A1923D906A066E3D8DC23F644D917A90B764A99
          9F8DC3B36F1E209BB26ED473BBA7394B272259E5E76C75912D2B463988527EA4
          ACCFE89371D87B642EF991955D97730E73CE4A7952EAD59CC7942BA9234AB093
          CF5B829DB2CA6D297372CEB3375536E1ED3AB52E87AC45969B4FDEF06C59BD37
          ED848CEC24D8499093FA3EC76D8C7802F0574A7E5A4E8971A9829D0EAD56B023
          0A936067541466A16007B9870A3E1FFDE84787119E3E10E51E521D4AAF9D1CEF
          49AF2DA1447199834CD33006CAFAAB5FFD6AA3BC5742BF0782954291124221F3
          3C269820C8289A14CC09104A2F55D928B6EB4D4A419D0A301BC896571A7F0936
          083C0AB10FC0E207A0D25C33DA818DACCE944A703EAF617A88137C2063F09DAA
          064A8B7CE595571A25389F215D1A2FBCCBE6CB7D7DA6AB80BB1EBD8CA8F8DEEC
          11C2F0916AE3F98D7F398832B257199F2EF388B2296302C504ABA33CA7A561B9
          9068D028B073A9CFA4F713C8C09FE6D77C3160A5262933BC1495B67C17A56D3D
          450EC8B7E47F5769DC9586485F2F98D2839DC60643C3FC5A5BE36784E75556A8
          5C4DB45C6007E1077CAC408E73A3EEDD97CA667FA9C84607C92CA02BCCF9A489
          7CC257CEA4D29B225378D919D6FFF88FFF680AF8E08B5922736C1F90B18A4390
          15B927E803CFD4DD0B5D995FEE8594B1D68323D0AB35B63FFAE440667BF85E17
          5E4AE796EF2C23BCA3C04E1941F1B3FD682F1A0759AB7005D9BB5C69F0E4AD39
          CB681EFD2A6DDF1E48A722B992FAA88C6095950B4BF9D28D4CA573257569096C
          FCCCFEC87E85648DBF5D8E7E495BC1F3703AB81C63F06C9E897E2EE56419892B
          C79D36413A82C8464E6B72007FCCDA7E184515EC746835821D8024233B04E27C
          919D7FF9977F19821D9B6D14D91C3611E5458951667EEE920D2D954DF1038027
          A33B93CE6525F00132E33417CE1A19830DEB9C92C20C84CC2C866529138236FB
          2711CA14722A36CA85B249815C1EAA2DD3BC4A63B84CD52A231A79AEA78C6630
          705C8C5586A02B9590B5A50C818EEEBC190F01CB70726099904DEF18455886CF
          FB8CEB1C477AE229044A80D2C343BE5BD48092982F2AC718C0F70C39068CB1D8
          0329D04B43383D9B147B7ADDD208CE1E21142FB0652CCB01763CB7F57CEF7BDF
          3BF8833FF8832605155047C69307B8FBD2AFBA80A69B2A315F4A5699C25716F0
          C89FF37DF777694059476B4A917A6F6DC8120E14B205405E2CFF5B43BC8DFFF1
          3EBE2A0DBBEC3396CABBE4FF2EBF9767D8DC3B9F233DDA09E25D1C339E235FD3
          08C18BF863D664C562C89C3082142648B0C331302A8D8DF3AA043BE669BEA817
          839143EC2FFEE22F061FFBD8C79A9FD37991848FCDF1238F3C32F8B77FFBB786
          6FC89749131E027444A17EE7777EA7990763A527A478738C913D78659A6B8F67
          ED356B44C703949C4AB216EC0B863A7D81BF5386967BBFACDA9AE99EB9DFC93B
          32D65A5867BA9B6389DCE9D3DB3E4BB677F7A43124D82AF54A4683CB674129E7
          7D0F99CE8985277C37598F1FE673C08E43C69211608080BCA547ED83D4A99EC9
          FCA6AEC207656A6B39176584BB0BDE52D6E433A63EB1973C2359E26772872E15
          D5F44AD62C26DB24ED05F3EF79AC0B7B870EF15CF65FCAC9F279722D72DC99B2
          97BDB28CDDFCE7596C4713EC0776D34AA00A763A54C1CEC2C00EB26154DBF9F3
          3FFFF3C19FFCC99F3402B7ABC46C6C062205293D01E0E1E55D2E8FF828B2C1A5
          52182BC0C3F38478EC18635FFCE2179B32AA04D02CA52910348C3B158E5C19CD
          C96211948A8B6223A4D238CFF4B2F42665683D855A2ABA547699BF8B37FACA93
          A7272ABD51C04D82581703A0BBA6EE676C948731532A9EC7D85331FABBEFECF2
          4DEEFD8CA8507A842A90E13D0F98315010D9E763147946425FCA25A30BCF9AD3
          14E2E9A1334F09E47C97EF60A053BEC6E16F1490BF13F87E5E0ED06E5F9933FB
          556111D514190DF35119A92B7FCE868FF3E5CC97D4973F9F865157915F8ACC1B
          79F2F9CF7FBEF1D45BAB71092F667FAFBCAC657A601929E941CE334D25DF679E
          793E43E6DBDB2FE9DDEC9239B3EE0C2EAF7925E0C9E81EFE232F563A2D37D8B1
          FFE8A03FFBB33F1B7CE2139F68D6D09A7579C83E6744E119CE2746EEA429CFB8
          DA7764053981A4AF89EC48C716AD34D6E54CA9BA1471249947E9E42E20C71A1A
          AF7533E7C6970EAA749058277B3865BE3D90118C92EC25512CCF9C3ADB7EE8D3
          DBBECB7DCC9DFDE822EBE92BF68671A58ECAD4B62ED83136E3B4BFE861FA2453
          86F197BDB658E3BF4B191D362E63348FD917CAD853A79A63F3944EB004297441
          9E6B2D3313BA67667D169F67BA5897D27195BADAF38B94986F40938CA16FC7B1
          837D6F5644046E5CF98C2EE00E95591AF93C393799CE978546F233E5B8A574FE
          DDDFFD5DE300B0562B812AD8E950053B0B073B485A1025F6A77FFAA78D07BFBB
          316C629B968200765CEE3D49B043F8786E9E3A60877731CFAEF016396C4B8951
          E27E5EC8734F82CC25214C99491934BF40020194074F337738CF7350C299674D
          781264992BECCA79A77432FFD8F76437758A2F1516E55452E6795338800043C7
          792C868FF75D8327BF233D68990240E83AE725D2867FF068976FF2FB283AFC82
          7FA44052BA9E318DDABE54B42E51401480A80E1EF0BD8079A9807C9E7265C802
          714030EF1AE59B6972F9EC694C2F554E7597180AA24F5904C4B8139C7729F3C2
          4BEF5C3E4F59752CD78281D3572A1EA507B804C8E5599CEE41E432E5AF8FF01F
          2702B0C3701A17EC182B70CF638DF75D8C3A86488216DF9F8612008A5F7C0FA3
          3CA3730976F23C51E6B097CD2FBBA9BD3E53E6D57B0578F0071EE47DC5975939
          6C25545D1A45CB0D76AC911439114AB2973C33F7DD339E6416B093CE2711D449
          937D279A4A4F28D69063B4EE0C3CFA0B70C703D3D013F620FDCD51C469A39844
          3682CD736AF8164F02089C3640BA3D91E740ACB7BDE53ED681314C1EBA67E9E8
          F2BC2AA9D28FD619FFF7AD73EE2DF7CC7DE9BD7B1AA30B3FE1B16E93D9247369
          2F597F3AC5ABDF956746BC5EAEDD607EC8527AD49844F1ACB9F903D8CAA226F6
          B4EFC5F39E9DDE318F640DD99232B27BE6D367D379986092FEC934DB92EFCB73
          3E9E0FC80130CD413A5F17AA63F086E7A05373DEC9CE4C1F77A59CC4CFF8C2DE
          F51D9E339F2123E8646F3A59C9C872DCE41FB90EF0D80B2B812AD8E950053BE3
          811D028D7290CA66736595B3A46947761879D9219CA1CB4B4E39241160362E05
          C62033CE6E75A149530A644246F8995076115C80421905C9C39B0458463CBCCF
          8844998E9560270DD814EA094608E2F4E6B8CABC65BF2FBF9790043E80449739
          5CE8016EF7654888B4011E9EB12F7261FFF31A39F391299014C0B8DE3DCF4A09
          F0D88AEAD907945D2A76DE33F395E912F813FF33B6180C933E8049B1E0574627
          6386710878E641F92C50D02D1FDB4DAB28C18EF94DC5D5776602B98FEF484F2A
          C5E83E6513CAB2B25D59A5288D1DB2250F28E34B8AFB6FFFF66FC7023BC697E7
          72B29171EE010619F26C78DFFE3556A0D4E5BDDFE53C65BA51699051E66402DE
          CEFCFCF44A27AFF74537B39C3E9E64FCF1F6E313D1C68C30AEC4B4B6494476F0
          B0C82A5D44FEE2C3AEE16B0F26D811D99924D8C1CFF84EEA285DC67967CCE5D8
          E831B228CFEE2C362DF372C8FEA273AD9575F26A9CC68E3F8D093F9293E60F80
          B027004906AD754AB0638FDA03F6192702FDC2F0F73B7F27D3811DF600E7CFB8
          6714D3A9C55943DEE3A9AE030DD933746E3ACFA447015A4B5910849CA2DFB275
          4646C400033651C9EBF48167CD287E566B75957A35F56917EC6415BCD4A9E958
          31AFF4BA5797EFECCE071B4CB4844E255B1652CCA98CC678267B98DE30DF9ECD
          B8C8263C40BF256F645A6E96544F596FEDF3AC0FB980274488DC2BB333C8BEBF
          F99BBF69008FF72B812AD8E950053BE3811D020D880078085EC2A43414080E46
          248F05839592E0319F14D8F1AC9ED9B307A3378297A24DB2C979BF2859F9A7BC
          58C6372D229818E60C3CF399022B8DB2D2BBC2D823B82809AFBC35045A86A633
          A253565D4B83B89B4F9C1EB9EC2D4148E39D540C14A19F9308496B8A57CC1B65
          B850E5E43B28415EDE3C043CAA63BBFB5A137D3DA4CB8D9B1F9C290B84B5141A
          FBC09C66DA86F527F8011CE00DDFFB0E46ED342ACD182F2066ED0141A0C7588D
          93B1E5CA83F2DDB33825750FCABA276393D1312A25CE77647542FB81D1E4F399
          9ED157961BFFA4E14479DB5B788592B4F7AD1BB063EF2F04ECB82740638D3CBB
          57C65D162348470A504F715BAFE47D8608805656334A5098202D23A119E1C952
          F4F697EFC9DC76631855912E0B173024F127BE3106F3B5144518264DCB0D76F0
          88B9755FFC47169BE76E6435658AA80E23DB7C4E8AC824F2955CA2CBE8B4F20C
          6A9E256184FFC33FFC43333E3C374922A3E902734876722E5AB78C4AE24B72CC
          18ED5FFC694F24F0CF0870167EC9342BFC6F6F91F3648EFBFA995C747ECAB3E2
          73F71A476FDB5BC023194FF69A5BDFD525F734567C45D6D3274B6D407366E041
          7C6D4C9ED533E661FD24FAD25EF6FDE40B796B5EC994D4ABE93C2C330A52C694
          80A774AE6475372087CD044024B82C413F1BEC0B5FF84203F8ACE542F44F56E2
          23E3CD317B2F6D313ADD18DDCB1A9A63EF3363C173E5F320CF90F23165239E33
          67EE69CCBE0B6F18E7E73EF7B9B7F4649C55AA60A74315EC8C0F7680081E731B
          CDCFE5E62520DC8B571ED02188099049A57D787EE3CA6679845C991284C71848
          04802A40142D853BE93345283B9013C8D68CE1C1F032DE6E6948068631536A40
          00E1CC00CB5AFE972A4B8CFA0EA497C29A82F0FD841CDE617C2628E12DB49614
          D3B8A989843E8F1AEF1345E8DEE9B12F8932C9E811E3CA7BCF380EEF30D82894
          125C99E38C7C5068398752E578EDF1432AB34993F9A7501834527FF0AFB130AC
          CCB18BA2EA461146C9CAFCBD748DCF7CE6334D7A4E9E43E892E7A6E8AD27656B
          3E4A259854BECF0A6C0C2EFC627FE15DDFE7BB79C229C5859CD9499E4B0309DF
          59BB4C5BCB32E0C028AFB3753346FBC07EE82BD6D03D105DF279798E075F33C0
          8D9BB1C7D94096F545C1329DD37CE11F0684BDE0951130EDC3EBE3D224C08EFD
          6D0FBA3F831A9F94A98309B4ED439193491E7CC613788C4CF2EC22CE5DC33C65
          29BEFBFBBFFFFB26FAC4789C440FA6E4596324136427486FA5CBF3DCA1BD957A
          D6FEB546997696FAA04BE51E60133096C948E986F602F0C9160076E897C5809D
          4CC7657F587BB2B74B0C7A72D71EE2142133ECABA5B0113C1B3053EA31F2053F
          925B65B602DEE6E8A4FF53A7E241364CB7E7D0A85E387D671ECB28389E2257C8
          173C663DF15D3A31C949FC650F9883859C1FF67CD62BF797574ECA7C36BAC37D
          B30930274296D21FD5F8B42CE44207192F9D243B02DF71068ABE7EF6B39F6DF4
          F24AA00A763A54C1CEF860272BD7D864294492780F18250430E5C80B40394E6A
          6D090163733164288CEEF9109B9E406054A76136E95E40844A963C650C000204
          4C5739F02C31F8295A4239A31100E4521BE7045E968EA62818A00433B0C2DB45
          21F0C401B18CE4852A42FC97C2196F7A5EC2B9EB49E76563CCE24782DA338FD3
          FC95D7D2F750B6C0AE0852A6A6B84F567F2A81CE3452534AA26018DBF694F5B7
          06194160488B9232B2C72546C75FFDD55F0DFEEFFFFDBFBDC092C21315F43D40
          BF540AEF174A94B50814EF691A36F619FEE41D66C0CC57DA1DA8C87CF34CDFCB
          6862F245F6ED714FF72357B222DFE51A46E63DD379CC3B83C85844AAC88C510D
          57ED0306121E22DF1813C638AA72D52CD224C00E3992F7B7DFCD710976D2D0A4
          83C861F79E54E969CF4F4E30E6C8A36CD1D077BE849CE510A327F19F712F65FF
          A851F367AE728CC008599C7A8C3CB40EE4303D6B0E1753DCC177903BD2F838B6
          4466DD5374964301A01A47C72480329F6482B9ED73B4B033E80FE3F67DF61283
          FC720B4000826452026D7C4DBF5ADBD206B04FE90263205BACABF9B4D6CB5180
          C498CC0B19632FD813648F0810C007EC00120B057C3E9BED45B2C97BA6C70192
          998EC881C55618577FE03F72D0FEFDC33FFCC3662EF13CBD0CEC90072B812AD8
          E950053BE3811D9B40648700B619BADE5011000298A7CE4626842755C1C82635
          26051478C3187C79A8B94BC6C4A0E6B1A3C8819F49F6D49032C1CBC3B3C6D0A3
          D84474CAB166CA1D23943160BD18C00CF4E56A889A0AC378A42210AA846B0A51
          73662C0C95852AC212ECB89FE7CDDCE2922E07EC10F67891F0E7A9652464D105
          6B6DECEE8D27DD370F9A4FDB238F67F101A383423426CAC458F3E0FD6268A160
          87924FB0336E7A025E95A6015852E03C8EF8D3FE6744CC3776C676F2833D9B11
          CDF4785A73B2C3F878AF5D0CB0A56C3488D7795E19648016D099A9847DE93739
          6FC6602CF62310C6233C4B854E2E45938AECD03F6564A7D443E46D8258CEA649
          3615A5138C8D0EC3BB40AE67EF2BBC01DC8A3E64936C06B1712E27B005BAC802
          F396E75F8C31092831A63CD8BED0F4A73E227B6469E0796B4A0664BB08F2679C
          4AA5E3809DDC3FC00E07D4E5829D8C84D13340451672A0BBBAE764E84F002BBF
          1BC8C0D3CBB57F394EB29A1EF045AF1A1F1B80DDC5E14AFE1AC742F491B50242
          5CDE9BF774CED097F694FB013B8B4DBDCC821380307BCF9EC173CEEDD04D2B81
          2AD8E950053BE3831D4AC2462328B36123B27E8CE0F42A506036DF727BC2507A
          C328D74F7DEA538D001F95BE838C891237CEAC2EB69C4D23CB7132A4282F4284
          E0EB33AE2853822ABB8C136014D1A40C02462C031C7060A850260C59E3C8A691
          0B053BD6251BBC52DE9438A57829B0930D0C2FA5704574B25A11E3C5C578CD3E
          0178DB9829717308402E55FF86CB258081A1692F99734A175FF23A5E4E49740A
          1FD0F9CBBFFCCB6183D292D26867A8F3E42E369D1360A0C07D1F839177DEBE67
          2CF519605921CD67445FED81043A253FB80F8384210CA0262F2C07958D25F13B
          F929E293BD29FA885CC357C6964693FD3A6DF0BC105A6EB0E3FEC076464E32CD
          A6F4AEBB4F56EB047A96B2A7CAA588ACC5778A129071E662D43A8BD8917509CA
          322D7B39D799714E1EF0DC27D029CF1331D6E95867892EB719AB75C9A82A4A07
          439EFF19470691F30C64EBCDFE20EBCB739F49D6B91BD9F1BD97037644493C43
          3665268FE89892E7C8364E42DF9D8576E8037B791229CCC6C87E32375A770066
          7491BE7F2EB6D3A59A394BC1B55FF5B0522EDD3396CF8737EDA9EC1175398E66
          4E4F637559DB2C133F4E06C034A9829D0E55B0331ED8713F1B55F4844071EF34
          520831C66A7A150830A928CB9DDEE1FB8D83D22260792318BC7D956092CACA5F
          0CEBF4662D77748700219429180A97C1D1D79CD55A6411853C23C3C8981465F9
          58CA3653507839D31B6B3C0B55840B053B0028FE116948B0E33BE7FB1E06697A
          13192E146DE64453D68C79068AF565844B819A15A083CC813D8B7729C3ACAEB4
          98D4B59200BFFFF37FFECFE07FFDAFFF352FD8B18EC08E340A06FB620016EFA9
          35B0DF8C9BD19F676ABACF9AFD2E286C60C73E90BA59A68DE103E3C207AE3C9F
          B69C728411E119184AF625D9669C7D000065A5B69C3F8613236096786B1499EB
          2ED8B1C7970AECB8BFFB018EF6245EC42379DE045F30D2A53BBA6F46FF27D1C7
          267B70718665B9E9BE9E2849C694153CB3721819B89C4E31602CD3CB8C8F23A7
          4CB1331E3A36AB1E5E4E910CBAC75A65810EFBCC7A6489E2714040821DB2384B
          E84F02EC646F2EB224536AF15B69F7D0F7E49DE7A357ED57EB09D44D32FD14AF
          912FE432194386B0C164985CAA4007406E8F9A5760E7F77FFFF72FDAB3F6151B
          C69EC21F52CE2FC79EB15FCD6916B9C9F39DB5CFCEE553053B4B40E3821D9B2C
          C1CE4214B5D0302501ECF00666DA954D4570302A194E36C572759CEF924D49B8
          899010048489F7A34AEE26511AE9F5CFEA5F8B6984B85062EC89925064097418
          A2DDFE13F601E16F4C0421234344679207E88D15EF58E3EC8DC308156AC7378C
          9EE5003BD9A999C0B636D668140F655F16F3683ECD6B365203B219698CAA1C2F
          A033E96A6B97220646D90FC71CD88797AB80270976B28A0FA3239BE5F535C7F3
          8C3CFEC6468132B201FF6ED96706409664259BE4D74FA2F16FC9A70C267CC578
          EBEECF24636214329AF29C121E9B4424FB7208CFD9379C190976B20A609712EC
          309C4AB0339F5C278F391D6400D897653544040C73E2D03D59A23CABE82DF773
          330EC9606353858D3E9BAF61AE3131C245B5C9241E78E93CE4CB7291B902C618
          B4F649D7194026DAAFD29FCC9F9F2FE7BB441BA4FCFA0ECE16EB4B369095E3E8
          EF69801D004044DC9A02D7EC1E115AB2A69C337B55D4239D75799E781AA9A700
          C4A73FFDE986F7E875E9882275E4DC7C94FA8E7D0708CB0A29CFC199BF32B243
          AE5FCEF3995BF2D0DC72C4199FFD3FA9B375974B15EC74E84A063B99DB99DED3
          4B2969F7A11C011D21541B0F319C8463194B7968D2A69894614908F04E31763D
          3B8F09018E9FB231998D4B0997E90AC6979E1EC60A6FCF7255046230F1EA30F4
          295982B97B701211580414414C08526ABC8A9326E3A544B23333CF9FB9036829
          275EEC71C14E9ED1605C8D023BD9642DC1CEA88A40D6DCD8ACB5756714784FC1
          319681320A0D3FE26D46E824CF644D9B260576B27469560FCCFE4E7DC05CAA1A
          FE6708E1012934696421EB6C8D18960C4AC6F0721B9625E51924E31219264301
          9E6E03D29212A00365653AEC342AFB2D94B21921638BE145A63310FB1AD9023B
          F802D8E13858483A213D61FE640090737490B9B5BE0C73D15BB216DF91239302
          87293332CDCA188D2D1B30A3E4E52E59537ACD617263F71CCBB5C678509AB8BD
          4B5E76F5B77D6BEEEC0F6B02282CD6A9281A0BF0641604DD93A5ABCDC93836D9
          34C08EB9E130C9AA7A5EFBBE935C01DAAD5DF6FE73BE781AFB949E623FD97FB9
          96C675A97E7F9E956CA2EB9C4936BF65196DB2D7DE34A78030BBEE720AF0D0F7
          8E29B8EC094E2C73B652CAED57B0D3A10A76160676B27F8D7BE7C1CE34022802
          0A91B72ECF735006935A4F5E651B9F82303E0A8DF02648F2307F3654E3A128E7
          805067F09907CA83325FEA685496FA4CAF8CF03381D5E7493566808222C81436
          0266D264CCE69057D1BABB180B792663DC3436F9C90C47CF4F21F51528C07F14
          1F2F176F79829D6E94432484018FBFDDCF5CBA9F35F6FF949AF973018DC67C25
          011D34C9C84E9632EF2B779E849F184252D728FA6C485C1A96D61FAFF3BE6691
          13BC36C93413203F53458C5301913205AB8F3848F01A9ECD4A85B39CCE66ADA4
          FD30BAB2170EC38B7CEC52821D3CE2D9B268C87CF3C731C2D8357FF667D917C6
          DA0285EE656F5E4E54625C02AC3D33DD655D45B332759421973DBA5C5DD9645F
          94D146C6F97255E0635CF2DCFFEFFFFDBF1B3EEC463E011272D2FE0076CCE362
          3312B22166591804E8C8E6C4E3D034C00E5EB39E804E16BEE96B102C8282EF9C
          73225B44AFA6A513E842F32363C2FE62339987F9CEE3E2CD2CA96DBF8AFC79DE
          D211C36EE11832AF2290F428C7D162ED30DF49E773C8DA0FD62741F04AA00A76
          3A7425831D67191C4C2ECFECE41A94FD29303B4F7C7A02DD573A0A0326AB7411
          24947D1EA29F94819229190058E660130A99BF4A881AA379C983D02579DE2C2F
          4A4010BC4BADC408DF4CB34B452B12D52794B3E129EF93C8847561944E9AAC3B
          25C8F0E305367E828F61605ECDD9420DE3ECBF9060070F518AF3811DFC0480E3
          A5522EE04539F778D13C8AEA501EFE87120574CC9D744A73C7785E29C2792969
          9260E752649DED498626A0CF29C11BDB5D7FF2C79A67442E9BCA4EBA07569603
          17814DA36454B52E445E302A8C9BE3C8D82FE5A59D2691999C18E411B0C328F5
          BC7D8D7E19632231598531D3D8CA7E4CD95B843C73DF8CB2677113DEF38C8031
          34B382D8A4D29C93C80932C39AD261E4089E23CFF0593643CD2A9E5DC29B0086
          FD02B449EB598EAA98C00EA068FFD267DDB1F84E6326EBC839C6AD48F662DA27
          947D62507E7E31B6D8A4C10E9EA353CC15E3BF5BF12F29334FE895BFFBBBBF6B
          BE739AE9CC009A1452AFF8CF9EBA544A5D821D3C6C5EFBC04E3A9BDC8F4D4716
          B1CD447B161BC1CAFDDDFD8E954015EC74E84A053B044059F98AF2C9665A283B
          2EF37C0108143EC1928719FD8D21494865852ECA60B92A26F5517A1E8018024F
          751D63448C728A8052E2C1317E428282EB92FFCD8A549E8312EB3B73B05832FF
          F2D67DBFB521E88087BE5E1E697CBA1807D38A4A185B3690E48167EC5973F3C2
          4819A7729D081125E8B9B34C3183623EB0236D86D02E819EB5CEAA6B8C292951
          408FB15A33FC4791252F32CAAE44A0836605EC581B11B72C4A40493BC7D1D76C
          10B0CD886609F4A7D1BF467498619C0D27F1DDA883EC0C0963377FA2C3F8F752
          878DA7490976C8726B42268D023B698C590F7B330BA5641640A607D313D977C9
          9E74658F2E73E1728F044C938CE820B2C63AD21300379D616CA2E8191DC992D4
          E4535FE971FACE1C640F39CF71B98544FAC83A7008A8A408EC740BEDE0373A8B
          016FDCE49D7171404DC331963449B093D912F40927277B27D3EA4BCA68073048
          C67168D2ABD324F614996CBF00AEF8EA52C0D99EB5C712EC4863B36FFB6C3BFB
          13C8C1A359C9F24A74FA55B0D3A12B19EC1000000125CD3309ECA40780E0A7DC
          19B984481E5467B464BA10A1614351168C4B82769239B0D9099D114D814991F1
          BC9ECD0677D0DD6667C0F182502065BF82A48C08506299974E382C95E1C75397
          DE983CAB30CA704A83895726AB3B4DAB5961021EC64C76B4B7BE84B26BA1FBD5
          B35A972C0D6D2E08EDF9C00E83174FA53191E93159750D8FE345BC0D78E1E32C
          0D9B5EE32B4DB897342B6007CF9049CE8464296286709F4CB266406E1EF667BC
          2D573FA94B11B927F29163369F7D551393CC9BFD9A6564BD9FD5733B656487C3
          603EB0C3034E3730AAC9451105EBC40193A5703921CC97FD28620744D1190083
          FD6B4F26D0B954D191E52286B8E7CC2A569E95FCA1C3AC17F9C19874E89B2149
          5E759D511905F23C79866939CE783286E9326305BCAC55292BC95DB292119F67
          65ED972CF93E2DC03349B063ADF018C789B361A3AAAF921FF895D3934E6513F8
          EE69923D43277ACD54FA851483A08765D864CA3E474C1F28F7CCEC337A309B1F
          93470A835C493AB1829D0E5DA960C75CF3001032596A92F0CCAA38C00E814289
          B9A74DE635CFBCF0445010E985A510F3F393221B3DFB39500E3C771405054B88
          AA6446A05214BCB42AA0F89F6E7525C281878F409402E5A2D8974A3030D229D0
          3CAB00FCF4353A65801AB792A2996F3BAB06D3388467F04F821DFCC9B3DA0776
          18129E5DC49180C6539402DECBAA6BEEC150636002E8947D795E62D2E931B348
          B3027680650670AE3BC74456CCEB120783B5772EC2BE15259E16D0C7B3D237CD
          230318DF01E8F3114393CC49EFF1341D15F3D138696C64A0FDC45052E4839E20
          5F138432C012EC640972EB9BA592E909FA01386078916952E326515D2F9F35CB
          4D5B433DD8BCE23FF2C6B83EF7B9CF35C085014A8F28C0636EB2426292319B8B
          6CC4AB900A19B5D4760BBD66BF64E9693A7C5465516BC1694977B9B261B239C6
          7F939A673429B0634DE879696BF4BA35A31BFAE6887E70EFB2C8C62C475DE723
          FAD2BE058045B3384FFBCED9213C8957390CD969B278F009990AB44FA225C8B4
          A9829D0E5DA96007F12610062ECC4FD83012AD032325D3D8E48ABA4A90206D23
          371261457849B9F2FB49780F28B13CA4CE18C90EF4883053DD84E14101108209
          763245A1ACCA065098039F13DD91CEB65479BD0494681205EAF2BEEC995012E5
          EBAC0AE5CBBB3DC9BE3ACB4978A8DBF47314D8A1003D3B6382218E9718513ECB
          93954DF6AC29E3987207747836192104FC6A17E20BA159013B640607036F3A23
          D3DA318AFA9A3866833D60DF58265585AD8F8C8FF1CBA0E2A860789AD3F98861
          CF736C2EF1315E9C56646A3E1A07ECE013511C06AACB9A78A6E4138667A6B1D1
          11404FA9277898B3F92A594C4F004DA23B93A8C2662CD285AC2303DC5A3A3B96
          CE3EEBE51C073D0600D1232205225E9C525D504E27001340395EB5CE4B9D662C
          42C17867C4937759BA7BD49931916D6094FE32BF8C5A06BE9FE9E44939CCEC6B
          F6069DBC90A6A2E63CD323C7013B5955CF1C65A680F5ED7320E233764A368525
          57A651F067A9086FE04DA05D74C73C8C223C6EFD39183862CC799EB7C5C3CBD9
          666316A8829D0E5DC9608710CCCA2B597DC51A647102C283B2E82BC7E9FF6D16
          428A3263680A9B12B084C9529E79E923E3921A4381A56787B2E5B9C8F2C5008F
          F151C499C696D5DABA0DC7803C8A595427CB362EC5216346396F36E1E44C11CF
          57DF591DC4E32252F6D9CF7EB631F8574A89C74BD142233B8C280AD0DAF1C211
          CAE6CF3A3342805AFCCC00E1D1646800A714598DE85C4CB30276182699579F65
          880189BE3D60AF023A7FFDD77FDD7822A70D5AC93F7C4B6E7094303CE7EBC9C2
          78263F4425F131FEE5619FB503BDE3801D63A7275C78C3AB3D666DCA223679C6
          B34F4F90ABE6428778CE093CC700037A965BC6913DA2FF65696211BB3C8B04EC
          B88CC933004259969A01DD57D086DEA35BE80906347DB7946B9CFDA838E65CF4
          38BDD157D006590FB2D35C1A8B799676680F79CFE00552979B0FE9D46CF06C0E
          C97973DD2573CF5648B043EED8FBE354F70400CD4DF22E19D7B7373920A4A8E7
          594EFC37E9F3624B4964127DC8F9A2808A7998AF29AEFD6AEDC97A7B109FE30D
          9739BF54D3EE954C15EC74E84A063B848E480C85CC3B456876410E639371E91E
          5D2F5776252650282F0627E1CAB3C4D3E4DECBA5CC283182CEA65789CD3918CA
          D7F75344A2338C618AC9B80908CACEDC782FFFBE6B7051183EA33C25CF1DE1C0
          FBB858A3CB3C0260D6415487D1D4778832299528638F029EA6677B2969A16007
          0F527E8CC5AC8A4759526A598CC09C322ACB620459EABC029D0B342B608761C2
          21F199CF7CA6D97FBCE5A388FCF89BBFF99B86FF1925B340C62B2A651E016EB2
          6494B302D816C1106964C8E5D9B1950C76EC298E2B7B91BE10D9481E015AE989
          2C5F6C9FF7E90944C730BAD3C39C5E66D13C72CFDF978344F13D238798F5031A
          1887BE1750E1D422738C8D3C92EE663E320DABAFA08D39207BB279367DB79429
          8BE613DF015B641F270F67DE7C466D3936FA18EF0173F42107249909742E6773
          6A51078E44FACE7C93F57DFA0E2F65336F732FE5739CEA9E00A868B16C0DF323
          4D563A571FD8715FBA841322CF73CE57E2792550164F31C7785BD6C4A8C6C725
          796E00C71CB8F0464678F0C62C3A662E872AD8E9D0950A76CC3546271009EB3C
          D05DA62510AE940525C8606278760F0112F004BD8DE41E94887B325628348276
          397A4E784E0A89C7D8A64F4540A0492F70C8DFF7032B5952D47C10C03CB4F2EF
          FB7A6718BBC802B0C1A066442F3615850100541148CEEB186F5F15AA5C0F4A4A
          6487C107F4AC96DE30E3801D0A90626208F1704A7BB25E8C0E068039A21C191B
          5969A6029DB7D2AC801DFC2FB7DC38F2AC441FE17F324364E7F39FFF7CA38C67
          81C84EF2456487B13CEABC1D2203A56A31A2F3C0387E9D7684AA4BE3801DB24F
          0486338BE1985102CF647FDADB99C2E69EF6293DD1A7737C8E5165BFD23DE433
          199B46F972E80963C17FA2EAD99600AF9121E5D940DF6D5E8C1BB090EE06E402
          1C5D02168C1BA80576DCCB1C2D55CA62B67BB01E9C3CC6C151D007BCFA280FE5
          0338F88F814BC7BB32D2B31C3C890FC81A4024AB2E8E023BE63C8B568840E187
          8582307C4687A4B14FB7B04BFA9C10F8D65EB44E400FBDB25CC07A528487532F
          023DF875BEE22925C98890FD92B69AF9C017F6A2FD7D394D48678D2AD8E9D095
          0A7608BBB2A3701618C8B33A3EC32B9B408771EAF25E5E7617283036B324A6CD
          4380112EBE23AB2A2D8580CD72D3C08A888EFC6ADE1DBFF7FD941783491A5899
          9BCB48E1014A214920970D46930800C2D1D919E3F72C8B2D2F4A009B7F0ACB58
          7DF728CFB6F923F0199EBA744BE39A662F80A5A471D2D818880C4686236F1D83
          4C248EE7CA1A338C1819E627796B351471586A9A05B063BDF03FDE0716AC7DDF
          591D640DAD3BDE77CD0AD8E144615064C5277C3CDF61F13C1F901E6B7B7AD680
          F8386027D3BD3C93E7611491F1D6CBBE26E3E8097B95C739F504239707BE9B7A
          957AC2FEB677EDF73CF7C9319619064B414029B022FA2F8D9851E8D9E9394E25
          11FC4C974DDDE4330C4929421C697468574E191F10C160E774218FF0EE526631
          A49E53D98E2EA7B3BC9FAFDF53DF3C1B932C0BFB29652BC0C3E05DCAB946C60B
          90D1ADF6FC2880066C48A33277F6893119E342E538009B55F3E856BC366A4FD2
          DFB946E41B1E9BAF9FCD4A20B6173B029F924940A5F44BFB7154D4B9A44C4BB5
          8FCD073E66AFD9E709782E27A36556A8829D0E5DA9608790A3C04441328A511A
          3A19D9215C6DAC54649487ABACB8D3255E031E03CA515A186106782C45B35142
          8DA2A69C53A0023E36278FA167F14C9458A97C3C8FE7201C182E048467EB1283
          85423737998E42B18D4B848EFB9B33029970766E6854F514730F701AB7F1F344
          5D69696CE6C05CF3928A329A3F217A9E2C443E581B9E73F3648DF059A5B7D22C
          801D4A99838197571A274FE428656CFF02AF0C50D7B4CBC326E15DCE14DEF52C
          AC31CA8B4CDE30AE441C33F2388B1515C76D2A8A2FF0887DC7602EBDBF19D991
          01E09EF404799CAD0AE8A351E957F84FD481A1957A82F1B5146725F11EBDE7B9
          801D91F52C6023E2A1780D50ED99BA2085314DB728FD9C7D6ECA689EBDC36016
          2161AC73AC9147CB711684C75EFA2EDEA33FCCE97CA9A07D448F0013E9C5A7EB
          811F86AD312F554121F600E0916087CE1B0576F05119011D07EC9067C09F3565
          E3E0BB51D156CF498F735E922F9C99AB41AF9A6BBCE13C305B868CA22BFB6C9A
          F9884D66CF6574C7456671D2CC7263E48550053B1DBA92C10E41CDB096B605D5
          77814876C54E0F1EC14541528EBC64145B5F2A987B030D360DC0939578962284
          AC2A4D3608057428021EC4ACFA2352E5A2A0CBB402CF4240505E3C76BC428443
          97187BBC5EC69B5D88CDCDB8C490CF66AC0C0A02294B63F791B19A2F42D99A50
          04AB4128A385821DFC279A958769AD17DE2D0D4B6B932910E9AD5BE939D8CB41
          B3007618B9F89F61C2E004FA47811DEBCE18C93E3594EF2C9074A23C83806F3D
          0F83A2CFB8920A45C68952E479323FCFDA01E071C00E399E604706008F7C77BF
          D9C7E5D9CE2CD94DD6F2383380FB008F3D0E683040EDE93CB04EDE5E8EECCB6E
          F3F81E406078933B642FDDE419801DA9CE9EAD1BDD10A912CDC3B3D9CFAB9B05
          C0301719A1DB8073FB87FC5E6ACA5E72A23AD6C925D23DAE516B7F594BE733EC
          2D7BCDB3030340DB52009E12ECD0AF978AECE0A7C5801D7607E703A7A5EF1AE5
          4044E41B209A99001C69AB213D3C237FF4AA390076001F7A75D419ED51643DEC
          697C9065CCF186B95BC915DB2AD8E9D0950C7678D3B28125C6BE9482719FECE0
          4B19506414DBA82A3136909039C0C330F57D84DAE5287F0AACCCD725F8181EBC
          540002B04001F118F695362518E46F4B5360B8006B5DA3DB3C18B779D1F38312
          1E77CCEE4949F1701A67E6D6026B7D4400338C8CDF9A5C8960C7FE678467A527
          EBDA57444294907752F4CB8577795A672D5D689A340B60874186FF7978ED37FC
          3FCA038BFFB3C1E32C811D060523C233E05BCF635FF71D080676B2A787FDCB70
          27475632D861083112198BD99C506464BE083DC758CABD043CE4F4A854238638
          C0436E8BCC9BBB34C0179309E0F918D91C61CE59656535608C4E22CF9DD7E114
          EB4B97B4E678352B8A791606751FEF32D4E908E0C9FB6CDFB094444ED2EB19E1
          31AFAAB501657DA9D8F351A6E0192B508E57814B6B7AB92060DC34B68CEC8C9B
          C6C649499ED0E3BE6B3EE0474F906FF85704D1B3AF06B09324A2CAC6CB06C1F6
          B19FEDC1519937A388FCB20EF6B875C934FE49B513596AAA60A74315ECFC7313
          C160F42CE480A8CD457150622E4AA1CF984AE219101A9523ED225819598B4DED
          A0785435E375F39EC04F438902E32DF22C36689FD201D60025A9350403F0D157
          658EF0CFF2A280DAB82978097678E428274A773EB0C38867185DC960C7FC12AA
          AE6C6CDB05D27E8F4F1943949779C2C780E24AF6422D354D1BEC303879D2F17F
          E6D71BD328B063CDED615E727B6E96C00E4F3A6705BE655490B17D11ED043B19
          D9598D60270DE34B19F4E49C0A99222B645F9EAD1845008F7BD345BE8BCE9062
          B598738B780CDF89A6D383C02AB0E25E5276C8733C4F6EF4F55C71AECCD8E937
          73638E14B8E9036B409A314B65B3EEC6BC1C72DB98CC1F079DE7B15E004FB78D
          C242C8DA65D1097B1EAF021F64EAE59C139D24D8610324D861938CA212ECF89E
          D512D949A2433D3F99C41E0288ED6BFC8B374639A24791B93147E60D3F734000
          3F8B49E59F3655B0D3A12B1DECF04811D6987B216027CFA210BA9418D040F88E
          CACBF63D723FB3FF84EFA470A42F8CBBDE362EC5E3B0A91076D6D6CF92CD3CC2
          8427C1394A1953F214AFB153C4C04F5F18DC5C10C6E6270FB18E532DC8B8DCB7
          4C63037646A5B189423194F2CC8EF9BAD2C00E65672D338F1C90959FDE570130
          BDC1141823CCBAE3E1D53267974BD3063BD696C1BB50B063BF02AFC08E0223B3
          52A08081EB19809D4C216274F61911A28B651A9B0802B0B3D2CFEC003B9C3065
          64E75260C7FADBF70C30BA88F1EBFBECE951C4C83277E42E230B6F2EE6DC00E7
          15A0C220E6D8020A44E2C80BF7E774B33600F5A8C3EA64B775A723F02F1DD717
          4120AFDCD3FC64197CA9B6CB61CB00D80C5B86ACF562E81B23A3D6EF47EDAD3E
          225FC94A732C3A6ECE814DE06FB155E52605763CAFB5CD34B6510E44643DAC8D
          2BABBEAD96C23F49D63DCF32E30D8087AD91B26ABE72F97D94E79FCD1D3B847E
          10095C6CA1A66951053B1DAA60E75F86919D71AA9430422914870401071B8DB0
          EB13B8364F76BAB779327776A186958DCAB8A06CB241219045C013DA0C0A00C1
          8153DEE1F9F8C8BDB2C91C00E27ED9A3A72463B3C1294682D2FB71BA51A7675B
          140CB822F8BD8E023BEE4BE0FB3E1DBD819ED5E2815A28D8C127D69257974234
          57C06816C3E8AE51561AB2E6143603C6CF8CF82B9D6601EC3837C11853725D8E
          3D053C5F25293202EF2B3D0DB8CE02312218EC641C5020258B01D70776F023DE
          255701834CA75D4D6027233B0B7D26A0C19E0776010786EAA8020F9C499C4A19
          49A22FC62D40924E263CA72806A092C6305022FAEFC26B973A3F9A8E311104F7
          EBEB564F67662F173208C805A296D396B1AFC845C62C671A7D8627C9CBBE0A78
          F391B3AEC046462201027A6E31E39F14D821CFC813D91D6C1CEB3DCA98A74FD8
          1C78899EB01F97A3C4F92C90E89F3D8C1FB28AA988249B105F8C0B88F1011926
          9D1F7F008AD66ED6E4D928AA60A74315EC2C0EECD858D96D9AD753D525006854
          1F0D1B8712A3102832C26EA15E78DF45617916DF45903A9047A81B33234DEA0B
          C063435E8A285B630798788828FAAEB0C48BE909242C6DF671E6280FC9663536
          CA92B2EF332810E3931713D861EC1130ABC503354E9F1D6B9915F00867429BB1
          C9F0E8467890F5C8D4A154D614DC7277669F759A36D8C1FF59A0808C60983082
          E653B6D60DD8D154D43ACE028D0376B2F474F60F21EF567AE9E9CB053B6437C0
          9BF3E77B4615B6C98205F80020195540603EC273644DD996C018DC3B1D491A4E
          93ED0B9927111D0D71DD8B8EEBEA09F3608EAC3BBD96E96CCB9DBA4836AAC685
          17E945F214003246DEFC853499CC39CFA22FC6CF16A09B17A37B260576DCB35B
          8D6D54497B5924F449F6D9B99C56122B81CC03A730DE90EEC791CBE18A3FBC1F
          D5E7AF8FEC3BCE06FB3E9DD4F6E64A29DD5DC14E872AD8591CD8419416C19679
          CD04EDA8C38284671611A06C089F8556D16258780EDF45695260043B814E7011
          620EB632DA28317C345FD89650E6FD10D9E121A2D0FA883128AF99B03447363D
          C5B050CA3E3BE606B09AAFCF0EA20428E4CF7DEE738DB25F2D06FB42C10E1EC1
          1F5212F1238388B16CDDB3DC799F9194EB4418A7479D50CEB33F57224D1BEC20
          40C13ECDD2D3F6ED7C911DC080D302D8B186B30012B2D74999C636AA284B7AC9
          CB92BA9C3CB3F01C254D12EC586FDF951534455A44F8461DACB75FCD19F9A7B9
          323D412E2C641F33F47C9735620CBB00D5247CAE9800F9B210396E9E8C9B51ED
          403CFDD647D9230D58908669AE2621BB3D2F70871FED33EB098C7B6F1ECC3179
          79296F3E5960CE453FCC0FC3365315C7919F93023BD96787EECEB360A3A25932
          48B209353D0ED4ADF6B39DF8166F70B69A7FF20B5F78658FD8E7E66B2111403A
          02E0218FED1F3260A59CDFA960A74315EC2C1EECC8BF1626CD3E32D2DA08A23E
          22500113C22D9B7E12A80B21429B82141D017618BE42D714A9E890DC52029320
          6370CC675065A52FCA80003076CFD047D2AADC8F97D93C29D12D8AB05062EC11
          360C0A82D91CCDE759F17D1426B0C3F85CE975EE93C689EC306E183A141383C1
          FCE163BC95078DBB446E5827601A4F53A20C77FCB5D2BB652F966601EC50B8BC
          8B0C1FDE716B3FDFDEA444ED33DE77EB4F1E4D1BAC32E0C8098E11C63A8392D7
          B40F74DBAF8C82F2FC06BE9CB5E67C29FFB2788AE7B2B79603EC20D17EDFE77B
          4448C8C1F92A6891E974920837DE649C2E842FB35AA86762688BA497FA08F8F4
          0C5EC916BC388A1FAD191D49FED01164D07C0516CC13B923951A98021EFAAA81
          2E07D1339E93AEE7BDE7C8F3DEBE670FA4AE9C8FCC2FDECD33AA9C459E691C79
          60AFF84EBAFA526087AE4EB043BF8E0376EC3FB28413C55A9331A3CE0C3B7B92
          4D71532F589B2B85CC4B4678F2A28BAD0BDE98EF0C1DB207C830EBC566A39B45
          C7564275B60A763A54C1CEE2C10E8F915C508615635E5E3665338A08335198CF
          7EF6B30B4E39438435C1291586C2F48CE99570989240A380294506730AF6BEE8
          4E7AAB18E014B04D3FEA80A3FFB3A9CD8D79E2F5A22817AAC4CC0F03C23A50F2
          14C07C0AD3D878A0187B84CA2C36245C0C2D14EC58CB6CD2C7C8012CD3D8E459
          677052E47DD577CC1D03868189AF19CBBC87E670B59C7D1A876601ECA4514D2E
          FCE55FFE65B386A3CA0F23DE76E99BF69AF59BA4C1388A18EAE692A3A52C3DDD
          9736E37037B0EE19188E52689C0F983660EBD224233BF97DE611F8F8F4A73FDD
          4449E6ABE069CDCDA32809DEA4271692F29CC0241B708AC494C69CF5E1E9C767
          BE83FCE98B7A9425F0B36F902B9B1BF791F9B07FC82EFA145890B93029F96D5F
          19AB31D231E46BA600D3C9320A2E7548DD7933EB6CEE3305739CF32DD6D8BA8A
          EC002274769FBE23A719CFD98B2A9B7D2E74AEF0699E83152DA613E8F0518D7E
          B3EA9C670378ECCB2B89001EFBC01C591FFB42F493B3239B76CFC71BD6852EA6
          23D840D66B25A40256B0D3A10A76160F7610212BD202884855510964BE8D2302
          03EC506414C2A5BC9E8C0AE97259579F902BCF6E505A8C59AF9EA9BC5FDF38F2
          EF141DC04440F71D7E2F892016D5B1D1193194D8428D42428621A1A88239CA2E
          DEA3885096E6272D8F42B026B3E6191E97C62950607E013D0663024B9FC5CBC0
          8EF5A7DCFACEEF20860CCF53A62E984F46CE950678160A76B2342B236DA9C10E
          024C193EC00EE3C47E18B5D7382B1823783F1B724E3B95937CC07399862AADC9
          33F579CA79A7C989048E6954CF1A997FDE71064F821D72BB2F6ABA1460278911
          AC92263968FF93ED7DBC90CD3AF1A4D42A4638997B29FB80612F758DEEF3DE33
          A653CC78A5C371A8E0F1520F74C9F7642A3430245D9A8E70AF516743FC3F7D96
          6752C91F46F534E40E7DCF88CDB436570202B27814C023274559320A42FEF2EA
          2F94DCDBF75A67EBC0B9310AECE4D936DF65AE44E517CA53A2829EC97E14F167
          B4B37BFAD6D27AE3578E2F3AC5352B951E274D593449268BFDEECAD436732A5A
          3D4A369B4376A27374EC4651F8592BA9DFA50A763A54C1CEE5811D44C0895C48
          556118F4A578241172D213801DEFE7DB308432E30898524840EEB4CD991B9222
          E17922D0282FFF7FA9FCE45464C96B141925963D5DFA363B459B4618014D89F1
          6C2C0484980B6306768041C6D27C2905043165C9005D2D86FA3860272B26514A
          14AFDF3134F098541B808782138EEFE3B32C5F9D072BB3A42A8FEE624BAAAE44
          5A08D8C1D719D9592EB063EDADD95FFCC55F346067548F1A644F5973066EA61B
          010CD33CF362FC59C618EFE2DB51A55C19BB1C22649BB1934DB3E8A8C826950C
          461110CF07F8F4558A5C4AB0934E3173C910E7B0E8030FF6A9EFA49780074E1F
          D1FBF9BE134F016E1C622289783E1D22408EC890FB92FB65B3E251C65D821DBC
          E7F21972C83D47F1AF316665B33CD03DADF321BCF9225D0C5BFAC7FAF2E893C3
          A32254D61A0F039ACE8E7A8EBE3E44A3C8DCA4638AFD61BFF4A5B5B333E83940
          074F913B74EA42658F6713AD626B00EABECF73F6F192B5B30F3D1719676F0257
          573201361CC859C25CDA21B9C6D931AAC014D98CA7E9666B46BFCE429AF1259E
          B3829D922AD8B97CB023440E8830AC84954779DD1180234D4B1A1B25369FE793
          A14160DB8C3CAB8CA634DC7C4E9A0B63C846A40809BB85809DF295E2323F42E3
          947D5F9A0D61999E28C63325B6504F148549A850F21431E132DFFC30CADDDFF7
          50368C8B85167298555A0CD8C906B479E626F3C19DD9C2DB141DDEE85B6FEBC2
          23C99B979DA0BDE7799F756FD452D12CA4B1A1EC8DC5C0CD34C45169130C5246
          49F6A9C9E8CE34D7CC5EE5A1E6A8C07B40775FA52BF28411E5CC06834A3462D6
          0A1324D9778C503C425EBB18C47DE9BC4B0976C8C1B2A1B354BABE43D24009D0
          400630B0EC5DDF391F1F30D4AC8FC891FB675A937B31D87D9E7EB326F4C4A5CE
          B024F97FCF6ACD1989E6CD77F519D6D9FBCB3E32764EAB71CE782E35D165A290
          6C808CE2B9ECC1512D22C8C82CF8E319169A6A8EE851A083DD91699FEC912ED1
          A7996E6C9FFB3E6067A1E740F08C750098E913FBD3F38D02A1D944955E715ED8
          77AE964AA78B21BC4F9FE20DFB9EB3833E058647ED4972005F97CD859D519C55
          19872AD8E950053B970F768004DE34DE5B1BC7CFA39449097628B1F9041C0062
          337A1E86124F24854381F19819B39425CA8C229CEFC06997F09AFFA5C4F2B0AE
          A84BDFC1D9045636384F232540192F543813CCD6432A1EA152A6577489014AC1
          102C0EBAFA3E827A25D33860C773534A8C2BEB6B9D532E9495B1DC47181EBF8F
          F2E89937F7704F8633704D405F098AEE5260C79C52608C0EFC2C75924777A981
          85FD25A5C8A174C6A83D2CB5A56FCDEC27CE8B6C74482E2D07001B87449619E8
          CE9AE0BBBEB30FC6C78073CE08D0011C198DB34AF61D47410976C8BEE5063B74
          917D9B4D3AC984BEAA6C097680F08CEC90BF7D7CE05978A3DD4BE4508601F992
          F2D5E7E899ACC2452EF8CC429B2CE6D91D86346F38035B54015F7401837B93DF
          80AE7446BAD5734C3BBA675D014DF392D5F0D804E6A894C1C6696D81765110CF
          E0BCCB42A95BB028CFD776C95E3147E40DA71EB003142E549F9A77863AC703BB
          8023255B518C22EB92D5F2448EC999959E31B114440E008AD62A530247C9017B
          BFECC734CE39AB6950053B1DAA60E7F2C10E80E0FB442E6C1AC6FDA8DC664A47
          49D18CEC8CF20C10C23C50EE9795756C4CBFA7B45258666EF4B84A2CD3147C86
          D0F41DE979EE1225C04066C064794EAF0B3DBC697EF240651E9C1D050809FCCC
          6966F4339C28CC954C0B053B9E9D71CBAB98600738298D0573C978A6DC18CF8C
          26E0B18F121467CA047EF7DE3AAEF694B685801DFCCB590054672EF65257D9C9
          FD9525EAF1BF74A6BEE866EE33F9E03CFA59C6779A7D1D801BC5579C39C2BB5D
          E3DC3C8A2C03D60C017BD6D867B9BC6D821D46AF7DC4DB6F4FF5397A9612ECE0
          43DF0734D24D646D5F35A84C634B674F3A29FABE53F482CE63B091DF642C4042
          B63366011D63CF72CA29F7C7013B99FA866FF100590EF848A7EA03BEF8171F28
          A34EEE8C73EEAC3BB66E26C26289BEC9F432FBD09EB4DEDD2825BE35F79C1F74
          8F48EB42C95A025519D9613C5F0AECD833D97C77A1B2C7FC009F8C72BC249AE7
          FBFA0AD724E129B642F2143D304E93F06953F285ABE489CBE58B74F65AB3ACA0
          D7D7649D0CB6661C3AE44002D459CE94A860A743AB15ECD8FC84F2A4C08E4D22
          958D80234847859409527D3432D56314F93C652C62C4B3CAF348981294525B28
          110A8CA094527639BCC31B25CDCCE53B29D0AE21EEFEBC43595E94414E792EC4
          6B47291220EE4DD1640599512977BECB335917C08A70F1DDD3F21066DD7EE335
          B6CC635FE89C8F03762824E7751828005F5FAE3EC58D1FD2B861E8F4795A517A
          2B193D04347E719E82713ACB82FA72E952600701160976F0993DB5D46007EF30
          4A78C329D404FCA3FA4D65C489521501E65D663C4E235D023F910D22B2223B7D
          7D82F097482C4F67361F060866B9F1DEB4C08E881E9DC449811746F56513E1B5
          FE19E1A52746C93FA019B82153CAC8217E11F14F002A7A79392587F1B139A257
          C91DDFC948ECD373C0AFEFB3A718D60B4D9F752FD1893C286E8E7DCEE5FDE5C8
          FF12AC65541C60EB9ED190FE9B60C7352ED829D3D82E15D929D3D8C6013B49F4
          34FE751E96A14EC78C6AA66A0EE9D43C53859781E871AACD2D25A5A3B504B719
          45ECD3AB9E0BAF5BAF740A19FB528035E3B017D96F6C200EC4AE0D54AE59F6B2
          5BCC9A4D922AD8E9D06A043B844C19D9E9F39E2D35D8E161114E067608BC3E25
          40E0106CFAC8500484CF283266CA4BAE3C4146B110D88C5FE366A0312E08ACCB
          0D473B43C07B2B058221267DAEAF425B96CE36F60CF13B67702981935E2880C7
          330170D666BEB03B6FA0E7F43D142680374E659CA52482CFF881366B48992FB4
          40032AC14E76521F0576188DF891919379C17D86027E2094DD0FCF6579D53ECA
          9436867D0A6BE0C7BD576B8467A160075FD94B9C0FCB01761005ED9C03506A9F
          395331AAB715B25ED687B1C5504D6377925E58E09E9388814BFE300418D25D32
          263C6B0E936767B50A5B52821DFB27C18EF495E5063B22FE227C191D617CF715
          45C08322E765E9E9518D457D9E0CC0577946C4BA39E7886F7C9EF384817BB9BC
          4D2F644A353D91E96C5DCAAA921C629E83D3E652FC4BD718B735C8C20D64139D
          4C172C44CF5C8ACC0D806BFEC9CCAC2C5812FD9A60472ADB2C831D647F92271C
          A2E40B39D3677B649F3F8E933C93646DC629C0B054C48EC9A69E25B0C537592D
          B04B788213D97C7A16CFB194D5FEF036BB84BD85B7F161699F583336624676B2
          A844053B8BA30A769680A695C64601F00ACC17D961AC67535146FC284F5B969B
          96F72B44CD1B9C1B0FC0A0BCB27AD45274F3658C51FA197AA7C46CFEBE480121
          CD6BC7B81121202C2FD5038271613E0862F707AA3CD3A8F42B44F879D6CC6BCE
          14AC699C373117949857DF4FC83140C6A99E03EC30AE285A4AD01CF7811D9E37
          FC4811A5E1D82750F1080F6EE61B6777FB51C51F28120610239A82359F787E25
          94D05C0C8D0376CCB7B4D2E5023B59E65D3493510A38F02C8F6A0488E4835B27
          46B67D6E9C0CC649113ECA0689F62ABEED0368641A5E9506C8F9829FB23AE4AC
          D2AC4476383CFACE07D04378929E0056E6ABC446BFE1A934D238A93C5F3A36FE
          FFF6EE6DD7B2ABCEEF38757215AEAEB6A960B729834144B9A1C1899434B9E020
          B849F208F012BC429457E011101212577D13E5223751E44890764BD00E526801
          2E8308964F7151F850761DB23EBBFD8B860673EDE3DAA7E5DF579A5A55BB6AAF
          39E618FFF13F8DFF18D33E8DBCE0F5A863425E53429B52BCA5D3C6B435D50774
          3707912EDF4D776BB3640D99A3672598D8150919FDAD0F8E1A40EBEBB1FDC67F
          7CB7129F60DEB3739003164E23D8F1FDB12BE45800B774843AE879C10119F66C
          021E81E849BF789A8C9A6B92ACFE4C2EF58976B89612709EC9DC9194E027B363
          FA6F530950412F7F2BFB9FE887B16457C01DDB993D3B67BD3AA2C1CEC4B6053B
          94AF899F608793B9E400526C94F018EC1C7649D7A495596170925D9BF7EC5064
          9C64CA9F63C041583A654C80918C6A36F57B8EB4D924E39851C60CD82696A105
          3B1CB11C65B9DB8935821BC6DF6A4B96C2F77B5A5A5E902953ECD99442AC7B83
          B1B9E07BF5599C0DC633CED44921EBC480318C0C718E073EC8CB553909F98EBC
          1B41FFAE0B760492E443DFAE0B7690378773EC39A4A945273F4B35F9FA9413AD
          ED0C2CF9CFEAD159CE501D86FD063B32B7FAFB38839D60352E597806D558ED76
          50078795EC0B22E2309E948DE00472A2C8ABB6D247F3CA614A6A255FEC6FE024
          9EF67B81F6837997973F7A367ACFF32DED79E07C79AE31D831270F1BEC98A39C
          AA75550774BCEFE78CDADB49CF2EE9F82490387F79C79B6447BE832C2769C24E
          ACDBF37310E8EFBC9F88BDE3D00BD866DC5F70427E3987E697A4D56E4E355BC3
          C1A4178D0D9DE9B995C0B1011CCBA366F139D8AA0BD8B7AC4E8DC1087DEE3E92
          0BFA5F526FB7EA8B1963694CC7BD41BB053BE674DE8576D86087AE9718352674
          0BDF471FAEDB330CCF48963D9F80810E3CC9B2D3BC0789ED1250B0E7E493DC93
          9BA5A0D8FF2573C60C91EF4D1D5E4436E83ABE099DC05E8F4972FDC366D203C6
          2CFBE87A1ADBE168B0B3011814591B4BBB8C1945B074E24D821D8147829DFDBC
          A57A09134550E23D3B268CE0673EE5C524E6640A7628194ECC9211D3566D4E7D
          3FE5458182B130D1B267C644DF440695624CD6CBFDD2774BAB53DACCF85092B2
          8E1CB1831CCF496979368A595FA9955DB71A9192314E5EB2DC94CC491EA16C3C
          0465092464FE8C2165BBDFA0CBF3314029A1606C19DDA3063B10F008E813A872
          50AD1AADEB536DB6A2C801CA4BED185E41EC79D9ACBA1FF4F577BFFBDD9D39B9
          2ED8E13C8DC18EFE38CE60C758C9BC667F8579B0AE6DDA216BC9D9220BE63BA7
          FBA4DEDC4D8638B31C0CAB50829F518F668533C70CD3031CB6B3FCDE89904323
          F4FF78ECECD2FB5712ECE4C85999F0C3063B59ADE750914FB66A3CEA9F2ECF1B
          EF8D775EE2BCE450093C94B0F91ED96825387981A5B111809269C192F94ED68F
          6A2B04246480EE12B03B90879D98132B64C0FD6CF667633D071B4B77EEF6DDFA
          47691F47934DF51D6C0B5D659E1ED63E07C1ACB6E7B01C4EED188C7068534D10
          993E88337D52474F8F642F8BBE8BDF4326763B11960DA057DC972D23D7FAF7A4
          AA26E8123A45A04C8EF9467487B15E774A9C40D88AB867E4AF6873CA0C37E10B
          908D31D8A1FFC695777A405FA52454206FAE9EE515EC063B13DB16EC98143128
          14B1BF2FBD3B26656C821D027C946087E1945D73F4B4CCC39CAD3579E35C2693
          43B92DAD0CC89E8E7B3B38471497F6FA1D46D76A14076853652DD980EF3938E3
          8C98CCD752F99FC9CD09E388A79CCE4AC77EA1DC8C0965C7E050300CDCBAC30A
          3C37A3690999E19CDF19739C73C68A57EABC194863C34808F228BEFD063B327E
          D9A06E4C7370C626821D18A7EC09E2BC4559AF3B24C3F73130C62DF5C79CB875
          C7DB9E47CC7D2B3B36D693B725CCBFECD97172D426F635EC8679A61C83BCA76C
          5470BA543E050EB5394EEE63643963029EE3947BCE53DE0DA48D6469D469EEAD
          1D7196388702E6930AC48E8A7967FE7946F3C5BC5CB7FF24656C0976CCC9FD1E
          CC3243970B125C1228B343CAD9CC610FEE97559999BC099EB3C8DEB0779E2572
          247161A5CD01176466932F3FCC3B8AF2AA05FA6CA91C53FFD025748BBD47F6C0
          B0B1EBDAE17B39ECFAC8FCC8DE0CFA567FD08B475D7D30F724F4F4193B47478C
          656C742DDB629CF352547A72BF9C46191BD84E817AEE9BFD541298EBEC2ADB45
          D6CC5DF6CC27FF820C1EB703AF6D79371059A683F5B54FB67EC92F4AB0E3F9D8
          653241274A206FA294CD7CE28F485AEB3FB2C85709644300CCDFA18F55489CF5
          FDAE0D7626B62DD849F68C41E1A49A244B27948C7B7652BB7A98CC464ACE4C44
          CE4126F088722C4A4D764B269D5231419732769C564BE082B5F1C5731C098A98
          62E29C510E9BCEC4C86E30FEF6098D8722CC50468C50B287077D4919E3689C18
          680A8692561EB1145C21C79932108C9E676738391D7977C4712053CA29C9C949
          024272620C8CE37ECBD81822BF2FC8897325B0DC6BCF4E96CAF73282E4CD3D92
          AD4E3DFA6E7DAACF8CA1E791B9E694A44F4FEB849E4DA2AFADEC70C8D6053BE4
          8AD3AEBFAD9672DC8FBB9C4F00CAC1A227E8294E976CF3BA8087E3218BC82122
          738C7C9C82E3907BEDA083B4CBAA8E393AEE2B21F3399E978C6A933EE4149E97
          40D9BCE394726A38A49C5E2BAF4B7345F6569F5B55261FE6E76E2B14EBA0C3DD
          4722896E75FFB9E240BF9A87FA95C39DF9B844DA6FAEFBF477F7C83E34C18E15
          15DFB76939A16BE8EDBC685612687E674D20BB1C447696CC085896E658F65129
          CB53EA9C009BAD1478B88E5A2229F0A017D26782AA31C0752F2B61FA3FA79C1E
          E49E5939A283CD6DBA7E695F2AFD6A45623C7ADA981D45F7B0D3EE2D89E8D9C8
          5A5EF1B00ECE7A740B5F285513E4F0B85679E8BF24528CB344B07BE7D441FDBD
          B46ACA16FB1D2B578256C161F6A3D13F47D53D7C9D1C5060FCDC237E23BF9C6C
          9063C97172BCCE7F3B4B34D899D8B66087C397BD2E1C3E59A87547F272F29C76
          247810481C3443C0699721749F2C5B73E247380771A84C96D4B5FBF93CDE14BE
          00C7067EC113852FBB90CDFA2636459CFAFD4D3B179C79CFE2FE263EE529CBBB
          B4FF4300474165FF916CE2416AAA3916292990E5CEB2F6BA3D0CBEDB3D65A3D4
          CD733A38EA14A415894DCF1D8E48DE8DA26D0C19872ECEC8415EAACA8194B14C
          B0A38FC9C9DCAF870D76E0BBC615247DCAA19EB3F2739FA6B69E5C327AFA7693
          A7DC9C06E63B83EADD308E655D17ECD0018CA6F96F33B83E3F89BD4BC6439B52
          7A481E3826EBF6AF7110CDAF6CCACD4A4ADE9BB229C8BCC44DE4DE27273AFA33
          7BBE38E1D97C4E46AD3E9DE5D3D766E2189A2374B6D5B5E8BA198EA939E1595D
          E6C941F6718083C7D136F7396C56CD0508A35D228BF499B94F1EE9014EE7D23C
          E48469B3A089DD1120901DB24B26FCAE049E4CF46EAF37382C6C121D23181614
          D3319CEAA5A4A28C78F6EDB05B49F4CDD05F4A3A259738EBEC20BDA9AFFD2E3B
          7DD4FD1974B0204D2042A7F30D46DD686EB1D19259D9B87F9077DF682F1BB6D7
          11F32A48B232AA6FF48BE0E7A87388FCBA9F20227BED04F1EB1229E08B48247A
          5E72E32233E6F9A66D00FF429FEB7FFE8D60937C9055C1B9FBEAEFA59525BFE7
          77F8757C2EBE8084009D6D4E1E2601318E5D8E9E968CD07F568F12BC4B34D373
          DA98BDD2677D55070D7626B62DD8E144E418E59CB6B2947132A108AD4C8ECB24
          37C119B7BD967129754A526035665228D3D1609A1014F47834AB7BAE1BE7ACAC
          C82E98D45902E7ECE4B86906D77770528F435E4C7A0654C068D26BC392B3ECD9
          F25C140E47ECA0CE1725CC994AF915232183C398AE7B5F0003649C12F0B818C4
          2C7FE7BD0C07790F4EA08CF3AE07D9ED9412FAB3EF6610629C0408FBADDB9709
          8D116780B2E2B814EC8C474F1FB46426E52DE33B8D38D4B3511FF1DD022A3295
          80277381B13BEBD9AB258CA37E763881B994BD0C4B784EC6D671F09C9C93AAC1
          A627C8BE39462EF2924946766973B17190759555CC0A8F408DE34836C9CE61F6
          9170B8C97CF67E690B47C99CF4F7C84D3611934932927252FAED3CEEF5E2A0E7
          9D2BE68A675DDADB690E70D0CD0DF39E1EE694D1C97BC98A71A4CB648DE9D5F1
          14B0713E1A3F4E9FEFCE4B5939C3EBFA953EA19BD8388E233B64EE9385944BD3
          C9C6E828EFD659077921AB120A740CD925CBF33B6B405FD39502F4BC17CE2AC6
          12296FCED1D06C8F7EF12C9C4C7AC98AC3418302E32018D45E019ABED3FED86A
          FDACEFE85C2B50DA492F1C54F7590135CE390021A5CF339EC1DC2553EE9555BC
          4DE85AF379DCC3A93FF3025532B794B8CC2974EC9B649ED23063E667DA1A9BEA
          3AA87ED49EF84BFAC2BC4BC0492F7B6EABEA5621CDB375369B2C48140846D852
          6DD15EFD97A4CB618E27CF4ABBE48104EFFC5A00DF69ACCC4D952CEEB5A94311
          8E9B063B13DB16EC70EC4C08A5580290DD4EA6620838CD944E4AA3643928E875
          938682A438183059508ADE44A150C6FA5F4692C21C8DA4EF5F57D7CED09A648C
          A140C7676A462962A7C350089CEDFDECE3382C948A67CA467AD997A5E351F59F
          49EFF9048B0C052579D076F96EAB1C943227C0FD7252CBBA3D2714907B73085C
          821D7F1700CAF8C8347346FCBFFDB48731D4FF0CA2E56B4A59E0CAE0325E56F0
          7C3F27D3B3921563BB5FC54F063D9FEF737124971CF039D8D19F07CD5809EC05
          3C64C9F8715C657E654DC71AE4792CDD8752774FCFC778E8D7E370968E1B8EBB
          7E763881BD744BC7E306738983F9831FFC6027137E92D0231C3CC69B73424638
          2ADABBA4B3E82463C2D9E6D47248C8614E31A2270E928DE5889015A536E6BDB9
          476612E864E541F6D78AAAFB7286525F7FD227236E124E17878BE3E579D7EDED
          E45449A4981B9C6DBADC67ECC4BAD575FAC4F8EA5BF732B6EEA38FC7D2A6EC9D
          C8B1B69CA9DD5E834027D2979C76768E9C67CF8CEFD13E417B123247DDD4BF44
          E4866E747FFDC8D62E1DF020302197DA226831D7C8D0925EA613D900B68FDE92
          C1D73FFA833E4C699955CEFDEEDFD156F3C97769ABEF360E399E99EE4B89B47E
          A3038CC5614A79252BD90D41AD60871D1D7D82608E7A8ED84E17C77D539063FA
          5F5B2453E87F7FD7BF4B6314F4AB79CDA6E6043CB2EF3286ECAA7ED9AF8E11FC
          B27DFA854D35065939F6A99D6CEA8F7EF4A39D0A11C994759833FC2265C974A5
          79A0BDE6A26051609F030EF6EB83B8BF79AF9F52D2AABFC67256F33E763F2B70
          E7A5CCBBC1CEC4B6053B96916573053B94DABA150298B49C3C139C82E3E8F933
          078F81F7EF1C0C8E87EF89336C82C89E73525CA9BFCEBD644338211C57938492
          A64018C7A5EC8D894B11E4BC7C4AD9F7C6E1A104043A4A6D4CEC4D6E389DA10C
          19670A2501CF5C9A1762A80572794999E73E089C73C69A41623C955EE9070AC8
          CFD639E8EE6D8C048FC6503B1810D96F4A90F34739FB3F7951D9B8DA938C9371
          730F0A5900CBC933B694B136E80FCA8D6CA46E9F613226FB1D03062FC74EE705
          864B193FB226C8701F7293B3FC0F93C94C4985716474395B646CDD7C706F7265
          FC3C9F7B33C6396AF72C9F3A33631C391C7921EFBA97ADC29C24BB3FFCE10F77
          3E4FD27927831C024E087923F77416F9107C2CAD489385C83C8724013FA34CF6
          FD7C9D9E1921F77499C40239E1849B7F32DE1C8BCCBB1CAE1279E05CB89FB975
          5E4B1DF53BA7461697539AF9B8B4A2668EE7643CCF2DD073717AF435FD42DFA7
          BFE9720931491CE3AA3FE972F7C83BDFB2AAE37BE92CCE7F1C36418184CD926E
          F17BC686AC0830ACBEE7B869F8DD714F2779388EF24276C9737A3E4EA2F21FED
          5972ECF39CF4655EBB40B769DBFC8C79AF53DE45461E39A42923CAAA33FD44DF
          EF755087FE328FE871FA8F1E3416E33E5EEDF29DD93FE3CFECC761F49D7B6505
          3FABA34B89C21C71ED5EFA2495119B1C2BF3DBBDB37AECF9C98DBF2F1DB10E32
          9C77DDB09FFC208120196517FC5DE0C34EB0892939739109D76857D94E3A869C
          B0AB740CDF82CEE14BE57D52821DBA77B720824E57B123814536CCB12494F59D
          39E4D3BCD4CEBD02123E47124D6CF2F8DEAB2479C80699CB8A4E8EE83E2FD50E
          0D7626CE63B06352710432B128DE946298D0B2B926C63A277D449F9BD80C99EC
          8ECF380C29E371AF31D8A19419B1644B3806263EC36732F8FDEC83900DE02CF8
          BE9C7A36B6994236C1A224297B936ECCC0F85E4642B0E3FB4C64EDE2A0BA36E9
          887A16CFC4F152CEE6CAD1D74BB87F326F360C3244B289FA8EF2F6EF69AB76AE
          9371FD40A179F6387CEE9B236F29279FEB4A12A39419517F9E831DE3332AA951
          297338F5374722C18EB14DC6D4F7783EAB6B9C12F759F7CE08ED33C6BE3F6F8A
          262F29F930BE9E6B5D591923C8F0CA267158C62039FD383FCB12EE9DB28118FA
          3875E478298B9DBED487296B13E4712CB4212524EEEF1A4B1B4EEBC8E1E881CC
          25E399320ECE2CA7635DC01C385F4EAEE228723423B791DDF4FB711939F29760
          9FEC2730E594708EC9E19223CEF1303609788C1B43CF094CA2660EF05DC6DEF7
          26B8775FF34E1BDCCBEF9937AEAC7E9345B2E03E1CFFF370C434321FC947742F
          19C99E17F291CDFD7B4136E87573437039DB89040109769214D3BF74807B982F
          B1139CA9BCFCD39CE74C653F4B6C84CF940125814146B202373AAE64C1CA0439
          CE0B9FCDD994386E7ACC3C239B25B1C8E6AE7B996510B0E448677D484ED33E6D
          237F8237C9BEBC2439E3A2CFD899043B7470563223E771BA8DB38B4ED7EF7C02
          0EBF71C8AAA9DF737FEDA06BD955DF4FFFEE67737EF44EEC081DC3893726744F
          8E335FF7BE1BF736F65935904C98F5FCA87F0E3B7656E0D800BADFA54D823232
          1A9BBA4EF6B5910C49AAAC0B76D2B6A560876C8EC18EB930EE9FD4D7CA137FFC
          E31FEFF4C16EC11EBB6565E73BDFF9CECEEA5CDAECFEDA661C13EC6833D930D7
          46BD3DEA821CC442C6AC3409C452869924AAEF14000B463775EADB49D26067E2
          3C063B716E28189396F3E6A27C657164EB6476777B43F90C45937290380B590D
          8862CBB2ACFB70147C9AE0D9B84B29C4F930E9AC12653F094C346D4A9B7D9749
          471950921C610A61DEA8AC2D322036C8C934644330A51CA5B329B4319B1C398B
          EA64B56937B483A261B03946948DBED48F097CE228EF1698E5DE825417E3E1A2
          9CF5916084F25CF7FE00F7CB727BCAD8DC7B34F651CC19534A932C8D99A89C2E
          1438258E4E15707AC6756FF3CE0A2039219B2EDF99CDD0290BDCAD9420EF7E49
          39595E0898E0D178279BBC17DAC2D8E94B065F40CD598AD1D9CDC1F38C643932
          2C80E4DC71F8CC156DF0A93DDA751AD9AE3897FA39F35270CCB893DFACA2ED85
          674CE90FD9253FFA579F0B94FD992C1DE7AA8F6788EC6BBF608731F67763B5EE
          64446D33D7C808D93707C8BE9F27C81F57A7053A643DBA87BC9B5F59D9F0CC29
          11A5CF5CE491734F06CE9BC1271F74AE3997C4063911EC2861F3B9DB7C9C21F7
          E9EF043AC970C7D13696EEE93EFA755C59D4B7FAD29C4ADF9AE3E65AEC04DD64
          7CD88138A5DA480EC8754E2B9B5752B44B069A83262048A95D828A4D1F68A35D
          E698E3DD95D42D9D3C36A20D021E8E3D7BE1F9E914EDA33FF4574E33CB412E63
          2973569E3D97FE1FCBAA92A0300691F19411EA37574E26CB813F929BDAC2A6E6
          FD49FB29518ADE711F57C65A20A1CD92157965C46E081EE879E3A51D746EE489
          BE199386470D780479023F3A455FF87B3EC9E7D27EABF4554A6497FA7B4C7425
          D8895D350629FB27ABE3410964912C286B54B5620C76DB6FE3F7EDA971E88C3D
          57A36F977DA7923DC6D03C62A7C85BE45E1B3337231BF45EFA240931F39B3D20
          1BECAF849F20F8380E413A6E1AEC4C9CC760270E25636012B8186D8A4D968E53
          47698EB597E3840C719AFD5B32E6C906647936FF3E3AC8C95EF899C964A2519E
          26456AE94DBC044DF91E1374DC1742097162383414654EB5312947879E9231E9
          62C4DC8FE2F773137B9375D99E2DEF23C84B0519D799F487BEE15451328C3845
          9117846927A5934C0945B9D70642CFCE8050929411A7CF6525CD671C337DA9AD
          194FEDC8D88D19B15119CFF32BD928CF31AF14E6BB7DA76CA240936266A4F5F7
          D25CF5FF53129760966CE685A2E4322B81E9BB5126D397C6942360ACC9538E83
          266B8C4E1C84FDE80BCFA1AFB27740262B27DFE9CBAC96E5827E3317B4C5F865
          D5CCE5DE8C5FCA1CB455DB4EE3D861CFA62FF53599D0B70C381D60FE7BDEF970
          86A53ECF6944E66F0CA6F9950CA6BECE731EA78E4E8638A5B27402A7C958D111
          7E4EA6922DD61663356E2026FB1C116397002DC9907C7F82F171B5437F783EC1
          1E432F69A14FE290EA8BBD92156711CF1ADB9079E9EFFA5546979CAC9B8FF973
          2ECFBE9B9D08994BE95B7FCE4B36E9C7C89A4027FB228C53BE87BC662F954F81
          0E3D420662DBFC3C7A2AED26C71C485782533AD83C358F375D764816E9351977
          AB64E474DE6B96BE43DEEF9513FD5CE4CBF3FB37CF636C1234E4C5AB91777D4E
          065D49A091D90405FE3D3A58DB7225A1A5AF7268103D9EB2CC9C6C9815A6BD30
          9E497CC6991FCBB0A377FCDB68C7C7EF36D6DA9EBD6063B09555A7D8CE1CD77D
          58DDA30D093E92DCA0238D974F0E3FF92267990B21FA65B4ABB3CC8FEDCA588F
          3635F3207E4DCAFC3D778EFADEEB8006C1A42047C9644AEB8DC1382F5375A0FF
          A2BBEB0978B1000010AD49444154938CD3C6F88D4938FBE46B900DED9218E0C7
          910DC1570E813116E7F11096063B13E731D8219C144D3216310A2E9359004101
          995CC9E68F4BADA3736732C6308D9332CE6E26761C405732062612E793924AC6
          8EF2E630CD1B28F3A66393567BD366EDA568B26A4129C588A6AD14B4EF642839
          238C83408721F3F74DBECCCFB3E7442FCE80E5787F1E03C391F4A936A64DD937
          E3CFD9E0E8D2CE8338C51451B22F941BC3676CE3F4F9F7D1798BE28A1317459B
          0035C449CCB84659C69852960C680C29452C634A01EE764A8F7E30C6C6D33827
          739E7216B2CAD972FFB9F46B74AAD297FA915C317AC9F4715CB481D37010C753
          9F9031EDC85BCAF5ADF6C41918FB2AABA7FA25E50CC9EC1B4B329F2CEB691D3D
          6C4E3158E4956C90137D4C46A20FFC3BD94D7FCF7AC0A77E25AB9EC9E519FDCC
          1CE66CC461D40F27E5EC931DAB9AC62B871690250E3B79CF2A852B19E68C21C8
          32394AA6785CA18E83ECDFE31078363295C036A5719CC0F3F2FE9C25E8097D47
          7F90077FE7D4917DFD9BD2AB64CED7D989B144273622CE5B56F7A34F463D32DA
          09FD9B55B3ECB15A7A8F0B9925C3E4D9A7F666937782DE94C4451EB5216587B1
          11EE67FCCCD3836CEADF0FFA82EEC82973EC84FE9CF56C48FF6933A7929CE903
          FDA16FB212990356B2D789EE24EB91F704E9BE2F36390150F472563013C49BCB
          29CBCC8AB52492805E1BCCEF83C8B8E7C8CA68743CDD9A4A04FA9F1DF0FFD2A6
          B92FC88EB1CBEB14F443569493D41A5754C8D226FC43FD9B8351E815323606D5
          9E2BB674D62DA36F34FA4E61F495528AA75F9338CB0AB967A663D8556320D8DC
          6B9F9439311E6E601E981329C51BED7F129FEE99FDBA7E169B96C03701E7B8F7
          973C688F8481797AD4773B9D260D7626CE5BB09325E464CD19AD281793338A2E
          CA24D7B83A1343353AC4C9E83322AE18B264344C984C56CAC795EC8B4F93223F
          5F5A69499B13EC683363118512259E89AACD51287EE6DE295F32415376C768AC
          DBD07A18B421CE006518E53DBE6B631E8F6445A3D4E224A67FB212E0EF072DB9
          3316FA298A38CE4A4A17293CCA3B251F7100A3D4C6BAF7F465C673FC4CDB8DDD
          D86EC686B340F1E9EBDDCA1CF2AE9BACDA6967DA1A27353215053CFE6E64312B
          4AEE958C7A826C46417B18E883968EA55699712687DAA85DFA8DC1888390B9E1
          EFDA3BB625E3AB6FC660EC3436AB677F04F94CD2C3F3642E25AB3E06B5F32A6D
          F4C438FED947900C212398F2B6935CD94869EE2843FE3E5E99178C7E0C7E029E
          D1D948395B643D7A2C81ABF14C12C595530DCF73A0933EE4D871EAF4578EB54F
          093439498032CAC79C28C9BECDD1468C2BC063422CC9127A64ECCF947FA66FD7
          E912ED22CBDA9C1223F74B9BFD593BE3E0479EFD392546D1175949314FD7ED33
          3C2871D613484A9CB013F3BB7696F49B4F3298003B2B17AEAC64F83FC62A2557
          BE37C9A338E3E9FBF15E6312297634810319CF867B733987D81C3401871C651D
          1D9AA0277BECF282D524D1E6C4967F4B62C2388D2B1071D29338D4F694646DD2
          3F8C4D758DA592D129B96273C76022362236750CF6B3C21C9DE39992384A9979
          126559454F90B7DBF3B957B60F90B931F1690C3C4F74606CE82817E3157DAFCF
          53A1902401F918CB54CF330D7626CE63B0938C6E1C3793328142944BB20BC9D8
          8D2B2563766ECC5264F35AFE2D8A39939721314162C028E61C6FBC94AD1F196B
          C73339298F64A89636428F8159028AB4897288A3B2DF92A6FD1007320E565650
          96F60B8C6312C652A8F1C4B418B2C33A4FC9A0A6EE561B1997181BED8DB21B9D
          DD31D889639B311D97E763649205D45E0A2FC759FBD95E815A567628E5649D12
          408CC62F7BC1C6ACEC1C888F2B6963B96094B3361D769FCCB8893441A3768FD9
          D0719ECC7BA4929DCD4A88F13D8D2388473D20E0D1E7A31E1857EFB2676BD403
          B3331B322E7E873C244BEE994FBA8C6B0CCCB2E93765BB714C12AC927B8E569C
          903C4B4A3CB2DA906C66B2C759CD4AB9CC5269D67945DF708A040F7459B2ED99
          3BE99FD129CD6A4EFA71BCE6C30EE67E1EED8479912B7B2BF7B213C86AA5761B
          6FF7C96A747E3F6D0EA31C4787F8FFC659B09E93E336416C70F67EC5C98FA3B9
          DBEFE5330E729264713C5396EDFB53A541DEC7C44C82CDD9E91E134971B223E7
          0976F4439CEBC3CAB87BC646A64DE3BBE1667B3E3ADA19ABB1C43144CF6B7FCA
          D4C94EF6866DDA3F1C57B7537992C06D0CDE621B924859F29FA233E22BC5BE66
          4527F3213A876D8DDD18FB6637A207B527B291C4A276E6B085B42FF334FD6A3C
          A207C9464E9DCBFC489BCE63B9EE120D7626CE63B0930D70A9BD4C063AC23C9E
          C211C3323A3963D62E937DACB31ECB9E46A5955AF864620ED3E6D48C528E594A
          1D4FB71A4FCD19DB341A58C440E494AC4DC94E32FAA3D394F663DD7D46072181
          62C663DC6CB9C98DECD9AF31AE4CCC2559E32ADEA8F4C67D3DE3927B0E7E606C
          B2B977BF6DCEE658E39B15BBF4DB1834CF27EC8C75CE739B47398D11CCC1009B
          50C8EE3DAE868DFBA01214CDABA0EE9B4036F2771A2B00DA32EA01F29055B171
          25639D1E58EAEF3C7F9CB11C0A914DFFA7BD4935AB874944A4BC27723F97E122
          3A66743EE20846C6CFFB0ACE3AA223E28CEB93D1191B130F73B03397EB8C1BB0
          E7207976F6B2BAE33AE83C359639C4665C0D1EDB3D9EC23906EF39B92DA55E63
          C26953ABAFA33D8BAE5D572EBCEE77C72025FA842C72F013C4E5A08638DD09E8
          47677B5CB58F0F105B1D394FE09004E551719F944FC7EE8C5503D13DF3FE96D1
          AE8F7A670E1C92284C49DBB8C9FEB849D093D59EB1747029F89F5776A273F3FC
          B1A9F19B52F571D477D5680BB94852764EF48C49CED8FDE8C131E91399CB211E
          DB44839D89F316ECEC74D4A430638832D9D62999FCEE98491F7F867CD7BC0C9A
          EF3BEC11B463E012C596EF1F8F669E4F37990F4618CB2646C3B729E6CDEA69E3
          D24B0EE731199D84FCFFF918CD4DCB7814DB9CA51FB3564B633A963B8CE33BB6
          371B1B0FDA9EA5311E571BD76576E7F19EEBA293F59B83E24D8DFB386EF959E6
          DA2C17B3FC9D46266C490F60ECE7799CE7BE9EF766CCB23FAEC69DA54DAAE3DE
          B4D1511AF798CCF23E3B2349B26C4316731DF3A123F35C1CF7EAAC938FBDAEF4
          71AE318172D8368F4E30E636CF7622BFB7CE4EECE7B8FA8330CAD9C87EECC418
          34CE87A22CEDFD1BB3F5B39C8F7A6B69EFD498C4DAD4A9A54B658E6329E3383E
          4BAB164B07E3E41363E030FA062745567AC6202CCF38EA96F1CA338E49A579AE
          8D81E02698F7E0CC49895146E6B919F988CC9D25DDBE291AEC4C9CC760A79452
          4A29A594F2E734D89968B0534A29A59452CA76D06067A2C14E29A594524A29DB
          41839D89063BA594524A29A56C070D76261AEC94524A29A594B21D34D89968B0
          534A29A59452CA76D06067A2C14E29A594524A29DB41839D89063BA594524A29
          A56C070D76261AEC94524A29A594B21D34D89968B0534A29A59452CA76D06067
          A2C14E29A594524A29DB41839D89063BA594524A29A56C070D76261AEC94524A
          29A594B21D34D89968B0534A29A59452CA76D06067A2C14E29A594524A29DB41
          839D89063BA594524A29A56C070D76261AEC94524A29A594B21D34D89968B053
          4A29A59452CA76D06067A2C14E29A594524A29DB41839D89063BA594524A29A5
          6C070D76261AEC94524A29A594B21D34D89968B0534A29A59452CA76D06067A2
          C14E29A594524A29DB41839D89063BA594524A29A56C070D76261AEC94524A29
          A594B21D34D89968B0534A29A59452CA76D06067A2C14E29A594524A29DB4183
          9D89063BA594524A29A56C070D76261AEC94524A29A594B21D34D89968B0534A
          29A59452CA76D06067A2C14E29A594524A29DB41839D893D829D7FF5CB5FFE72
          27D879EFBDF71E3FF1C695524A29A59452F6CDA73EF5A937BFFDED6F0B76FEB6
          C1CE2796839DD5CFEE5EBC78F1AF3E0A76FEED2AD879FEDEBD7B8F9D78E34A29
          A594524A29FBE689279EB8F3AD6F7DEB3F7FF39BDFFCDB5BB76EFDFDCA9F6FB0
          E3B3C14E29A594524A29E79B063B1373B0F3D9CF7EF6EF9E7AEAA93B972F5F7E
          FAF5D75FDFD9B3F3AB5FFDEA2BAB8EF98B9D465EB870F28D2CA594524A29A5AC
          6515475CF0B9F2ED5F57C6B60A7676F6ECFCE10F7F78F4E28B2F7EE5A5975EFA
          78073B376EDCD809769E7BEEB9FFB98A02FFEFB56BD7FED99B6FBEF9D7AB40E7
          5FFFFAD7BFFEEBBB77EFFEA5FF77F1E2C507FAF3C41B5A4A29A594524AF93304
          3A0F1E3CB8E28F2B7FFED555B0F35FBFF18D6FFC97A79F7EFA1F7EFBDBDF5EF8
          C94F7EF2E59FFFFCE7FF7E15F8FCFF60E7EDB7DFFE78043B376FDE7CD1A760E7
          99679E11ECFCE4739FFBDCEBD7AF5FFF8B3FFEF18FFFFC95575EF9F2EDDBB7FF
          C59D3B779EF0FF2E5FBEFC6157774A29A594524A391B3C7CF8F0E2071F7C7075
          F5C747B76EDD7AF56B5FFBDA0B5FFDEA57FFFBCACFFFC7975F7EF9CA4F7FFAD3
          2FFFEC673FFB77829D77DF7DF7E319EC28635B053B2FAE029D179E7DF6D9DFAD
          829F4FBCF7DE7B7FF5EAABAF7E7ED5319FFDD39FFEB4B3B2D360A794524A29A5
          94B38360E7DEBD7BD73EF14F2B3BAF3DFFFCF32F7DE94B5FFA5FD7AF5F7FF577
          BFFBDDF555A0F3955FFCE217FF61E5D3FFCD3BEFBC2328FA5895B1FDBDCF55B0
          F3FEAA73FEEE339FF9CC7F7BEAA9A7FEF1939FFCE49FEEDFBF7F7515E43C79E7
          CE9D4FBDFFFEFB3B474F5FBA74E9FE2AD839F17696524A29A59452FE1C656C1F
          7EF8E14E19DBCAA7BF7BEBD6ADDF3FF3CC33AF5DB972E5FD37DF7CF3E6CB2FBF
          FCFCEDDBB7EDD9F99BBB77EFEE043B6FBDF5D6C723D879F2C927FFC1E78D1B37
          1EAE029F9FDFBC79F385D59FFFF7AA73DE58B5E7C3070F1E5C5C75DED555C478
          65A791172E3C3CF14696524A29A59452D67161E5ABEFAC46A8C2BA76EDDABB57
          AF5EBDBFFAEB957BF7EE3DFDF6DB6F7FE98D37DEF8C6EAFA97AB60E7A2FF77E7
          CE9DE74FBC91A711EC5CBC78F1B6CFC71F7FFCFA2AC8B97DFDFAF5971E7BECB1
          57563F7F6B15D8BCB7BA94ADE9942EE794524A29A594720649E5D52AE879B4BA
          7C5E5EC5168FAFAE9BF7EFDF7FEE9D77DEF9F22AD0F9C2BBEFBEFBCE47FFEF0B
          27DEC6D30876561DF35B9F972E5DBA75E5CA953FAE3E5F5B053A6FAF7EF4CEEA
          DF3E58FDF9FEEA7AD4D2B5524A29A59452CE2C3B8184159E070F1E5C5A053857
          56B1C5D5950FFFC9D58F9F58FDFCA9D5CFFE7275FD9F9DFFFCE8D17327DDC053
          0976BEF8C52FFE0F9FAB07FFC2BD7BF7D4FBDD5FB543A9DA43256B398CA0C14E
          29A594524A2967961D9FDDFE9DE1529D751157AE5CB974F5EAD547972F5FBEED
          FFFDE637BFF9DA4937F054829DEF7DEF7BFFC9E7DDBB773FF3D65B6F3DB6FABC
          BC0A7C2E5FF888136F5029A594524A29E5C83CFA88558073FFC68D1BF76FDEBC
          F9C1EAF30FFEEDFBDFFFFE7F3CE9F69C4AB0F3C20B2FFC1B9F6FBCF1C6E3BFFF
          FDEFAFAC3E2FDFBB776F2702BC74E9D289B7A794524A29A59472741E3C78A0AC
          EDE1D5AB571F7EFAD39FBEFFECB3CF7EB8FA7CD7BF7DFDEB5F7FF1A4DB732AC1
          CE6BAFBDF6E4479F975F79E5958BABCF8BEFBFFFFE8555A0736115059E787B4A
          29A594524A2947E7FEFDFB029E47D7AE5D7BF4F4D34F3FFCFCE73FFF70F5E994
          B64FAC3EDF3EE9F634D829A594524A29A56C84063BA594524A29A594720234D8
          29A594524A29A56C250D764A29A594524A295B49839D524A29A59452CA56D260
          A794524A29A594B29534D829A594524A29A56C250D764A29A594524A295B4983
          9D524A29A59452CA56D260A794524A29A594B29534D829A594524A29A56C250D
          764A29A594524A295B49839D524A29A59452CA56D260A794524A29A594B29534
          D829A594524A29A56C250D764A29A594524A295B49839D524A29A59452CA56D2
          60A794524A29A594B29534D829A594524A29A56C25FF0F66CDEE6734C8A8C900
          00000049454E44AE426082}
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object Line1: TfrxLineView
        Align = baBottom
        Top = 1470.237170000000000000
        Width = 264.566929130000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
    end
  end
  object dsPayments: TfrxDBDataset
    UserName = 'dsPayments'
    CloseDataSource = False
    FieldAliases.Strings = (
      'paymentType=paymentType'
      'amount=amount'
      'Details=Details'
      'DateCreated=DateCreated'
      '-paymentID=paymentID'
      '-transactionID=transactionID'
      '-Refunded=Refunded'
      '-Cancelled=Cancelled')
    DataSet = tilldm.qryPayments
    BCDToCurrency = False
    Left = 560
    Top = 456
  end
  object frxdbtransactionprint: TfrxDBDataset
    UserName = 'frxDBtransprint1'
    CloseDataSource = False
    DataSource = tilldm.dsTransactionPrint
    BCDToCurrency = False
    Left = 512
    Top = 312
  end
  object frxdbdStaff: TfrxDBDataset
    UserName = 'frxDBDstaff'
    CloseDataSource = False
    DataSet = tilldm.qryStaff
    BCDToCurrency = False
    Left = 616
    Top = 328
  end
  object frxdbdTrans: TfrxDBDataset
    UserName = 'frxDBDtrans'
    CloseDataSource = False
    DataSet = tilldm.qryTransactions
    BCDToCurrency = False
    Left = 440
    Top = 280
  end
  object frxDBDPayCalc: TfrxDBDataset
    UserName = 'dsPayCalc'
    CloseDataSource = False
    DataSet = tilldm.qryPaymentsCalc
    BCDToCurrency = False
    Left = 560
    Top = 456
  end
end
