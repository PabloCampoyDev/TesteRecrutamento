object frmPedido: TfrmPedido
  Left = 0
  Top = 0
  Caption = 'Pedido'
  ClientHeight = 479
  ClientWidth = 718
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 706
  end
  object Panel2: TPanel
    Left = 0
    Top = 408
    Width = 718
    Height = 71
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 414
    object Button1: TButton
      Left = 0
      Top = 35
      Width = 121
      Height = 36
      Align = alLeft
      Caption = 'Novo pedido'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitTop = 0
      ExplicitHeight = 55
    end
    object Panel19: TPanel
      Left = 0
      Top = 0
      Width = 718
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblTotal: TLabel
        Left = 553
        Top = 0
        Width = 165
        Height = 35
        Align = alRight
        Alignment = taRightJustify
        Caption = 'Total R$ 12,50'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
    end
    object btnBuscarPedido: TButton
      Left = 121
      Top = 35
      Width = 121
      Height = 36
      Align = alLeft
      Caption = 'Buscar pedido'
      TabOrder = 2
      OnClick = btnBuscarPedidoClick
      ExplicitLeft = 232
    end
    object btnCancelar: TButton
      Left = 242
      Top = 35
      Width = 121
      Height = 36
      Align = alLeft
      Caption = 'Cancelar pedido'
      TabOrder = 3
      OnClick = btnCancelarClick
      ExplicitLeft = 329
      ExplicitTop = 27
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 718
    Height = 98
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 20
    Padding.Right = 20
    TabOrder = 2
    object Panel5: TPanel
      Left = 20
      Top = 41
      Width = 678
      Height = 41
      Align = alTop
      BevelEdges = [beBottom]
      BevelKind = bkFlat
      BevelOuter = bvNone
      BiDiMode = bdRightToLeftReadingOnly
      ParentBiDiMode = False
      TabOrder = 0
      ExplicitWidth = 654
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 678
        Height = 16
        Align = alTop
        Caption = 'Cidade/UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3026478
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 59
      end
      object eCidade: TEdit
        Left = 0
        Top = 16
        Width = 678
        Height = 23
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        TextHint = 'Cidade/UF'
        ExplicitLeft = 57
        ExplicitWidth = 293
      end
    end
    object Panel8: TPanel
      Left = 20
      Top = 0
      Width = 678
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 5
      ExplicitWidth = 706
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 73
        Height = 41
        Align = alLeft
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 73
          Height = 16
          Align = alTop
          Caption = 'Cod. cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3026478
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = -6
          ExplicitTop = 6
        end
        object eCodigoCliente: TEdit
          Left = 0
          Top = 16
          Width = 73
          Height = 23
          Align = alClient
          Alignment = taCenter
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clWhite
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = '000'
          OnChange = eCodigoClienteChange
          OnKeyPress = eCodigoClienteKeyPress
          ExplicitTop = 18
          ExplicitWidth = 57
          ExplicitHeight = 21
        end
      end
      object Panel9: TPanel
        Left = 73
        Top = 0
        Width = 19
        Height = 41
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 350
      end
      object Panel10: TPanel
        Left = 92
        Top = 0
        Width = 586
        Height = 41
        Align = alClient
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        TabOrder = 2
        ExplicitWidth = 493
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 586
          Height = 16
          Align = alTop
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3026478
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 33
        end
        object eNomeCliente: TEdit
          Left = 0
          Top = 16
          Width = 586
          Height = 23
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          TextHint = ' - Nome do cliente'
          ExplicitLeft = 57
          ExplicitTop = 18
          ExplicitWidth = 293
          ExplicitHeight = 21
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 155
    Width = 718
    Height = 253
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 89
    ExplicitWidth = 706
    ExplicitHeight = 176
    object drifProdutos: TDBGrid
      Left = 0
      Top = 62
      Width = 718
      Height = 191
      Align = alClient
      BorderStyle = bsNone
      Color = clSilver
      DataSource = dsProdutos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_unitario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_total'
          Visible = True
        end>
    end
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 718
      Height = 62
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 25
      Padding.Top = 10
      Padding.Right = 25
      Padding.Bottom = 10
      TabOrder = 1
      object Panel7: TPanel
        Left = 25
        Top = 10
        Width = 83
        Height = 42
        Align = alLeft
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        TabOrder = 0
        ExplicitHeight = 45
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 83
          Height = 20
          Align = alTop
          Caption = 'Cod. produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3026478
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object eCodigoProduto: TEdit
          Left = 0
          Top = 20
          Width = 83
          Height = 20
          Align = alClient
          Alignment = taCenter
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = '000'
          OnKeyPress = eCodigoProdutoKeyPress
          ExplicitLeft = 8
          ExplicitTop = 16
          ExplicitWidth = 57
          ExplicitHeight = 27
        end
      end
      object Panel11: TPanel
        Left = 108
        Top = 10
        Width = 13
        Height = 42
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitHeight = 45
      end
      object Panel13: TPanel
        Left = 121
        Top = 10
        Width = 242
        Height = 42
        Align = alLeft
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        TabOrder = 2
        ExplicitLeft = 127
        ExplicitHeight = 45
        object Label5: TLabel
          Left = 0
          Top = 0
          Width = 242
          Height = 20
          Align = alTop
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3026478
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object eDescricao: TEdit
          Left = 0
          Top = 20
          Width = 242
          Height = 20
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          TextHint = ' - Nome do cliente'
          ExplicitTop = 16
          ExplicitWidth = 542
          ExplicitHeight = 27
        end
      end
      object Panel14: TPanel
        Left = 463
        Top = 10
        Width = 13
        Height = 42
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitLeft = 444
        ExplicitTop = 14
        ExplicitHeight = 45
      end
      object Panel15: TPanel
        Left = 476
        Top = 10
        Width = 77
        Height = 42
        Align = alLeft
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        TabOrder = 4
        ExplicitLeft = 528
        ExplicitTop = 14
        ExplicitHeight = 45
        object Label6: TLabel
          Left = 0
          Top = 0
          Width = 77
          Height = 20
          Align = alTop
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3026478
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object eQuantidade: TEdit
          Left = 0
          Top = 20
          Width = 77
          Height = 20
          Align = alClient
          Alignment = taCenter
          BevelInner = bvNone
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          TextHint = '0'
          OnKeyPress = eQuantidadeKeyPress
          ExplicitTop = 16
          ExplicitHeight = 27
        end
      end
      object Panel16: TPanel
        Left = 363
        Top = 10
        Width = 12
        Height = 42
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 5
        ExplicitLeft = 453
        ExplicitHeight = 45
      end
      object Panel17: TPanel
        Left = 375
        Top = 10
        Width = 88
        Height = 42
        Align = alLeft
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        TabOrder = 6
        ExplicitLeft = 465
        ExplicitHeight = 45
        object Label7: TLabel
          Left = 0
          Top = 0
          Width = 88
          Height = 20
          Align = alTop
          Caption = 'Valor unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3026478
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object eValorUnitario: TEdit
          Left = 0
          Top = 20
          Width = 88
          Height = 20
          Align = alClient
          Alignment = taCenter
          BevelInner = bvNone
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          TextHint = '12,50'
          OnKeyPress = eValorUnitarioKeyPress
          ExplicitTop = 16
          ExplicitHeight = 27
        end
      end
      object Panel18: TPanel
        Left = 553
        Top = 10
        Width = 12
        Height = 42
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 7
        ExplicitLeft = 605
        ExplicitTop = 6
        ExplicitHeight = 45
      end
      object btnAdicionar: TButton
        Left = 584
        Top = 10
        Width = 109
        Height = 42
        Align = alRight
        Caption = 'Adicionar produto'
        TabOrder = 8
        OnClick = btnAdicionarClick
        ExplicitHeight = 45
      end
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 608
    Top = 248
  end
  object cdsProdutos: TClientDataSet
    PersistDataPacket.Data = {
      850000009619E0BD010000001800000005000000000003000000850006636F64
      69676F04000100000000000964657363726963616F0100490000000100055749
      4454480200020078000A7175616E74696461646504000100000000000E76616C
      6F725F756E69746172696F08000400000000000B76616C6F725F746F74616C08
      000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'quantidade'
        DataType = ftInteger
      end
      item
        Name = 'valor_unitario'
        DataType = ftFloat
      end
      item
        Name = 'valor_total'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 608
    Top = 296
    object cdsProdutoscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsProdutosdescricao: TStringField
      FieldName = 'descricao'
      Size = 120
    end
    object cdsProdutosquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object cdsProdutosvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
    end
    object cdsProdutosvalor_total: TFloatField
      FieldName = 'valor_total'
    end
  end
end
