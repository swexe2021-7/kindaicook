class User < ApplicationRecord
    validates :password, presence: true, confirmation: true
  
  attr_accessor :password, :password_confirmation
  
  def password=(val)
    if val.present?
<<<<<<< HEAD
      self.pass = BCrypt::Password.create(val)
=======
      self.pass= BCrypt::Password.create(val)
>>>>>>> nov29
    end
    @password = val
  end
end
