class Playlist < ActiveRecord::Base
	belongs_to :channel
	has_many :videos
	has_many :users, through: :videos
end
