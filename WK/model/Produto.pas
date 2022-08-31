unit Produto;

interface

type
  TProduto = class
  private
    Fvalor_unitario: double;
    Fdescricao: string;
    Fcodigo: integer;
    procedure Setcodigo(const Value: integer);
    procedure Setdescricao(const Value: string);
    procedure Setvalor_unitario(const Value: double);
  published
    property codigo : integer read Fcodigo write Setcodigo;
    property descricao : string read Fdescricao write Setdescricao;
    property valor_unitario : double read Fvalor_unitario write Setvalor_unitario;
  end;

implementation

{ TProduto }

procedure TProduto.Setcodigo(const Value: integer);
begin
  Fcodigo := Value;
end;

procedure TProduto.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
end;

procedure TProduto.Setvalor_unitario(const Value: double);
begin
  Fvalor_unitario := Value;
end;

end.
