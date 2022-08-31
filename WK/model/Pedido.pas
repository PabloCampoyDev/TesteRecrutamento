unit Pedido;

interface

type
  TPedido = class
  private
    Fvalor_total: Double;
    Fdata_emissao: TDatetime;
    Fcodigo_cliente: integer;
    Fnumero_pedido: integer;
    procedure Setcodigo_cliente(const Value: integer);
    procedure Setdata_emissao(const Value: TDatetime);
    procedure Setnumero_pedido(const Value: integer);
    procedure Setvalor_total(const Value: Double);
  published
    property numero_pedido: integer read Fnumero_pedido write Setnumero_pedido;
    property data_emissao : TDatetime read Fdata_emissao write Setdata_emissao;
    property codigo_cliente : integer read Fcodigo_cliente write Setcodigo_cliente;
    property valor_total : Double read Fvalor_total write Setvalor_total;
  end;

implementation

{ TPedido }

procedure TPedido.Setcodigo_cliente(const Value: integer);
begin
  Fcodigo_cliente := Value;
end;

procedure TPedido.Setdata_emissao(const Value: TDatetime);
begin
  Fdata_emissao := Value;
end;

procedure TPedido.Setnumero_pedido(const Value: integer);
begin
  Fnumero_pedido := Value;
end;

procedure TPedido.Setvalor_total(const Value: Double);
begin
  Fvalor_total := Value;
end;

end.
