unit DAO.cliente;

interface

uses
  Data.FMTBcd, Data.DB, Data.SqlExpr, Cliente;

type
  TDAOCliente = class
    FQuery : TSQLQuery;
  private
  public
    constructor create;
    destructor destroy;
    function buscar(codigo:string; out erro : string; out cliente : TCliente) : Boolean;
  end;

implementation

{ TDAOCliente }

uses uModuloConexao, System.SysUtils;

function TDAOCliente.buscar(codigo: string; out erro: string; out cliente : TCliente): Boolean;
begin
  result := true;
  FQuery.SQL.Add(' SELECT * FROM CLIENTE ');

  if codigo <> '' then
  begin
    FQuery.SQL.Add(' WHERE CODIGO = '''+codigo+''' ');
  end;

  try
    FQuery.Open;
    if (FQuery.IsEmpty) then
      raise Exception.Create('Nenhum cliente encontrado! Codigo: '+codigo);

    cliente.codigo := FQuery.FieldByName('CODIGO').AsInteger;
    cliente.nome := FQuery.FieldByName('NOME').AsString;
    cliente.cidade := FQuery.FieldByName('CIDADE').AsString;
    cliente.uf := FQUery.FieldByName('UF').AsString;
  except
    on e:exception do
    begin
      erro := e.Message;
      result := False;
    end;
  end;
end;

constructor TDAOCliente.create;
begin
  FQuery := TSQLQuery.Create(nil);
  FQuery.SQLConnection := moduloConexao.conexao;
  FQuery.Close;
  FQuery.SQL.Clear;
end;

destructor TDAOCliente.destroy;
begin
  FQuery.Free;
end;

end.
