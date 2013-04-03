class Admin::DashboardController < Admin::AdminController
layout 'admin'  
before_filter :authenticate_user!

  def index
    @produtos = Produto.order("id DESC").limit(5)
    @fale_conosco = Contato.order("id DESC").limit(5)
    @contato_produtos = ContatoProduto.order("id DESC").limit(5)
    @fornecedores = Fornecedor.order("id DESC").limit(5)
    @cotacoes = Cotacao.order("id DESC").limit(5)
  end

end
