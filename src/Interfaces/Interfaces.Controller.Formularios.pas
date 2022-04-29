unit Interfaces.Controller.Formularios;

interface

uses
  Interfaces.Formularios;

   type
     iAbrirFormularios = interface
       ['{0F0388AE-FEF8-476E-86F1-0A18B53D9AA1}']
       function CadastroProdutos : iFormularios;
       function CadastroPessoas : iFormularios;
       function CadastroBancos : iFormularios;
       function CadastroUsuarios : iFormularios;
       function CadastroUnidades : iFormularios;
       function CadastroGrupos : iFormularios;
       function CadastroSubGrupos : iFormularios;
       function Consulta : iFormularios;
     end;

implementation

end.
