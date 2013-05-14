class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation

  has_secure_password

  has_many :votes

  validates :email, uniqueness: true, presence: true
end
