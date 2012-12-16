class Categoria < ActiveRecord::Base
  has_many :produtos

  # VALIDACOES
  validates_presence_of :nome
  validates_presence_of :slug
  validates_uniqueness_of :nome
  validates_uniqueness_of :slug

end
