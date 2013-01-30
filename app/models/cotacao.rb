class Cotacao < ActiveRecord::Base
  attr_accessible :cnpj, :email, :estado, :forma_contato, :produto_id, :telefone, :novo

  belongs_to :produto

  def nome_estado
	Estados::ESTADO.rassoc(estado)[0]
  end

  def tipo_contato
  	if forma_contato
  		"Telefone"
  	else
  		"E-mail"
  	end
  end
end
