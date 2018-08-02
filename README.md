# Youtube CLI

We created a Youtube CLI that displays and interacts with  Justin Bieber and Taylor Swift's channels, playlists, and videos through Youtube's Data API. We pulled 20 videos from each of the artist's uploads playlist along with pertinent information such as title, views, and subscriber count. Our CLI allows access to view and manipulate our database through ActiveRecord.

## Youtube API requirements

Follow the instructions at 
https://developers.google.com/youtube/v3/quickstart/ruby
to install the Google Client Library through the following command.

```
gem install google-api-client
```

### Installing All Gems through Bundle

Run bundle install in terminal to install all required Ruby gems for the program.

```
bundle install
```

## How to seed data and execute CLI

To seed data to a new database, enter the following command into terminal.
```
rake db:migrate
ruby youtube/api.rb
```

To execute the CLI
```
ruby bin/run.rb
```

## Models & Schema

We have 4 model classes called Channel, Playlist, User, and Video. The Video class joins Playlist and User. The Channel class has many playlists.

```
class Channel < ActiveRecord::Base
	has_many :playlists
end
```

```
class Playlist < ActiveRecord::Base
	belongs_to :channel
	has_many :videos
	has_many :users, through: :videos
end
```

```
class User < ActiveRecord::Base
	has_many :videos
	has_many :playlists, through: :videos
end
```

```
class Video < ActiveRecord::Base
	belongs_to :user
	belongs_to :playlist
end
```

```
ActiveRecord::Schema.define(version: 20180802140820) do

  create_table "channels", force: :cascade do |t|
    t.string "name"
    t.float  "views"
    t.float  "subscribers"
  end

  create_table "playlists", force: :cascade do |t|
    t.string  "name"
    t.integer "channel_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "videos", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
    t.integer "playlist_id"
    t.float   "views"
  end

end
```

### CLI Commands

Below are the available commands to interact with our program through terminal. 

```
	- help : displays this help message
	- channels : display all available channels
	- greetbieber: Greet Bieber!
	- greettaylor: Greet Taylor!
	- bestsongofalltime: display the most viewed song of all time
	- bieberplaylist : display all of Justin Bieber's playlists
	- taylorplaylist : display all of Taylor Swift's playlists
	- biebersongs: display all of Bieber's songs
	- taylorsongs: display all of Taylor's songs
	- destroybieber: destroy Biebz
	- exit: exit the CLI
```

## Built With

Blood, sweat, and tears.

## Authors

* Kenny Yang - https://github.com/kennyyang17

* Sean Huang - https://github.com/hyprul

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

Michael, Humzah, Joshua, Graham