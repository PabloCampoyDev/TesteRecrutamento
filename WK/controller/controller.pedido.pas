unit controller.pedido;

interface

uses
  DAO.pedido, Pedido;

type
  TControllerPedido = class
  private
    DAO : TDAOPedido;
  public
    constructor create;
    destructor destroy;
    function buscar(codigo:string; out erro : string; out pedido : TPedido) : Boolean;
    function salvar(out erro : string; out pedido : TPedido) : Boolean;
    function excluir(numero_pedido : string; out erro : string) : Boolean;
  end;

implementation

{ TControllerProduto }

function TControllerPedido.buscar(codigo: string; out erro: string;
  out pedido : TPedido): Boolean;
begin
  result := DAO.buscar(codigo, erro, pedido);
end;

constructor TControllerPedido.create;
begin
  DAO := TDAOPedido.Create;
end;

destructor TControllerPedido.destroy;
begin
  DAO.Free;
end;

function TControllerPedido.excluir(numero_pedido: string;
  out erro: string): Boolean;
begin
  result := DAO.excluir(numero_pedido, erro);
end;

function TControllerPedido.salvar(out erro: string;
  out pedido: TPedido): Boolean;
begin
  result := DAO.salvar(erro, pedido);
end;

end.
