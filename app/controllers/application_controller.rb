class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :categorias

  def categorias
  	@categorias = Categoria.all
  end

end
