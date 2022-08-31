unit Cliente;

interface

type
  TCliente = class
  private
    Fuf: string;
    Fnome: string;
    Fcidade: string;
    Fcodigo: integer;
    procedure Setcidade(const Value: string);
    procedure Setnome(const Value: string);
    procedure Setuf(const Value: string);
    procedure Setcodigo(const Value: integer);
  published
    property codigo : integer read Fcodigo write Setcodigo;
    property nome : string read Fnome write Setnome;
    property cidade : string read Fcidade write Setcidade;
    property uf : string read Fuf write Setuf;
  end;

implementation

{ TCliente }

procedure TCliente.Setcidade(const Value: string);
begin
  Fcidade := Value;
end;

procedure TCliente.Setcodigo(const Value: integer);
begin
  Fcodigo := Value;
end;

procedure TCliente.Setnome(const Value: string);
begin
  Fnome := Value;
end;

procedure TCliente.Setuf(const Value: string);
begin
  Fuf := Value;
end;

end.
