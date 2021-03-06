unit Interfaces.ComponenteQuery;

interface

  uses
    Data.DB,
    FireDAC.Stan.Intf,
    FireDAC.Stan.Option,
    FireDAC.Stan.Error,
    FireDAC.UI.Intf,
    FireDAC.Phys.Intf,
    FireDAC.Stan.Def,
    FireDAC.Stan.Pool,
    FireDAC.Stan.Async,
    FireDAC.Phys,
    FireDAC.Stan.Param,
    FireDAC.DatS,
    FireDAC.DApt.Intf,
    FireDAC.DApt,
    FireDAC.Stan.ExprFuncs,
    FireDAC.Phys.SQLiteWrapper.Stat,
    FireDAC.Phys.SQLiteDef,
    FireDAC.VCLUI.Wait,
    FireDAC.Comp.UI,
    FireDAC.Phys.SQLite,
    FireDAC.Comp.DataSet,
    FireDAC.Comp.Client;

  type
    iQuery = interface
      ['{4F1636FC-CAB1-4478-AF6E-0227E8F05829}']
      function Dataset : TFDQuery;
    end;

implementation

end.
