unit Controller.Formularios;

interface

 uses
   Interfaces.Controller.Formularios,
   Interfaces.Formularios,
   Model.Formularios;

  type
    TAbrirFormularios = class(TInterfacedObject, iAbrirFormularios)
      private
        FFormProdutos : iFormularios;
        FFormClientes : iFormularios;
        FFormBancos   : iFormularios;
        FFormFuncionarios   : iFormularios;
        FFormUsuarios   : iFormularios;
      public
        constructor create;
        destructor destroy; override;
      class function New : iAbrirFormularios;
        function CadastroProdutos : iFormularios;
        function CadastrClientes : iFormularios;
        function CadastroBancos : iFormularios;
        function CadastroFuncionarios : iFormularios;
        function CadastroUsuarios : iFormularios;
    end;

implementation

uses
  System.SysUtils;

{ TAbrirFormularios }

function TAbrirFormularios.CadastroBancos: iFormularios;
begin
  if not Assigned(FFormBancos) then
    FFormBancos := TFormulario.New;
  Result := FFormBancos;
end;

function TAbrirFormularios.CadastroFuncionarios: iFormularios;
begin
  if Not Assigned(FFormFuncionarios) then
    FFormFuncionarios := TFormulario.New;
  Result := FFormFuncionarios;
end;

function TAbrirFormularios.CadastroProdutos: iFormularios;
begin
  if Not Assigned(FFormProdutos) then
    FFormProdutos := TFormulario.New;
  Result := FFormProdutos;
end;

function TAbrirFormularios.CadastroUsuarios: iFormularios;
begin
  if Not Assigned(FFormUsuarios) then
    FFormUsuarios := TFormulario.New;
  Result := FFormUsuarios;
end;

function TAbrirFormularios.CadastrClientes: iFormularios;
begin
  if Not Assigned(FFormClientes) then
    FFormClientes := TFormulario.New;
  Result := FFormClientes;
end;

constructor TAbrirFormularios.create;
begin

end;

destructor TAbrirFormularios.destroy;
begin

  inherited;
end;

class function TAbrirFormularios.New: iAbrirFormularios;
begin
  Result := Self.create;
end;

end.
