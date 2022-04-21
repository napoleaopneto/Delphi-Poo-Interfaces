unit View.FrmPrincipal;

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
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Vcl.Menus,
  Vcl.StdCtrls,
  Controller.Formularios,
  Controller.ComponenteQuery,
  Controller.Conexao;

type
  TFrmPrincipal = class(TForm)
    pnPrincipal: TPanel;
    StatusBar: TStatusBar;
    MainMenu: TMainMenu;
    mCompras: TMenuItem;
    mVendas: TMenuItem;
    mFinanceiro: TMenuItem;
    mRH: TMenuItem;
    mUtilitarios: TMenuItem;
    mComprasCadastros: TMenuItem;
    mComprasCadastros_Produtos: TMenuItem;
    mVendasCadastros: TMenuItem;
    mVendasCadastros_Clientes: TMenuItem;
    mFinanceiroCadastro: TMenuItem;
    mFinanceiroCadastros_Bancos: TMenuItem;
    mRHCadastros: TMenuItem;
    mRHCadastros_Funcionarios: TMenuItem;
    mUtilitariosCadastros: TMenuItem;
    mUtilitariosCadastros_Usuarios: TMenuItem;
    mComprasCadastros_Unidades: TMenuItem;
    mComprasCadastros_Fornecedores: TMenuItem;
    mComprasCadastros_Fabricantes: TMenuItem;
    mUtilitariosCadastros_Empresa: TMenuItem;
    procedure mComprasCadastros_ProdutosClick(Sender: TObject);
    procedure mVendasCadastros_ClientesClick(Sender: TObject);
    procedure mFinanceiroCadastros_BancosClick(Sender: TObject);
    procedure mRHCadastros_FuncionariosClick(Sender: TObject);
    procedure mUtilitariosCadastros_UsuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mComprasCadastros_UnidadesClick(Sender: TObject);
    procedure mComprasCadastros_FornecedoresClick(Sender: TObject);
    procedure mComprasCadastros_FabricantesClick(Sender: TObject);
    procedure mUtilitariosCadastros_EmpresaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TabEnter(Key :Char);
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  TControllerConexao
   .New
    .Conexao;
end;

procedure TFrmPrincipal.mVendasCadastros_ClientesClick(Sender: TObject);
begin
  TAbrirFormularios
   .New
    .CadastroPessoas
      .CadastroPessoas(Self,'Cadastro de Clientes')
       .ShowModal;
end;

procedure TFrmPrincipal.TabEnter(Key: Char);
begin
  If Key = #13 then //Se o comando for igual a enter
  Begin
    Key := #0;
    Screen.ActiveForm.Perform(WM_NextDlgCtl, 0, 0);
  End;
end;

procedure TFrmPrincipal.mComprasCadastros_FabricantesClick(Sender: TObject);
begin
  TAbrirFormularios
   .New
    .CadastroPessoas
      .CadastroPessoas(Self,'Cadastro de Fabricantes')
       .ShowModal;
end;

procedure TFrmPrincipal.mComprasCadastros_FornecedoresClick(Sender: TObject);
begin
  TAbrirFormularios
   .New
    .CadastroPessoas
      .CadastroPessoas(Self,'Cadastro de Fornecedores')
       .ShowModal;
end;

procedure TFrmPrincipal.mComprasCadastros_ProdutosClick(Sender: TObject);
begin
  TAbrirFormularios
   .New
    .CadastroProdutos
     .CadastroProdutos(Self)
      .ShowModal;
end;

procedure TFrmPrincipal.mComprasCadastros_UnidadesClick(Sender: TObject);
begin
  TAbrirFormularios
   .New
    .CadastroUnidades
     .CadastroUnidades(Self)
      .ShowModal;
end;

procedure TFrmPrincipal.mFinanceiroCadastros_BancosClick(Sender: TObject);
begin
  TAbrirFormularios
   .New
    .CadastroBancos
     .CadastroBanco(Self)
      .ShowModal;
end;

procedure TFrmPrincipal.mRHCadastros_FuncionariosClick(Sender: TObject);
begin
  TAbrirFormularios
   .New
    .CadastroPessoas
      .CadastroPessoas(Self,'Cadastro de Funcionarios')
       .ShowModal;
end;

procedure TFrmPrincipal.mUtilitariosCadastros_EmpresaClick(Sender: TObject);
begin
  TAbrirFormularios
   .New
    .CadastroPessoas
      .CadastroPessoas(Self,'Cadastro de Empresas')
       .ShowModal;
end;

procedure TFrmPrincipal.mUtilitariosCadastros_UsuariosClick(Sender: TObject);
begin
  TAbrirFormularios
   .New
    .CadastroUsuarios
     .CadastroUsuarios(Self)
      .ShowModal;
end;
end.
