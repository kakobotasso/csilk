class CategoriaController < ApplicationController
	def index
		@categoria = Categoria.all
		#@produtos = @categoria.produtos
	end

	def show
		@categoria = Categoria.find_by_slug(params[:categoria])
		@produtos = @categoria.produtos
	end
end
