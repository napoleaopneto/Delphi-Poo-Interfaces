unit View.Compras.Cadastros.SubGrupos;

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
  Vcl.ExtCtrls,
  Vcl.DBCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Controller.Crud,
  Interfaces.Crud;

type
  TFrmSubGrupos = class(TFrmPadrao)
    lbDescricao: TLabel;
    edtDescricao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FOpen     : iSQLOpen;
    FInsert   : iSQLInsert;
    FDelete   : iSQLDelete;
    FUpdate   : iSQLUpdate;
    FCancelar : iSQLCancelar;
  end;

var
  FrmSubGrupos: TFrmSubGrupos;

implementation

{$R *.dfm}

procedure TFrmSubGrupos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  FCancelar
  := TControllerCrud
   .New
    ._CancelSQL
     ._Cancelar(DataSource);
end;

procedure TFrmSubGrupos.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  FDelete
  := TControllerCrud
   .New
    ._DeleteSQL
     ._Delete('subgrupos',IntToStr(dbGrid.DataSource.DataSet.Fields[0].AsInteger));
end;

procedure TFrmSubGrupos.BtnGravarClick(Sender: TObject);
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

procedure TFrmSubGrupos.btnNovoClick(Sender: TObject);
begin
  inherited;
  FInsert
   := TControllerCrud
    .New
     ._InsertSQL
      ._Insert('subgrupos',DataSource);
  edtDescricao.SetFocus;
end;

procedure TFrmSubGrupos.FormShow(Sender: TObject);
begin
  inherited;
   FOpen
   := TControllerCrud
    .New
     ._OpenSQL
      ._Open('subgrupos',DataSource);
end;

end.
