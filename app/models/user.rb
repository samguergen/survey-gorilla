class User < ActiveRecord::Base
  has_secure_password
  has_many :surveys

  validates :first_name, :last_name, :email, :password_digest, presence: true
  validates :email, uniqueness: true
end
