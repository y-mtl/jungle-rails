class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews

  validates :firstname, :lastname, :email, :password, :password_confirmation, presence: true
  validates :email, :uniqueness => {:case_sensitive => false}
  validates :password, :password_confirmation, length: {minimum: 5}

  def self.authenticate_with_credentials(email, password)
    email = email.strip
    user = User.where('lower(email) = ?', email.downcase.delete(' ')).first
    if user && user.authenticate(password)
      return user
    else
      return nil
    end
  end

end
