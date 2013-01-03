class ProdutosController < ApplicationController
  layout false, :only => [:contato]

  def index
    @produto = Produto.find_by_slug(params[:produto])
  end

  def contato
  	@contato_produto = ContatoProduto.new(params[:contato_produto])

    @produto = Produto.find(params[:produto_id])
    ncontatos = @produto.ncontatos ||= 0
    ncontatos += 1

    if @contato_produto.save && @produto.update_attributes(:ncontatos => ncontatos)
  	  @mensagem = "Mensagem enviada com sucesso."
  	else
  	  @mensagem = "Erro ao enviar mensagem."
  	end
  end
  
  def aumenta_visita
    @produto = Produto.find_by_slug(params[:produto])
    nvisitas = @produto.nvisitas ||= 0
    nvisitas += 1
    @produto.update_attribute(:nvisitas, nvisitas)
  end

end
