program WkTecnology;

uses
  Vcl.Forms,
  uFrmPedido in 'view\uFrmPedido.pas' {frmPedido},
  Cliente in 'model\Cliente.pas',
  controller.cliente in 'controller\controller.cliente.pas',
  DAO.cliente in 'DAO\DAO.cliente.pas',
  uModuloConexao in 'DAO\uModuloConexao.pas' {moduloConexao: TDataModule},
  controller.produto in 'controller\controller.produto.pas',
  Produto in 'model\Produto.pas',
  DAO.produto in 'DAO\DAO.produto.pas',
  Pedido in 'model\Pedido.pas',
  controller.pedido in 'controller\controller.pedido.pas',
  DAO.pedido in 'DAO\DAO.pedido.pas',
  Itens in 'model\Itens.pas',
  DAO.Itens in 'DAO\DAO.Itens.pas',
  controller.itens in 'controller\controller.itens.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPedido, frmPedido);
  Application.CreateForm(TmoduloConexao, moduloConexao);
  Application.Run;
end.
