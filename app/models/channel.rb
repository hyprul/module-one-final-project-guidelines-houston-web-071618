class Channel < ActiveRecord::Base
	has_many :playlists
	#belongs_to :user
end
