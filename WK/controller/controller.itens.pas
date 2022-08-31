unit controller.itens;

interface

uses
  DAO.itens, Itens, Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.DBClient;

type
  TControllerItens = class
  private
    DAO : TDAOItens;
  public
    constructor create;
    destructor destroy;
    function buscar(codigo: string; out erro: string; out itens : TItens): Boolean;
    function salvar(out erro : string; out itens : TItens) : Boolean;
    function listarItens(numero_pedido : string; out erro : string; dataSet : TClientDataSet) : Boolean;
  end;

implementation

{ TControllerItens }

function TControllerItens.buscar(codigo: string; out erro: string;
  out itens : TItens): Boolean;
begin
  result := DAO.buscar(codigo, erro, itens);
end;

constructor TControllerItens.create;
begin
  DAO := TDAOItens.Create;
end;

destructor TControllerItens.destroy;
begin
  DAO.Free;
end;

function TControllerItens.listarItens(numero_pedido : string; out erro : string; dataSet : TClientDataSet) : Boolean;
begin
  result := DAO.listarItens(numero_pedido, erro, dataSet);
end;

function TControllerItens.salvar(out erro: string;
  out itens: TItens): Boolean;
begin
  result := DAO.salvar(erro, itens);
end;

end.
