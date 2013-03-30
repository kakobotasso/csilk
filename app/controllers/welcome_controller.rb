class WelcomeController < ApplicationController
	layout 'home'

  def index
  	@banners = Banner.all
  	@produtos = Produto.order("id DESC").limit(18)
  	@produtos_acessados = Produto.order("nvisitas DESC").limit(9)
  end

  def quem_somos
  end

  def fazemos
  end

  def clientes
  end

  def sustentabilidade
  end

  def social
  end

end
