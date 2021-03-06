unit View.Compras.Cadastros.Unidades;

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
  uFrmPadrao,
  Data.DB,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Controller.Crud,
  Interfaces.Crud;

type
  TFrmCadUnidade = class(TFrmPadrao)
    Label1: TLabel;
    edtDescricao: TDBEdit;
    edtUnidade: TDBEdit;
    lbUnidade: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    FOpen     : iSQLOpen;
    FInsert   : iSQLInsert;
    FDelete   : iSQLDelete;
    FUpdate   : iSQLUpdate;
    FCancelar : iSQLCancelar;
  public
    { Public declarations }
  end;

var
  FrmCadUnidade: TFrmCadUnidade;

implementation

{$R *.dfm}

procedure TFrmCadUnidade.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  FCancelar
  := TControllerCrud
   .New
    ._CancelSQL
     ._Cancelar(DataSource);
end;

procedure TFrmCadUnidade.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  FDelete
  := TControllerCrud
   .New
    ._DeleteSQL
     ._Delete('unidade',IntToStr(dbGrid.DataSource.DataSet.Fields[0].AsInteger));
end;

procedure TFrmCadUnidade.BtnGravarClick(Sender: TObject);
begin
  inherited;
  if (BtnGravar.Caption = 'Editar') then
  begin
    FUpdate
     := TControllerCrud
      .New
       ._UpdateSQL
        ._Update;
  end
    else if (BtnGravar.Caption = 'Gravar') then
  begin
    FUpdate
     := TControllerCrud
      .New
       ._UpdateSQL
        ._Update;
  end;
end;

procedure TFrmCadUnidade.btnNovoClick(Sender: TObject);
begin
  inherited;
  FInsert
   := TControllerCrud
    .New
     ._InsertSQL
      ._Insert('unidade',DataSource);
  edtDescricao.SetFocus;
end;

procedure TFrmCadUnidade.FormShow(Sender: TObject);
begin
  inherited;
  FOpen
   := TControllerCrud
    .New
     ._OpenSQL
      ._Open('unidade',DataSource);
end;

end.
