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

# Print response object as JSON
def print_results(response, playlist, user)
  temp =  response.to_json
  parsed = JSON.parse(temp)
  fixed = parsed["items"].map do |hash|
    #binding.pry
    hash["snippet"]["title"]
  end

  fixed.each do |video_name|
    #playlist.videos << Video.create(name: video_name)
    Video.create(name: video_name, playlist: playlist, user: user)
    #binding.pry
  end


  #create_resource()
  #puts parsed
  
end


### END BOILERPLATE CODE

# Sample ruby code for search.list

#SIMPLE SEARCH BY TITLE
def search_list_by_keyword(service, part, **params)
  params = params.delete_if { |p, v| v == ''}
  response = service.list_searches(part, params)
  #print_results(response)
end

search_response = search_list_by_keyword(service, 'snippet',
  max_results: 25,
  q: 'best underwater fire basket weaving hodor hodor',
  type: '')





#LIST ALL INFO ABOUT CHANNEL BY ID
def channels_list_by_id(service, part, **params)
  params = params.delete_if { |p, v| v == ''}
  response = service.list_channels(part, params)
  #binding.pry
  #print_results(response)
end

#channels_list_by_id(service, 'snippet,contentDetails,statistics',
  #id: 'UCHkj014U2CQ2Nv0UZeYpE_A')

channels_list_by_id(service, 'snippet,contentDetails,statistics',
  id: 'UCANLZYMidaCbLQFWXBC95Jg')



# Sample ruby code for playlists.list

#LIST ALL PLAYLISTS FOR CHANNEL
def playlists_list_by_channel_id(service, part, **params)
  params = params.delete_if { |p, v| v == ''}
  response = service.list_playlists(part, params)
  #binding.pry
  #print_results(response)
end

 playlists_list_by_channel_id(service, 'snippet,contentDetails',
   id: 'UUHkj014U2CQ2Nv0UZeYpE_A',#id
  max_results: 25)


 # playlists_list_by_channel_id(service, 'snippet,contentDetails',
 #   id: 'UUANLZYMidaCbLQFWXBC95Jg',#id
 #  max_results: 25)



#DATA FUNCTIONS


#FIND ALL SONGS FOR SPECIFIC PLAYLIST BY ID
def find_all_songs_for_uploads(service, part, playlist, user,  **params)
  params = params.delete_if { |p, v| v == ''}
  response = service.list_playlist_items(part, params)
  print_results(response, playlist, user)
end



##SEED DATA FUNCTIONS

bieberchannel = Channel.create(name: "JustinBieberVEVO")
biebs = Playlist.create(name: "Justin Bieber's Uploads", channel: bieberchannel)
sean = User.create(first_name: "Sean", last_name: "Huang")

find_all_songs_for_uploads(service, 'snippet,contentDetails', 
  biebs,
  sean,
  max_results: 20,
  playlist_id: 'UUHkj014U2CQ2Nv0UZeYpE_A',
  )


taylorswiftchannel = Channel.create(name:"TaylorSwiftVEVO")
tswift = Playlist.create(name: "Taylor Swift's Uploads", channel: taylorswiftchannel)
kenny = User.create(first_name: "Kenny", last_name: "Yang")

find_all_songs_for_uploads(service, 'snippet,contentDetails', 
  tswift,
  kenny,
  max_results: 20,
  playlist_id: 'UUANLZYMidaCbLQFWXBC95Jg',
  )

binding.pry


#parsed["items"][0]["snippet"]["title"]
  