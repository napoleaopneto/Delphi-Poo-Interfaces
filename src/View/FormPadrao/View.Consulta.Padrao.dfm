object FrmConsultaPadrao: TFrmConsultaPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Padr'#227'o'
  ClientHeight = 287
  ClientWidth = 667
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 667
    Height = 287
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnTop: TPanel
      Left = 0
      Top = 0
      Width = 667
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lbBusca: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 657
        Height = 15
        Margins.Left = 5
        Margins.Right = 5
        Margins.Bottom = 1
        Align = alTop
        Caption = 'Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 37
      end
      object pnEdit: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 19
        Width = 657
        Height = 28
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Align = alClient
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 0
        object edtBusca: TEdit
          AlignWithMargins = True
          Left = 1
          Top = 1
          Width = 651
          Height = 22
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = edtBuscaChange
          OnKeyDown = edtBuscaKeyDown
          OnKeyPress = edtBuscaKeyPress
        end
      end
    end
    object pnGrid: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 50
      Width = 657
      Height = 234
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Align = alClient
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 1
      object dbGridPadrao: TDBGrid
        AlignWithMargins = True
        Left = 1
        Top = 3
        Width = 651
        Height = 226
        Margins.Left = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        BorderStyle = bsNone
        DataSource = DataSource
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = dbGridPadraoDblClick
        OnKeyDown = dbGridPadraoKeyDown
        OnKeyPress = dbGridPadraoKeyPress
      end
      object btnSair: TButton
        Left = 627
        Top = 207
        Width = 17
        Height = 16
        Caption = 'Sair'
        ModalResult = 1
        TabOrder = 1
        Visible = False
        OnClick = btnSairClick
      end
    end
  end
  object DataSource: TDataSource
    Left = 627
    Top = 60
  end
end
