inherited FrmGrupos: TFrmGrupos
  Caption = 'Cadastro de Grupos'
  ClientHeight = 266
  ClientWidth = 471
  OnShow = FormShow
  ExplicitWidth = 487
  ExplicitHeight = 305
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 471
    Height = 266
    inherited pnMenu: TPanel
      Height = 266
      inherited BtnSair: TButton
        Top = 217
      end
    end
    inherited PageControl: TPageControl
      Width = 358
      Height = 266
      Hint = 'Descri'#231#227'o do Grupo'
      inherited TabConsulta: TTabSheet
        ExplicitWidth = 350
        ExplicitHeight = 238
        inherited pnTopTabConsulta: TPanel
          Width = 350
          inherited lbConsultar: TLabel
            Width = 340
          end
          inherited edtConsulta: TEdit
            Width = 340
            Margins.Right = 3
          end
        end
        inherited pnCentralpnTopTabConsulta: TPanel
          Width = 350
          Height = 188
          inherited dbGrid: TDBGrid
            Width = 340
            Height = 180
          end
        end
      end
      inherited TabCadastro: TTabSheet
        ExplicitWidth = 350
        ExplicitHeight = 238
        inherited pnCentralTabCadastro: TPanel
          Width = 350
          Height = 238
          ExplicitWidth = 350
          ExplicitHeight = 238
          inherited lbCodigo: TLabel
            Width = 340
          end
          object lbDescricao: TLabel [1]
            AlignWithMargins = True
            Left = 3
            Top = 42
            Width = 55
            Height = 13
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited edtCodigo: TDBEdit
            DataField = 'codigo'
          end
          object edtDescricao: TDBEdit
            Tag = 99
            Left = 3
            Top = 58
            Width = 339
            Height = 21
            Hint = 'Descri'#231#227'o do Grupo'
            DataField = 'descricao'
            DataSource = DataSource
            TabOrder = 1
          end
        end
      end
    end
  end
end
