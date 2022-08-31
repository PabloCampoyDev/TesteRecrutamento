unit uModuloConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.DBXMySQL;

type
  TmoduloConexao = class(TDataModule)
    conexao: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  moduloConexao: TmoduloConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
