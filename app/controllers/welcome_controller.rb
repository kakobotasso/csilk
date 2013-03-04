class WelcomeController < ApplicationController
	layout 'home'

  def index
  	@banners = Banner.all
  	@produtos = Produto.limit(18).sort! { |a,b| b.id <=> a.id }
  	@produtos_acessados = Produto.limit(9).sort! { |a,b| b.nvisitas <=> a.nvisitas }
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
