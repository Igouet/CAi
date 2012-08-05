class Modulo < ActiveRecord::Base
  default_scope order('id ASC')
  has_many :seccions
end
