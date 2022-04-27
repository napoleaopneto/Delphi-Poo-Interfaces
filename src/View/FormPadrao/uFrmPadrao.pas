unit uFrmPadrao;

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
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Mask,
  Vcl.DBCtrls,
  math,
  System.strutils,
  Funcoes;

type
  TFrmPadrao = class(TForm)
    pnFundo: TPanel;
    pnMenu: TPanel;
    PageControl: TPageControl;
    TabConsulta: TTabSheet;
    TabCadastro: TTabSheet;
    BtnExcluir: TButton;
    BtnCancelar: TButton;
    BtnGravar: TButton;
    btnNovo: TButton;
    BtnSair: TButton;
    pnTopTabConsulta: TPanel;
    pnCentralpnTopTabConsulta: TPanel;
    pnCentralTabCadastro: TPanel;
    lbConsultar: TLabel;
    edtConsulta: TEdit;
    dbGrid: TDBGrid;
    DataSource: TDataSource;
    lbCodigo: TLabel;
    edtCodigo: TDBEdit;
    procedure BtnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure dbGridDblClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure edtConsultaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure TratarBotoes(aValue: string);
    procedure Busca();
  public
    { Public declarations }
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

procedure TFrmPadrao.BtnCancelarClick(Sender: TObject);
begin
  BtnGravar.Caption := 'Cancelar';
  TratarBotoes(BtnGravar.Caption);

  DataSource.DataSet.Cancel;
  DataSource.DataSet.Refresh;
end;

procedure TFrmPadrao.BtnExcluirClick(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  BtnGravar.Caption := 'Cancelar';
  TratarBotoes(BtnGravar.Caption);
  DataSource.DataSet.Refresh;
end;

procedure TFrmPadrao.BtnGravarClick(Sender: TObject);
begin
  if ValidarCampos(Self) = true then
  begin
    MostraAviso('Atenção... '+ GvarCaption +' é um Campo Obrigatório !');
    abort
  end
  else
  begin
    BtnGravar.Caption := 'Cancelar';
    TratarBotoes(BtnGravar.Caption);
    DataSource.DataSet.Refresh;
  end;
end;

procedure TFrmPadrao.btnNovoClick(Sender: TObject);
begin
  BtnGravar.Caption := 'Gravar';
  TratarBotoes(BtnGravar.Caption);
end;

procedure TFrmPadrao.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPadrao.Busca;
begin
  dbGrid.DataSource.DataSet.Filter := 'codigo <> 0';
  if edtConsulta.Text <> '' then
    dbGrid.DataSource.DataSet.Filter := dbGrid.DataSource.DataSet.Filter +
      ' and (upper(' + dbGrid.DataSource.DataSet.Fields[0].FieldName + ') like '
      + quotedstr('%' + UpperCase(edtConsulta.Text) + '%') + ' OR upper(' +
      dbGrid.DataSource.DataSet.Fields[1].FieldName + ') like ' +
      quotedstr('%' + UpperCase(edtConsulta.Text) + '%') + ')';
  dbGrid.DataSource.DataSet.Filtered := true;
end;

procedure TFrmPadrao.dbGridDblClick(Sender: TObject);
begin
  BtnGravar.Caption := 'Editar';
  PageControl.ActivePageIndex := 1;
  TratarBotoes(BtnGravar.Caption);
  BtnGravar.Caption := 'Gravar';
end;

procedure TFrmPadrao.edtConsultaChange(Sender: TObject);
begin
  Busca();
end;

procedure TFrmPadrao.FormCreate(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  TabCadastro.TabVisible := false;
end;

procedure TFrmPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    if PageControl.ActivePageIndex <> 1 then
      BtnSair.Click;
  end;
end;

procedure TFrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  TabEnter(Key);
end;

procedure TFrmPadrao.FormShow(Sender: TObject);
begin
  TratarBotoes('Show');
end;

procedure TFrmPadrao.TratarBotoes(aValue: string);
begin
  if (aValue = 'Novo') then
  begin
    btnNovo.Enabled := true;
    BtnGravar.Enabled := false;
    BtnExcluir.Enabled := false;
    BtnCancelar.Enabled := false;
    BtnGravar.Caption := 'Editar';

    TabCadastro.TabVisible := false;
    TabConsulta.TabVisible := true;
    PageControl.ActivePageIndex := 1;

    BtnSair.Enabled := false;
  end;
  if (aValue = 'Editar') then
  begin
    btnNovo.Enabled := false;
    BtnGravar.Enabled := true;
    BtnExcluir.Enabled := true;
    BtnCancelar.Enabled := true;
    BtnSair.Enabled := false;

    TabCadastro.TabVisible := true;
    TabConsulta.TabVisible := false;
    PageControl.ActivePageIndex := 1;

    BtnSair.Enabled := false;
  end;
  if (aValue = 'Gravar') then
  begin
    btnNovo.Enabled := false;
    BtnGravar.Enabled := true;
    BtnExcluir.Enabled := false;
    BtnCancelar.Enabled := true;
    BtnSair.Enabled := false;

    TabCadastro.TabVisible := true;
    TabConsulta.TabVisible := false;
    PageControl.ActivePageIndex := 1;

    BtnSair.Enabled := false;
  end;
  if (aValue = 'Excluir') then
  begin
    btnNovo.Enabled := false;
    BtnGravar.Enabled := false;
    BtnExcluir.Enabled := true;
    BtnCancelar.Enabled := true;
    BtnSair.Enabled := false;

    TabCadastro.TabVisible := false;
    TabConsulta.TabVisible := true;
    PageControl.ActivePageIndex := 0;

    BtnSair.Enabled := true;
  end;
  if (aValue = 'Cancelar') then
  begin
    btnNovo.Enabled := true;
    BtnGravar.Enabled := false;
    BtnExcluir.Enabled := false;
    BtnCancelar.Enabled := false;

    TabCadastro.TabVisible := false;
    TabConsulta.TabVisible := true;
    PageControl.ActivePageIndex := 0;

    BtnSair.Enabled := true;
  end;
   if (aValue = 'Show') then
  begin
    btnNovo.Enabled := true;
    BtnGravar.Enabled := false;
    BtnExcluir.Enabled := false;
    BtnCancelar.Enabled := false;

    TabCadastro.TabVisible := false;
    TabConsulta.TabVisible := true;
    PageControl.ActivePageIndex := 0;
    BtnSair.Enabled := true;
  end;
end;

end.
