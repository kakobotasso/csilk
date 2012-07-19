class Foto < ActiveRecord::Base
  belongs_to :produto

  has_attached_file :picture, :styles => { :menor => "52x52", :medio => "315x315", :homeprod => "183x138>", :original => "630x630" }
end
