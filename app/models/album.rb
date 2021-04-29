class Album < ApplicationRecord
	belongs_to :user
	belongs_to :genre
	has_many :reviews
	has_one_attached :album_cover
	validates :title, :description, :band, :year, presence: true
	validates :album_cover, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'], size_range: 1..3.megabytes }

end
