class CategoriaController < ApplicationController
	def index
		@categoria = Categoria.find_by_slug(params[:categoria])
		@produtos = @categoria.produtos
	end
end
