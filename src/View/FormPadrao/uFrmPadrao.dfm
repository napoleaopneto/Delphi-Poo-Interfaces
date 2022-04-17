object FrmPadrao: TFrmPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FormPadrao'
  ClientHeight = 646
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnFundo: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 646
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnMenu: TPanel
      Left = 0
      Top = 0
      Width = 113
      Height = 646
      Align = alLeft
      BevelEdges = [beRight]
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 0
      object BtnExcluir: TButton
        AlignWithMargins = True
        Left = 3
        Top = 159
        Width = 105
        Height = 46
        Align = alTop
        Caption = 'Excluir'
        TabOrder = 3
      end
      object BtnCancelar: TButton
        AlignWithMargins = True
        Left = 3
        Top = 107
        Width = 105
        Height = 46
        Align = alTop
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = BtnCancelarClick
      end
      object BtnGravar: TButton
        AlignWithMargins = True
        Left = 3
        Top = 55
        Width = 105
        Height = 46
        Align = alTop
        Caption = 'Editar'
        TabOrder = 1
      end
      object btnNovo: TButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 105
        Height = 46
        Align = alTop
        Caption = 'Novo'
        TabOrder = 0
        OnClick = btnNovoClick
      end
      object BtnSair: TButton
        AlignWithMargins = True
        Left = 3
        Top = 597
        Width = 105
        Height = 46
        Align = alBottom
        Caption = 'Sair'
        TabOrder = 4
        OnClick = BtnSairClick
      end
    end
    object PageControl: TPageControl
      Left = 113
      Top = 0
      Width = 736
      Height = 646
      ActivePage = TabConsulta
      Align = alClient
      TabOrder = 1
      object TabConsulta: TTabSheet
        Caption = 'Consulta'
        object pnTopTabConsulta: TPanel
          Left = 0
          Top = 0
          Width = 728
          Height = 50
          Align = alTop
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 0
          object lbConsultar: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 718
            Height = 13
            Align = alTop
            Caption = 'Consultar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 54
          end
          object edtConsulta: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 22
            Width = 421
            Height = 21
            Margins.Right = 300
            Align = alTop
            TabOrder = 0
          end
        end
        object pnCentralpnTopTabConsulta: TPanel
          Left = 0
          Top = 50
          Width = 728
          Height = 568
          Align = alClient
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 1
          object dbGrid: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 718
            Height = 560
            Align = alClient
            BorderStyle = bsNone
            DataSource = DataSource
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
      end
      object TabCadastro: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = 1
        object pnCentralTabCadastro: TPanel
          Left = 0
          Top = 0
          Width = 728
          Height = 618
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          TabOrder = 0
          object lbCodigo: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 718
            Height = 13
            Align = alTop
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 38
          end
          object edtCodigo: TDBEdit
            Left = 3
            Top = 18
            Width = 108
            Height = 21
            DataSource = DataSource
            TabOrder = 0
          end
        end
      end
    end
  end
  object DataSource: TDataSource
    Left = 792
    Top = 35
  end
end
