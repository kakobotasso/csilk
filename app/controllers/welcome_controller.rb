class WelcomeController < ApplicationController
	layout 'home'

  def index
  	@banners = Banner.all
  	@produtos = Produto.all.sort! { |a,b| b.id <=> a.id }
  	@produtos_acessados = Produto.all.sort! { |a,b| b.nvisitas <=> a.nvisitas }
  end

  def quem_somos
  end

  def fazemos
  end

  def clientes
  end

end
