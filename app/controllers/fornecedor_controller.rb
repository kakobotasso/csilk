class FornecedorController < ApplicationController
  layout 'home'

  def new
  	@fornecedor = Fornecedor.new
  end

  def create
  	@fornecedor = Fornecedor.new(params[:fornecedor])

    respond_to do |format|
      if @fornecedor.save
        format.html { redirect_to fornecedores_path, :notice => 'Dados enviados com sucesso' }
      else
        format.html { redirect_to fornecedores_path }
      end
    end
  end

end