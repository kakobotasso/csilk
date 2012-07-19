class Newsletter < ActiveRecord::Base
  validates_presence_of :nome
  validates_presence_of :email
end
