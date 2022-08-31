unit uFrmPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, controller.cliente, Cliente, Produto,
  controller.produto, Datasnap.DBClient, controller.pedido, Pedido, Itens,
  controller.itens, Math;

type
  TfrmPedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    drifProdutos: TDBGrid;
    Panel5: TPanel;
    Label2: TLabel;
    eCidade: TEdit;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel12: TPanel;
    Label1: TLabel;
    eCodigoCliente: TEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    eNomeCliente: TEdit;
    Label4: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    Panel11: TPanel;
    eCodigoProduto: TEdit;
    Panel13: TPanel;
    Label5: TLabel;
    eDescricao: TEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    Label6: TLabel;
    eQuantidade: TEdit;
    Panel16: TPanel;
    Panel17: TPanel;
    Label7: TLabel;
    eValorUnitario: TEdit;
    Panel18: TPanel;
    btnAdicionar: TButton;
    dsProdutos: TDataSource;
    cdsProdutos: TClientDataSet;
    cdsProdutoscodigo: TIntegerField;
    cdsProdutosdescricao: TStringField;
    cdsProdutosquantidade: TIntegerField;
    cdsProdutosvalor_unitario: TFloatField;
    cdsProdutosvalor_total: TFloatField;
    Button1: TButton;
    Panel19: TPanel;
    lblTotal: TLabel;
    btnBuscarPedido: TButton;
    btnCancelar: TButton;
    procedure eCodigoClienteKeyPress(Sender: TObject; var Key: Char);
    procedure eCodigoProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure eValorUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure eQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure eCodigoClienteChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscarPedidoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    procedure limpaCampos;
    procedure limpaCamposProduto;
    procedure salvarPedido;
    procedure salvarItemPedido;
  public
    { Public declarations }
  end;

var
  frmPedido: TfrmPedido;
  cliente : TCliente;
  produto : TProduto;
  pedido : TPedido;
  itens : TItens;
  controllerCliente : TControllerCliente;
  controllerProduto : TControllerProduto;
  controllerPedido : TControllerPedido;
  controllerItens : TControllerItens;

implementation

{$R *.dfm}

procedure TfrmPedido.btnAdicionarClick(Sender: TObject);
var
  erro : string;
begin
  SalvarPedido;
  SalvarItemPedido;
  if not controllerPedido.buscar(pedido.numero_pedido.ToString, erro, pedido) then
  begin
    showMessage('Problemas ao buscar pedido: '+erro);

    eCodigoCliente.SelectAll;
    exit;
  end;

  limpaCamposProduto;
  lblTotal.Caption := Format('Total R$ %2.f', [pedido.valor_total]);
end;

procedure TfrmPedido.btnBuscarPedidoClick(Sender: TObject);
var
  numero_pedido, erro : string;
begin
  if (InputQuery('Buscar pedido', 'N�mero do pedido:', numero_pedido)) then
  begin
    Button1Click(Self);
    if not controllerPedido.buscar(numero_pedido, erro, pedido) then
    begin
      showMessage('Problemas ao buscar pedido: '+erro);

      eCodigoCliente.SelectAll;
      exit;
    end;

    if not controllerCliente.buscar(pedido.codigo_cliente.ToString, erro, cliente) then
    begin
      showMessage('Problemas ao selecionar cliente: '+erro);

      eCodigoCliente.SelectAll;
      exit;
    end;

    eCodigoCliente.Text := cliente.codigo.ToString;
    eNomeCliente.Text := cliente.nome;
    if eNomeCliente.Text <> '' then
      eCidade.Text := cliente.cidade+'/'+UpperCase(cliente.uf);

    if not controllerItens.listarItens(pedido.numero_pedido.ToString, erro, cdsProdutos) then
    begin
      showMessage('Problemas ao listar itens: '+erro);
      exit;
    end;
    lblTotal.Caption := Format('Total R$ %2.f', [pedido.valor_total]);
  end;
end;

procedure TfrmPedido.btnCancelarClick(Sender: TObject);
var
  numero_pedido, erro : string;
begin
  if (InputQuery('Cancelar pedido', 'N�mero do pedido', numero_pedido)) then
  begin
    Button1Click(Self);

    if not controllerPedido.buscar(numero_pedido, erro, pedido) then
    begin
      showMessage('Problemas ao cancelar pedido: '+erro);

      eCodigoCliente.SelectAll;
      exit;
    end;

    if not controllerPedido.excluir(numero_pedido, erro) then
    begin
      showMessage('Problemas ao cancelar pedido: '+erro);

      eCodigoCliente.SelectAll;
      exit;
    end;

    ShowMessage('Pedido cancelado!');
    lblTotal.Caption := Format('Total R$ %2.f', [pedido.valor_total]);
  end;
end;

