class Song < ActiveRecord::Base
  belongs_to :artist
  validates :title, presence: true
  validates :artist_id, presence: true
end