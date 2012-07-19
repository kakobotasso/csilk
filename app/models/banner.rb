class Banner < ActiveRecord::Base
  has_attached_file :imagem, :styles => { :thumb => '303x61>', :original => '929x185>' }
end
