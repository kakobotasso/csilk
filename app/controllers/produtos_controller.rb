class ProdutosController < ApplicationController
  layout false, :only => [:contato]

  def index
    @produto = Produto.find_by_slug(params[:produto])
  end

  def contato
  	@contato_produto = ContatoProduto.new(params[:contato_produto])

  	if @contato_produto.save
	  @mensagem = "Mensagem enviada com sucesso."
	else
	  @mensagem = "Erro ao enviar mensagem."
	end
  end

end
