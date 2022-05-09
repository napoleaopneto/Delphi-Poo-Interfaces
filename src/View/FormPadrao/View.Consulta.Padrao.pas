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
    btnSair: TButton;
    procedure edtBuscaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbGridPadraoKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGridPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure edtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridPadraoDblClick(Sender: TObject);
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

procedure TFrmConsultaPadrao.btnSairClick(Sender: TObject);
begin
  close;
end;

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

procedure TFrmConsultaPadrao.dbGridPadraoDblClick(Sender: TObject);
begin
  btnSair.Click;;
end;

procedure TFrmConsultaPadrao.dbGridPadraoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    edtBusca.SetFocus;
  end;
end;

procedure TFrmConsultaPadrao.dbGridPadraoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key >= #32) then
  begin
    edtBusca.Text := key;
    key := #0;
    edtBusca.SetFocus;
    edtBusca.SelStart := Length(edtBusca.Text);
  end;

  If (Key = #27) Then
  begin
    FOpen
     := TControllerCrud
      .New
       ._OpenSQL
      ._Open(aTabela,DataSource);
     edtBusca.SetFocus;
  end;
end;

procedure TFrmConsultaPadrao.edtBuscaChange(Sender: TObject);
begin
  Busca();
end;

procedure TFrmConsultaPadrao.edtBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) then
  begin
    dbGridPadrao.SetFocus;
  end;
   if Key = vk_escape then
  begin
    if edtBusca.Text <> '' then
      edtBusca.Text := '';
  end;
end;

procedure TFrmConsultaPadrao.edtBuscaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
  begin
    btnSair.Click;
  end;
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
