inherited FrmCadUnidade: TFrmCadUnidade
  Caption = 'Cadastro de Unidade'
  ClientHeight = 280
  ClientWidth = 460
  OnShow = FormShow
  ExplicitWidth = 476
  ExplicitHeight = 319
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnFundo: TPanel
    Width = 460
    Height = 280
    ExplicitWidth = 460
    ExplicitHeight = 280
    inherited pnMenu: TPanel
      Height = 280
      ExplicitHeight = 280
      inherited BtnSair: TButton
        Top = 231
        ExplicitTop = 231
      end
    end
    inherited PageControl: TPageControl
      Width = 347
      Height = 280
      ActivePage = TabCadastro
      ExplicitWidth = 347
      ExplicitHeight = 280
      inherited TabConsulta: TTabSheet
        ExplicitWidth = 339
        ExplicitHeight = 252
        inherited pnTopTabConsulta: TPanel
          Width = 339
          ExplicitWidth = 339
          inherited edtConsulta: TEdit
            Width = 232
            Margins.Right = 100
            ExplicitWidth = 232
          end
        end
        inherited pnCentralpnTopTabConsulta: TPanel
          Width = 339
          Height = 202
          ExplicitWidth = 339
          ExplicitHeight = 202
          inherited dbGrid: TDBGrid
            Width = 329
            Height = 194
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'Descri'#231#227'o'
                Width = 206
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unidade'
                Title.Caption = 'Unidade'
                Width = 42
                Visible = True
              end>
          end
        end
      end
      inherited TabCadastro: TTabSheet
        ExplicitWidth = 339
        ExplicitHeight = 252
        inherited pnCentralTabCadastro: TPanel
          Width = 339
          Height = 252
          ExplicitWidth = 489
          ExplicitHeight = 314
          object Label1: TLabel [1]
            AlignWithMargins = True
            Left = 3
            Top = 44
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
          object lbUnidade: TLabel [2]
            AlignWithMargins = True
            Left = 267
            Top = 44
            Width = 46
            Height = 13
            Caption = 'Unidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited edtCodigo: TDBEdit
            Width = 70
            DataField = 'codigo'
            ExplicitWidth = 70
          end
          object edtDescricao: TDBEdit
            Left = 3
            Top = 62
            Width = 262
            Height = 21
            DataField = 'descricao'
            DataSource = DataSource
            TabOrder = 1
          end
          object edtUnidade: TDBEdit
            Left = 267
            Top = 62
            Width = 62
            Height = 21
            DataField = 'unidade'
            DataSource = DataSource
            TabOrder = 2
          end
        end
      end
    end
  end
end
