#encoding: utf-8
class CotacaoController < ApplicationController
	layout 'home'
	helper_method :opt_forma_contato

  def new
  	@cotacao = Cotacao.new
  	@categorias = Categoria.com_produtos
  end

  def create
  	@cotacao = Cotacao.new(params[:cotacao])

    respond_to do |format|
      if @cotacao.save
        format.html { redirect_to cotacoes_path, :notice => 'Cotação solicitada com sucesso' }
      else
        format.html { redirect_to cotacoes_path }
      end
    end
  end

  private
  def opt_forma_contato
  	[
  		["Telefone", 0],
  		["E-mail", 1]
  	]
  end
end