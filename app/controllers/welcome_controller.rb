class WelcomeController < ApplicationController
	layout 'home'

  def index
  	@banners = Banner.all
  	@produtos = Produto.all.sort! { |a,b| b.id <=> a.id }
  end

  def quem_somos
  end

  def fazemos
  end

end
