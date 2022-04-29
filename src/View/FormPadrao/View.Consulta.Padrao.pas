unit View.Consulta.Padrao;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Interfaces.Crud,
  Controller.Crud;

type
  TFrmConsultaPadrao = class(TForm)
    pnPrincipal: TPanel;
    pnTop: TPanel;
    lbBusca: TLabel;
    pnEdit: TPanel;
    edtBusca: TEdit;
    pnGrid: TPanel;
    dbGridPadrao: TDBGrid;
    DataSource: TDataSource;
    procedure edtBuscaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FOpen : iSQLOpen;
    procedure Busca();
  public
    { Public declarations }
    aTabela : String;
  end;

var
  FrmConsultaPadrao: TFrmConsultaPadrao;

implementation

{$R *.dfm}

procedure TFrmConsultaPadrao.Busca;
begin
  dbGridPadrao.DataSource.DataSet.Filter := 'codigo <> 0';
  if edtBusca.Text <> '' then
    dbGridPadrao.DataSource.DataSet.Filter := dbGridPadrao.DataSource.DataSet.Filter +
      ' and (upper(' + dbGridPadrao.DataSource.DataSet.Fields[0].FieldName + ') like '
      + quotedstr('%' + UpperCase(edtBusca.Text) + '%') + ' OR upper(' +
      dbGridPadrao.DataSource.DataSet.Fields[1].FieldName + ') like ' +
      quotedstr('%' + UpperCase(edtBusca.Text) + '%') + ')';
  dbGridPadrao.DataSource.DataSet.Filtered := true;
end;

procedure TFrmConsultaPadrao.edtBuscaChange(Sender: TObject);
begin
  Busca();
end;

procedure TFrmConsultaPadrao.FormShow(Sender: TObject);
begin
  FOpen
   := TControllerCrud
    .New
     ._OpenSQL
    ._Open(aTabela,DataSource);
end;

end.
