class Post < ActiveRecord::Base
  
    attr_accessible :avatar, :contenido, :titulo, :resumen, :seccion_id
  
    belongs_to :ingeniero
    belongs_to :evento
    belongs_to :seccion
    
    validates :titulo, :presence => true
    validates :contenido, :presence => true
    validates :resumen, :presence => true
    validates :ingeniero_id, :presence => true
    
    has_attached_file :avatar, 
                        :default_url => '/assets/avatars/default_post_picture_:style.png',
                        :url => '/system/:class/:attachment/:id/:style/:filename',
                        :styles => { :original => "700x2000>",
                                    :grande => "590x250#",
                                     :destacado => "420x250#",
                                     :normal => "140x140#"}
    

  
end
