class Video < ActiveRecord::Base
	belongs_to :user
	belongs_to :playlist
end

