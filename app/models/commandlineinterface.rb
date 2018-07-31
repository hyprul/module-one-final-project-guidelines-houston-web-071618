class CommandLineInterface

	def greet(channel)
		puts "Welcome to #{channel.name}'s Youtube Channel, the command line interface to Justin Bieber!"
	end

	def gets_user_input(channel)
		puts "We can get you a list of all of #{channel.name}'s songs and playlists!"
		puts "Enter songs to get started: "
		input = gets.downcase.strip

		# case input
		# when 
			
		# else 
		# 	help
		# end

		#puts input
	end

	def help
		help = <<-HELP
	I accept the following commands:
	- help : displays this help message
	- list : displays a list of songs you can play
	- play : lets you choose a song to play
	- exit : exits this program
	HELP

	puts help
	end


end
