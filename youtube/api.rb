require_relative '../config/environment'

### START BOILERPLATE CODE

# Sample Ruby code for user authorization

require 'rubygems'
gem 'google-api-client', '>0.7'
require 'google/apis'
require 'google/apis/youtube_v3'
require 'googleauth'
require 'googleauth/stores/file_token_store'
require 'json'
require 'pry'
require 'fileutils'

# REPLACE WITH VALID REDIRECT_URI FOR YOUR CLIENT
REDIRECT_URI = 'http://localhost:8090'
APPLICATION_NAME = 'YouTube Data API Ruby Tests'

# REPLACE WITH NAME/LOCATION OF YOUR client_secrets.json FILE
CLIENT_SECRETS_PATH = 'youtube/client_secret.json'

# REPLACE FINAL ARGUMENT WITH FILE WHERE CREDENTIALS WILL BE STORED
CREDENTIALS_PATH = File.join(Dir.home, '.credentials',
                             "youtube-ruby-snippet-tests.yaml")

# SCOPE FOR WHICH THIS SCRIPT REQUESTS AUTHORIZATION
SCOPE = Google::Apis::YoutubeV3::AUTH_YOUTUBE_FORCE_SSL

def authorize
  FileUtils.mkdir_p(File.dirname(CREDENTIALS_PATH))

  client_id = Google::Auth::ClientId.from_file(CLIENT_SECRETS_PATH)
  token_store = Google::Auth::Stores::FileTokenStore.new(file: CREDENTIALS_PATH)
  authorizer = Google::Auth::UserAuthorizer.new(
    client_id, SCOPE, token_store)
  user_id = 'default'
  credentials = authorizer.get_credentials(user_id)
  if credentials.nil?
    url = authorizer.get_authorization_url(base_url: REDIRECT_URI)
    puts "Open the following URL in the browser and enter the " +
         "resulting code after authorization"
    puts url
    code = gets
    credentials = authorizer.get_and_store_credentials_from_code(
      user_id: user_id, code: code, base_url: REDIRECT_URI)
  end
  credentials
end

# Initialize the API
service = Google::Apis::YoutubeV3::YouTubeService.new
service.client_options.application_name = APPLICATION_NAME
service.authorization = authorize

# 
def create_videos(response, playlist, user, service)
  temp =  response.to_json
  parsed = JSON.parse(temp)
  #binding.pry

  parsed["items"].each do |hash|
      id = hash["contentDetails"]["videoId"]
      count = getvideoviewcount(service, 'snippet,contentDetails,statistics',
  id: id)
      #binding.pry
      title = hash["snippet"]["title"]
      Video.create(name: title, playlist: playlist, user: user, views: count)
      #binding.pry
  end
  
end



#GRAB VIEWCOUNT OF VIDEO
def getvideoviewcount(service, part, **params)
  params = params.delete_if { |p, v| v == ''}
  response = service.list_videos(part, params)
  temp =  response.to_json
  parsed = JSON.parse(temp)
  parsed["items"][0]["statistics"]["viewCount"]

end





#LIST ALL INFO ABOUT CHANNEL BY ID
def create_channel_by_id(service, part, **params)
  params = params.delete_if { |p, v| v == ''}
  response = service.list_channels(part, params)
  temp = response.to_json
  parsed = JSON.parse(temp)
  channelname = parsed["items"][0]["snippet"]["customUrl"]
  subscribers = parsed["items"][0]["statistics"]["subscriberCount"]
  views = parsed["items"][0]["statistics"]["viewCount"]
  Channel.create(name: channelname, subscribers: subscribers, views: views  )
 
end



#LIST ALL PLAYLISTS FOR CHANNEL BY CHANNEL ID, NOT USED
def playlists_list_by_channel_id(service, part, **params)
  params = params.delete_if { |p, v| v == ''}
  response = service.list_playlists(part, params)
  #binding.pry
  
end

 # playlists_list_by_channel_id(service, 'snippet,contentDetails',
 #   id: 'UUHkj014U2CQ2Nv0UZeYpE_A',#id
 #  max_results: 25)


 # playlists_list_by_channel_id(service, 'snippet,contentDetails',
 #   id: 'UUANLZYMidaCbLQFWXBC95Jg',#id
 #  max_results: 25)



#DATA FUNCTIONS


#FIND ALL SONGS FOR SPECIFIC PLAYLIST BY  PLAYLIST ID
def find_all_songs_for_uploads(service, part, playlist, user,  **params)
  params = params.delete_if { |p, v| v == ''}
  response = service.list_playlist_items(part, params)
  create_videos(response, playlist, user, service)
end



##SEED DATA FUNCTIONS
#BIEBER CHANNEL
bieberchannel = create_channel_by_id(service, 'snippet,contentDetails,statistics',
  id: 'UCHkj014U2CQ2Nv0UZeYpE_A')

#TAYLOR SWIFT CHANNEL
taylorswiftchannel = create_channel_by_id(service, 'snippet,contentDetails,statistics',
  id: 'UCANLZYMidaCbLQFWXBC95Jg')


biebs = Playlist.create(name: "Justin Bieber's Uploads", channel: bieberchannel)
sean = User.create(first_name: "Sean", last_name: "Huang")

find_all_songs_for_uploads(service, 'snippet,contentDetails', 
  biebs,
  sean,
  max_results: 20,
  playlist_id: 'UUHkj014U2CQ2Nv0UZeYpE_A',
  )


tswift = Playlist.create(name: "Taylor Swift's Uploads", channel: taylorswiftchannel)
kenny = User.create(first_name: "Kenny", last_name: "Yang")

find_all_songs_for_uploads(service, 'snippet,contentDetails', 
  tswift,
  kenny,
  max_results: 20,
  playlist_id: 'UUANLZYMidaCbLQFWXBC95Jg',
  )

#binding.pry


#parsed["items"][0]["snippet"]["title"]
  