procedure TfrmPedido.Button1Click(Sender: TObject);
begin
  if Assigned(controllerPedido) then
    controllerPedido.Free;

  if Assigned(controllerCliente) then
    controllerCliente.Free;

  if Assigned(controllerItens) then
    controllerItens.Free;

  if Assigned(pedido) then
    pedido.Free;

  if Assigned(cliente) then
    cliente.Free;

  cdsProdutos.EmptyDataSet;
  controllerPedido := TControllerPedido.create;
  pedido := TPedido.Create;

  controllerCliente := TControllerCliente.create;
  cliente := TCliente.Create;

  controllerItens := TControllerItens.create;

  limpaCampos;
  limpaCamposProduto;
  lblTotal.Caption := Format('Total R$ %2.f', [pedido.valor_total]);
end;

procedure TfrmPedido.eCodigoClienteChange(Sender: TObject);
begin
  btnBuscarPedido.Visible := eCodigoCliente.Text = '';
  btnCancelar.Visible := eCodigoCliente.Text = '';
end;

procedure TfrmPedido.eCodigoClienteKeyPress(Sender: TObject; var Key: Char);
var
  erro, codigo : string;
begin
  if key = #13 then
  begin
    try
      erro := '';
      codigo := TEdit(Sender).Text;
      limpaCampos;
      if not controllerCliente.buscar(codigo, erro, cliente) then
      begin
        showMessage('Problemas ao selecionar cliente: '+erro);

        eCodigoCliente.SelectAll;
        exit;
      end;

      eCodigoCliente.Text := cliente.codigo.ToString;
      eNomeCliente.Text := cliente.nome;
      if eNomeCliente.Text <> '' then
        eCidade.Text := cliente.cidade+'/'+UpperCase(cliente.uf);

      eCodigoProduto.SetFocus;
    finally
      controllerCliente.Free;
    end;
  end;
end;

procedure TfrmPedido.eCodigoProdutoKeyPress(Sender: TObject; var Key: Char);
var
  erro, codigo : string;
begin
  if key = #13 then
  begin
    controllerProduto := TControllerProduto.create;
    produto := TProduto.Create;
    try
      erro := '';
      codigo := TEdit(Sender).Text;
      limpaCamposProduto;
      if not controllerProduto.buscar(codigo, erro, produto) then
      begin
        showMessage('Problemas ao selecionar produto: '+erro);

        eCodigoProduto.SelectAll;
        exit;
      end;

      eCodigoProduto.Text := produto.codigo.ToString;
      eDescricao.Text := produto.descricao;
      eValorUnitario.Text := FormatFloat('#,##0.00', produto.valor_unitario);

      eValorUnitario.SetFocus;
    finally
      controllerProduto.Free;
    end;
  end;
end;

procedure TfrmPedido.eQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btnAdicionar.SetFocus;
end;

procedure TfrmPedido.eValorUnitarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    eQuantidade.SetFocus;
end;

procedure TfrmPedido.FormShow(Sender: TObject);
begin
  btnBuscarPedido.Visible := true;
  btnCancelar.Visible := true;
end;

procedure TfrmPedido.limpaCampos;
begin
  eCodigoCliente.Text := '';
  eNomeCliente.Text := '';
  eCidade.Text := '';

  eCodigoCliente.Enabled := True;
end;

procedure TfrmPedido.limpaCamposProduto;
begin
  eCodigoProduto.Text := '';
  eDescricao.Text := '';
  eQuantidade.Text := '';
  eValorUnitario.Text := '';

  eCodigoProduto.Enabled := True;
  eQuantidade.Enabled := True;
  eValorUnitario.Enabled := True;
end;

procedure TfrmPedido.salvarItemPedido;
var
  erro, codigo : string;
begin
  itens := TItens.Create;
  try
    erro := '';
    itens.numero_pedido := pedido.numero_pedido;
    itens.codigo_produto := StrToInt(eCodigoProduto.Text);
    itens.quantidade := StrToFloat(eQuantidade.Text);
    itens.valor_unitario := StrToFloat(eValorUnitario.Text);
    itens.valor_total := RoundTo(StrToFloat(eQuantidade.Text)*StrToFloat(eValorUnitario.Text), -2);

    if not controllerItens.salvar(erro, itens) then
    begin
      showMessage('Problemas ao salvar item: '+erro);
      exit;
    end;

    if not controllerItens.listarItens(pedido.numero_pedido.ToString, erro, cdsProdutos) then
    begin
      showMessage('Problemas ao listar itens: '+erro);
      exit;
    end;

  finally
    eCodigoProduto.SetFocus;
  end;
end;

procedure TfrmPedido.salvarPedido;
var
  erro, codigo : string;
begin
  try
    erro := '';
    pedido.codigo_cliente := StrToInt(eCodigoCliente.Text);
    pedido.valor_total := RoundTo(StrToFloat(eQuantidade.Text)*StrToFloat(eValorUnitario.Text), -2);
    if not controllerPedido.salvar(erro, pedido) then
    begin
      showMessage('Problemas ao salvar Pedido: '+erro);

      eCodigoProduto.SelectAll;
      exit;
    end;

    eCodigoProduto.SetFocus;
  finally

  end;
end;

end.
