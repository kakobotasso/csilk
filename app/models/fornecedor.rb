class Fornecedor < ActiveRecord::Base
  # VALIDACOES
  validates_presence_of :razao_social
  validates_presence_of :nome_contato
  validates_presence_of :telefone
  validates_presence_of :email
  validates_presence_of :cnpj

  def novo?
  	if novo == 1
  		true
  	else
  		false
  	end
  	
  end
end