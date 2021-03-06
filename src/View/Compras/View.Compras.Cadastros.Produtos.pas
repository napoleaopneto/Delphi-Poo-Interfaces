unit View.Compras.Cadastros.Produtos;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  uFrmPadrao,
  Data.DB,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Controller.Crud,
  Interfaces.Crud;

type
  TFrmCadProdutos = class(TFrmPadrao)
    edtDescricao: TDBEdit;
    Label1: TLabel;
    lbTipoProduto: TLabel;
    ckflagatv: TDBCheckBox;
    cbTipoProduto: TDBComboBox;
    lbDescTecnica: TLabel;
    edtDescTecnica: TDBEdit;
    lbFabricante: TLabel;
    edtCodFabricante: TDBEdit;
    edtDescFabricante: TDBEdit;
    lbDescFornecedor: TLabel;
    edtCodFornecedor: TDBEdit;
    edtDescFornecedor: TDBEdit;
    lbGrupos: TLabel;
    edtCodGrupos: TDBEdit;
    edtGrupos: TDBEdit;
    lbSubGrupos: TLabel;
    edtcodsubgrupos: TDBEdit;
    edtdescsubgrupos: TDBEdit;
    lbCodBarras: TLabel;
    gpTotalizadores: TGroupBox;
    lbPrecoCusto: TLabel;
    edtPrecoCusto: TDBEdit;
    Label2: TLabel;
    edtMargemLucro: TDBEdit;
    lbValorVenda: TLabel;
    edtValorVenda: TDBEdit;
    lbSaldoEstoque: TLabel;
    edtSladoEstoque: TDBEdit;
    edtCodbarras: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure edtPrecoCustoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodFabricanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FOpen     : iSQLOpen;
    FInsert   : iSQLInsert;
    FDelete   : iSQLDelete;
    FUpdate   : iSQLUpdate;
    FCancelar : iSQLCancelar;
  public
    { Public declarations }
  end;

var
  FrmCadProdutos: TFrmCadProdutos;

implementation

{$R *.dfm}

uses Controller.Formularios;

procedure TFrmCadProdutos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  FCancelar
    := TControllerCrud
     .New
      ._CancelSQL
       ._Cancelar(DataSource);
end;

procedure TFrmCadProdutos.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  FDelete
   := TControllerCrud
    .New
     ._DeleteSQL
      ._Delete('produtos',IntToStr(dbGrid.DataSource.DataSet.Fields[0].AsInteger));
end;

procedure TFrmCadProdutos.BtnGravarClick(Sender: TObject);
begin
  inherited;
  if (BtnGravar.Caption = 'Editar') then
  begin
    FUpdate
     := TControllerCrud
      .New
       ._UpdateSQL
        ._Update;
  end
    else if (BtnGravar.Caption = 'Gravar') then
  begin
    FUpdate
     := TControllerCrud
      .New
       ._UpdateSQL
        ._Update;
  end;
end;

procedure TFrmCadProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  FInsert
   := TControllerCrud
    .New
     ._InsertSQL
      ._Insert('produtos',DataSource);
  edtDescricao.SetFocus;
end;

procedure TFrmCadProdutos.dbGridDblClick(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

procedure TFrmCadProdutos.edtCodFabricanteKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F2 then
  begin
    TAbrirFormularios
     .New
      .Consulta
       .Consulta(Self,'Consulta de Fabricantes','pessoas')
      .ShowModal;

      ShowMessage(''


        );
  end;
end;

procedure TFrmCadProdutos.edtPrecoCustoKeyPress(Sender: TObject; var Key: Char);
begin
 inherited;
 if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
   key := #0;
end;

procedure TFrmCadProdutos.FormShow(Sender: TObject);
begin
  inherited;
  FOpen
   := TControllerCrud
    .New
     ._OpenSQL
      ._Open('produtos',DataSource);
end;

end.
