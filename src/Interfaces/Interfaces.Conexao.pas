unit Interfaces.Conexao;

interface

 uses
   Data.DB;

  type
   iConexao = interface
     ['{21FD205F-967F-4827-832E-F43936A148DF}']
     function Conexao : TCustomConnection;
   end;

implementation

end.
