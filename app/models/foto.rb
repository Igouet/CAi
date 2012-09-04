class Foto < ActiveRecord::Base

  attr_accessible :avatar, :album_id, :descripcion, :name

  belongs_to :album

  has_attached_file :avatar,
                    :default_url => '/assets/avatars/default_foto_picture_:style.png',
                    :url => '/system/:class/:attachment/:id/:style/:filename',
                    :styles => {:grande => "935x700#",
                                :izquierda => "850x570#",
                                :viewport => "483x181#",
                                :rectangulo => "440x161#",
                                :thumb => "180x120#",
                                :miniatura => "144x161#"
                    }

end
