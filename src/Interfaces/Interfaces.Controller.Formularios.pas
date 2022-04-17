unit Interfaces.Controller.Formularios;

interface

uses
  Interfaces.Formularios;

   type
     iAbrirFormularios = interface
       ['{0F0388AE-FEF8-476E-86F1-0A18B53D9AA1}']
       function CadastroProdutos : iFormularios;
       function CadastrClientes : iFormularios;
       function CadastroBancos : iFormularios;
       function CadastroFuncionarios : iFormularios;
       function CadastroUsuarios : iFormularios;
     end;

implementation

end.
