unit Controller.ComponenteQuery;

interface

  uses
    Interfaces.Controller.ComponenteQuery,
    Interfaces.ComponenteQuery,
    Model.ComponenteQuery;

  type
   TControllerComponenteQuery = Class(TInterfacedObject, iControllerComponenteQuery)
     private
     public
     Constructor Create;
     Destructor Destroy; override;
     class function New : iControllerComponenteQuery;
     function Query : iQuery;
   End;

implementation

{ TContrllerComponenteQuery }

{ TContrllerComponenteQuery }

constructor TControllerComponenteQuery.Create;
begin

end;

destructor TControllerComponenteQuery.Destroy;
begin

  inherited;
end;

class function TControllerComponenteQuery.New: iControllerComponenteQuery;
begin
  Result := Self.Create;
end;

function TControllerComponenteQuery.Query: iQuery;
begin
  Result := TQuery.New(nil);
end;

end.
