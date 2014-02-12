class User < ActiveRecord::Base
  validates :first_name, :last_name, :date_of_birth, :email, presence: true
  validates :email, uniqueness: true
  has_secure_password

end
