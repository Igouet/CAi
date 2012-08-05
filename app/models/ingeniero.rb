class Ingeniero < ActiveRecord::Base
  
  attr_accessor :password
  attr_accessible :name, :email, :password, :password_confirmation
  
  belongs_to :equipo
  has_many :posts
  has_many :comentarios

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, :presence => true,
                   :length => {:maximum => 25}
                   
  validates :email, :presence => true,
                    :format => { :with => email_regex},
                    :uniqueness => true
                    
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 } 
                       
  before_save :encrypt_password
  
  def has_password? (submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  
  def self.authenticate (email, submitted_password)
    ingeniero = find_by_email(email)
    return nil if ingeniero.nil?
    return ingeniero if ingeniero.has_password?(submitted_password)
  end
  
  def self.authenticate_with_salt(id, cookie_salt)
    ingeniero = find_by_id(id)
    (ingeniero && ingeniero.salt == cookie_salt) ? ingeniero : nil
  end
    
  
  private
  
    def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(password)
    end
    
    def encrypt (string)
      secure_hash("#{salt}--#{string}")
    end
    
    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end
    
    def secure_hash (string)
      Digest::SHA2.hexdigest(string)
    end
  
  
end
