unit Interfaces.Controller.Crud;

interface

 uses
   Interfaces.Crud;

 type
   iControllerCrud = interface
     ['{B8452494-CA46-45BE-99EE-A3A6BD1CD8E3}']
     function _OpenSQL : iSQLOpen;
     function _InsertSQL : iSQLInsert;
     function _UpdateSQL : iSQLUpdate;
     function _DeleteSQL : iSQLDelete;
     function _CancelSQL : iSQLCancelar;
   end;

implementation

end.
