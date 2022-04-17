unit View.Financeiro.Cadastros.Bancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrmCadBancos = class(TFrmPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadBancos: TFrmCadBancos;

implementation

{$R *.dfm}

end.
