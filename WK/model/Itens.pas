unit Itens;

interface

type
  TItens = class
  private
    Fvalor_unitario: Double;
    Fvalor_total: Double;
    Fnumero_pedido: integer;
    Fcodigo: integer;
    Fquantidade: Double;
    Fcodigo_produto: integer;
    procedure Setcodigo(const Value: integer);
    procedure Setcodigo_produto(const Value: integer);
    procedure Setnumero_pedido(const Value: integer);
    procedure Setquantidade(const Value: Double);
    procedure Setvalor_total(const Value: Double);
    procedure Setvalor_unitario(const Value: Double);
  published
    property codigo : integer read Fcodigo write Setcodigo;
    property numero_pedido : integer read Fnumero_pedido write Setnumero_pedido;
    property codigo_produto : integer read Fcodigo_produto write Setcodigo_produto;
    property quantidade : Double read Fquantidade write Setquantidade;
    property valor_unitario : Double read Fvalor_unitario write Setvalor_unitario;
    property valor_total : Double read Fvalor_total write Setvalor_total;
  end;

implementation

{ TItens }

procedure TItens.Setcodigo(const Value: integer);
begin
  Fcodigo := Value;
end;

procedure TItens.Setcodigo_produto(const Value: integer);
begin
  Fcodigo_produto := Value;
end;

procedure TItens.Setnumero_pedido(const Value: integer);
begin
  Fnumero_pedido := Value;
end;

procedure TItens.Setquantidade(const Value: Double);
begin
  Fquantidade := Value;
end;

procedure TItens.Setvalor_total(const Value: Double);
begin
  Fvalor_total := Value;
end;

procedure TItens.Setvalor_unitario(const Value: Double);
begin
  Fvalor_unitario := Value;
end;

end.
