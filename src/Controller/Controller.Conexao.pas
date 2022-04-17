unit Controller.Conexao;

interface

  uses
    Interfaces.Conexao,
    Interfaces.Controller.Conexao,
    Model.Conexao;

  type
   TControllerConexao = class(TInterfacedObject,iControllerConexao)
     private
     public
     Constructor Create;
     destructor destroy; override;
       class function New : iControllerConexao;
       function Conexao : iConexao;
   end;

implementation

{ TControllerConexao }

function TControllerConexao.Conexao: iConexao;
begin
  Result := TConexao.New;
end;

constructor TControllerConexao.Create;
begin

end;

destructor TControllerConexao.destroy;
begin

  inherited;
end;

class function TControllerConexao.New: iControllerConexao;
begin
  Result := Self.Create;
end;

end.
