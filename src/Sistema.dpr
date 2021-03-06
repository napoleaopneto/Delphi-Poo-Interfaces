program Sistema;

uses
  Vcl.Forms,
  View.FrmPrincipal in 'View\View.FrmPrincipal.pas' {FrmPrincipal},
  uFrmPadrao in 'View\FormPadrao\uFrmPadrao.pas' {FrmPadrao},
  Interfaces.Formularios in 'Interfaces\Interfaces.Formularios.pas',
  Interfaces.Controller.Formularios in 'Interfaces\Interfaces.Controller.Formularios.pas',
  Controller.Formularios in 'Controller\Controller.Formularios.pas',
  Model.Formularios in 'Model\Model.Formularios.Pas',
  View.Utilitarios.Cadastros.Usuarios in 'View\Utilitarios\View.Utilitarios.Cadastros.Usuarios.pas' {FrmCadUsuarios},
  View.Compras.Cadastros.Produtos in 'View\Compras\View.Compras.Cadastros.Produtos.pas' {FrmCadProdutos},
  View.Vendas.Cadastros.Pessoas in 'View\FormPadrao\View.Vendas.Cadastros.Pessoas.pas' {FrmCadPessoas},
  View.Financeiro.Cadastros.Bancos in 'View\Financeiro\View.Financeiro.Cadastros.Bancos.pas' {FrmCadBancos},
  Interfaces.Conexao in 'Interfaces\Interfaces.Conexao.pas',
  Model.Conexao in 'Model\Model.Conexao.pas',
  Interfaces.Controller.Conexao in 'Interfaces\Interfaces.Controller.Conexao.pas',
  Interfaces.ComponenteQuery in 'Interfaces\Interfaces.ComponenteQuery.pas',
  Model.ComponenteQuery in 'Model\Model.ComponenteQuery.pas',
  Controller.ComponenteQuery in 'Controller\Controller.ComponenteQuery.pas',
  Interfaces.Controller.ComponenteQuery in 'Interfaces\Interfaces.Controller.ComponenteQuery.pas',
  Interfaces.Crud in 'Interfaces\Interfaces.Crud.pas',
  Model.Crud in 'Model\Model.Crud.pas',
  Interfaces.Controller.Crud in 'Interfaces\Interfaces.Controller.Crud.pas',
  Controller.Crud in 'Controller\Controller.Crud.pas',
  View.Compras.Cadastros.Unidades in 'View\Compras\View.Compras.Cadastros.Unidades.pas' {FrmCadUnidade},
  Controller.Conexao in 'Controller\Controller.Conexao.pas',
  Funcoes in 'Bibliotecas\Funcoes.pas',
  View.Compras.Cadastros.Grupos in 'View\Compras\View.Compras.Cadastros.Grupos.pas' {FrmGrupos},
  View.Compras.Cadastros.SubGrupos in 'View\Compras\View.Compras.Cadastros.SubGrupos.pas' {FrmSubGrupos},
  View.Consulta.Padrao in 'View\FormPadrao\View.Consulta.Padrao.pas' {FrmConsultaPadrao},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmGrupos, FrmGrupos);
  Application.CreateForm(TFrmSubGrupos, FrmSubGrupos);
  Application.CreateForm(TFrmConsultaPadrao, FrmConsultaPadrao);
  Application.Run;
end.
