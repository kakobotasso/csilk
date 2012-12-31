class ContatoController < ApplicationController
  layout 'home'

  def new
  	@contato = Contato.new
  end

  def create
  	@contato = Contato.new(params[:contato])

    respond_to do |format|
      if @contato.save
        format.html { redirect_to contatos_path, :notice => 'Mensagem enviada com sucesso' }
      else
        format.html { redirect_to contatos_path }
      end
    end
  end

end