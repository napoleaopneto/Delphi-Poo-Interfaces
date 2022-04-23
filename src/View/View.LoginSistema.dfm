object FrmLoginSistema: TFrmLoginSistema
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Login do Sitema'
  ClientHeight = 323
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnCentral: TPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 323
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object imgLogo: TImage
      AlignWithMargins = True
      Left = 3
      Top = 20
      Width = 421
      Height = 158
      Margins.Top = 20
      Margins.Bottom = 145
      Align = alClient
      Stretch = True
      ExplicitLeft = 6
    end
    object pnMeio: TPanel
      AlignWithMargins = True
      Left = 30
      Top = 180
      Width = 367
      Height = 93
      Margins.Left = 30
      Margins.Top = 180
      Margins.Right = 30
      Margins.Bottom = 50
      Align = alClient
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 0
      object lbUsuario: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 357
        Height = 13
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 43
      end
      object lbSenha: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 46
        Width = 357
        Height = 13
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 35
      end
      object edtUsuario: TEdit
        Tag = 99
        AlignWithMargins = True
        Left = 3
        Top = 19
        Width = 357
        Height = 21
        Align = alTop
        TabOrder = 0
        TextHint = 'Entre com Usu'#225'rio'
      end
      object edtSenha: TEdit
        Tag = 99
        AlignWithMargins = True
        Left = 3
        Top = 62
        Width = 357
        Height = 21
        Align = alTop
        PasswordChar = '*'
        TabOrder = 1
        TextHint = 'Entre com Senha'
      end
    end
    object btnEntrar: TButton
      Left = 29
      Top = 271
      Width = 181
      Height = 51
      Caption = 'Entrar'
      TabOrder = 1
      OnClick = btnEntrarClick
    end
    object btnSair: TButton
      Tag = 99
      Left = 216
      Top = 272
      Width = 181
      Height = 50
      Caption = 'Sair'
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object DataSource: TDataSource
    Left = 344
    Top = 56
  end
end
