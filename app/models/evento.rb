class Evento < ActiveRecord::Base
  has_many :albums
  has_many :posts
end
