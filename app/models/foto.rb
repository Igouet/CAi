class Foto < ActiveRecord::Base

  attr_accessible :avatar

  belongs_to :album

  has_attached_file :avatar,
                    :default_url => '/assets/avatars/default_foto_picture_:style.png',
                    :url => '/system/:class/:attachment/:id/:style/:filename',
                    :styles => { :grande => "935x700#",
                                 :slide => "430x245#",
                                 :rectangulo => "430x161#",
                                 :miniatura => "144x161#"
                    }

end
