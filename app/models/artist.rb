class Artist < ActiveRecord::Base
  has_many :songs, dependent: :destroy
  validates :name, presence: true
  validates :photo_url, presence: true
end