unit DAO.produto;

interface

uses
  Data.FMTBcd, Data.DB, Data.SqlExpr, Produto;

type
  TDAOProduto = class
    FQuery : TSQLQuery;
  private
  public
    constructor create;
    destructor destroy;
    function buscar(codigo:string; out erro : string; out produto : TProduto) : Boolean;
  end;

implementation

uses
  System.SysUtils, uModuloConexao;

{ TDAOProduto }

function TDAOProduto.buscar(codigo: string; out erro: string;
  out produto : TProduto): Boolean;
begin
  result := true;
  FQuery.SQL.Add(' SELECT * FROM PRODUTO ');

  if codigo <> '' then
  begin
    FQuery.SQL.Add(' WHERE CODIGO = '''+codigo+''' ');
  end;

  try
    FQuery.Open;
    if (FQuery.IsEmpty) then
      raise Exception.Create('Nenhum produto encontrado! Codigo: '+codigo);

    produto.codigo := FQuery.FieldByName('CODIGO').AsInteger;
    produto.descricao := FQuery.FieldByName('DESCRICAO').AsString;
    produto.valor_unitario := FQuery.FieldByName('PRECO_VENDA').AsCurrency;
  except
    on e:exception do
    begin
      erro := e.Message;
      result := False;
    end;
  end;
end;

constructor TDAOProduto.create;
begin
  FQuery := TSQLQuery.Create(nil);
  FQuery.SQLConnection := moduloConexao.conexao;
  FQuery.Close;
  FQuery.SQL.Clear;
end;

destructor TDAOProduto.destroy;
begin
  FQuery.Free;
end;

end.
