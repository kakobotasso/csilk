class Contato < ActiveRecord::Base
  # VALIDACOES
  validates_presence_of :nome
  validates_presence_of :email
  validates_presence_of :telefone
  validates_presence_of :assunto
  validates_presence_of :mensagem

  def novo?
  	if novo == 1
  		true
  	else
  		false
  	end
  end

end
