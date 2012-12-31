class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :categorias, :categoria_menu



  def categorias
  	@categorias = Categoria.all
  end

  def categoria_menu
    categoria = Categoria.all
    categoria = categoria[ rand(categoria.size) ]

    if categoria.produtos.size > 0
      categoria.slug
    else
      categoria_menu
    end
  	#f_id = Categoria.first.id
  	#l_id = Categoria.last.id
  	#random = rand(f_id...l_id).to_i
  	#if Categoria.find_by_id(random).produtos.size > 0
  	#	Categoria.find_by_id(random).slug
  	#else
  	#	categoria_menu
  	#end
  end

end
