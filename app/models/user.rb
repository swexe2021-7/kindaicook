class User < ApplicationRecord
    validates :password, presence: true, confirmation: true#裏でチェックする
  attr_accessor :password,:password_confirmation
  
  def password=(val)
    if val.present?
      self.password = BCrypt::Password.create(val)
    end
    @password = val
  end
end
