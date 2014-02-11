class User < ActiveRecord::Base
  validates :first_name, :last_name, :date_of_birth, :email, :password, presence: true
  validates :email, uniqueness: true
  
  # has_many :artists, dependent: :destroy
end
