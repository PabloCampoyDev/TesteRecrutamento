unit controller.cliente;

interface

uses
  Cliente, DAO.cliente;

type
  TControllerCliente = class
  private
    DAO : TDAOCliente;
  public
    constructor create;
    destructor destroy;
    function buscar(codigo:string; out erro : string; out cliente : TCliente) : Boolean;
  end;

implementation

{ TControllerCliente }

function TControllerCliente.buscar(codigo: string; out erro: string; out cliente : TCliente): Boolean;
begin
  result := DAO.buscar(codigo, erro, cliente);
end;

constructor TControllerCliente.create;
begin
  DAO := TDAOCliente.Create;
end;

destructor TControllerCliente.destroy;
begin
  DAO.Free;
end;

end.
