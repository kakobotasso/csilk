class Produto < ActiveRecord::Base
  belongs_to :categoria
  has_many :fotos
  has_many :cotacoes

  # VALIDACOES
  validates_presence_of :nome
  validates_presence_of :slug
  validates_presence_of :categoria_id
  #validates_associated :categoria_id
  validates_uniqueness_of :nome
  validates_uniqueness_of :slug
end
