class ProdutosController < ApplicationController
  def index
    @produto = Produto.find_by_slug(params[:slug])
  end
end
