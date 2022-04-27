inherited FrmSubGrupos: TFrmSubGrupos
  Caption = 'Sub Grupos'
  ClientHeight = 266
  ClientWidth = 478
  ExplicitWidth = 494
  ExplicitHeight = 305
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 478
    Height = 266
    inherited pnMenu: TPanel
      Height = 266
      inherited BtnGravar: TButton
        ExplicitLeft = 3
      end
      inherited BtnSair: TButton
        Top = 217
      end
    end
    inherited PageControl: TPageControl
      Width = 365
      Height = 266
      inherited TabConsulta: TTabSheet
        ExplicitWidth = 357
        ExplicitHeight = 238
        inherited pnTopTabConsulta: TPanel
          Width = 357
          inherited lbConsultar: TLabel
            Width = 347
          end
          inherited edtConsulta: TEdit
            Width = 347
            Margins.Right = 3
          end
        end
        inherited pnCentralpnTopTabConsulta: TPanel
          Width = 357
          Height = 188
          inherited dbGrid: TDBGrid
            Width = 347
            Height = 180
          end
        end
      end
      inherited TabCadastro: TTabSheet
        ExplicitWidth = 357
        ExplicitHeight = 238
        inherited pnCentralTabCadastro: TPanel
          Width = 357
          Height = 238
          ExplicitWidth = 357
          ExplicitHeight = 238
          inherited lbCodigo: TLabel
            Width = 347
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
            Top = 59
            Width = 345
            Height = 21
            Hint = 'Descri'#231#227'o Sub Grupos'
            DataField = 'descricao'
            DataSource = DataSource
            TabOrder = 1
          end
        end
      end
    end
  end
end
