class Album < ActiveRecord::Base
  
  has_many :fotos
  belongs_to :evento
end
