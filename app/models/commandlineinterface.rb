require 'pry'

class CommandLineInterface

	def greet(channel)

		if channel.name == "JustinBieberVEVO"

		puts "█████████████████████████▌▌██▌██████████
████████████████████▌▌▌▌▌╫▌▌▌╫▌▌████████
██████████▌▌██████▌╫╒╒╒╥╫╫╫╫▌╫▌▌▌█▌█████
██████▌▌██╫▌██▌▌▌╫╒╒╒╒╒╒╥╥╫╫╫╫╫▌▌▌▌▌████
█████╫╥╫╫╫╫▌▌▌╫╫╥╒╒╒╒╒╒╒╒╒╒╫╫▌╫▌█▌╫╫▌███
████╫╥╥╥╥╥╫╫╫╫╫╥╒╒╒╒╒╒╒╒╫╥╫╥╫▌▌▌██▌▌▌▌██
███╫╫╫╫╫╫╥╥╥╥╫╥╒╒╒╒╒╒╥╥╥╥╥╥╥╥▌▌▌████▌▌▌█
██▌╫╫╫╫╫╫╫╫╫╫╥╥╒╒╒╒╒╒╒╒╒╒╒╥╥╥╫▌▌█████▌▌█
██▌╫╫╫╥╫╫╫╫╫╥╥╥╒╒╒╒╒╒╒╒╒╥╫╥╥╒╥╥▌█████▌▌▌
█▌╫╫╫╫╫╥╥╥╫╥╥╥╥╥╥╒╒╒╒╒╒╒╥╥╥╒╥╥╥╥▌█████▌█
█▌╫▌╫╫╥╥╥╥╥╥╥╫╥╥╒╒╒╒╒╒╒╒╒╒╒╥╒╥╥╥╫█████▌█
█▌▌▌╫╫╫╥╥╫╥╒╥╥╥╒╒╒╒╒╒╒╒╒╒╒╒╒╒╒╒╥╥▌█████▌
█▌╫▌╫╫╫╫╥╥╥╥╥╥╒╥╒╒╒╒╒╒╒╒╒╒╒╒╒╒╒╒╒╒█████▌
█▌▌▌▌╫╫╥╥╥╒╒╒╒╒╒╥╒╒╒╒╒╒╒╥▌██▌╒╒╒╒╒▌█████
▌▌▌▌╫╫╥╥╒╒╒╒╒╒╒╒╒╥╒╒╒╒╒╫██████╫╒╒╒╒█████
▌▌▌▌╫╫╥╒╒╒╒╒╒╒╒╒╥╒╒╒╒╒█████████╥╒╒╒▌███╫
▌▌▌▌╫╥╒╒╒╒╒╒╒╒╒╥╥╒╒╒╫█████╒╒╒╒╫╫╒╒╒╥██▌╒
▌▌▌╫╥╥╒╒╒╒╒╒╥╒╥╒╒╒╒╒████▌╒╒╒╒╒╒╒╒╒╒╥▌▌╫╒
▌▌╫▌██▌▌╫╒╒╒╒╥╒╥╒╒╒╫███╫╥▌▌▌╫╥╥╥╒╒╒╥▌▌╫╒
▌╫╫████████╫╥╒╥╒╒╒╒╫▌╫╫▌██▌█▌╫╫╫╥╒╒╒█▌╫╒
▌╫██████████╫╒╒╥╒╥╒╥╥╫█▌╫╫╫╫╫▌╫╫╥╒╒╒▌▌▌╒
╫╫██▌╫▌█████▌╥╥╒╥╒╒╒╫▌█▌█████▌▌╫╒╒╒╒▌▌██
╫▌█▌╒╒╒▌███▌▌╫╒╥╒╒╒╥▌██▌██████╫╥╒╒╒╒╫▌█▌
╫▌█╫╫▌███████▌╫╒╒╒╒╫▌██╒╒███╫╫╥╒╒╒╒╒╫▌▌▌
╫▌╫╫▌█▌███████▌╥╒╒╒╥╫██╫╒▌▌╫╒╒╒╒╒╒╒╒╫█╒╒
╫▌▌╫▌█████████▌╫╒╒╒╒╒╒╫▌▌╥╫╥╫╥╥╒╒╒╒╒╫█╒╒
╫▌▌╫██▌╒███╫██╫▌╒╒╒╥╒╒╥▌▌▌╫╫╥╥╥╒╒╒╒╒╫▌▌▌
╫╫╫╫██╫╒▌█▌╥╥╫▌▌╥╒╒╒╥╒╒╒╫╫╫╥╥╒╒╒╒╒╒╒╫╫█▌
╫╥╥╫██▌▌▌╫╥╥╥╫╫▌╥╒╒╒╒╥╒╒╒╒╒╒╥╥╒╒╒╒╒╥╫╫╒╒
╫╒╒╫╫╫▌╫╫╫▌╫╫╫▌▌╥╒╒╒╒╒╥╒╒╒╒╒╒╒╒╒╒╒╒╒╫╫╒╒
╫╥╒╥╥╫▌▌▌▌╫╥╥╫╫▌╥╒╒╒╒╥╒╒╒╒╒╒╒╒╒╒╒╒╒╥╫╫╥╫
╫╥╥╒╒╫╫╫╫╫╥╥╫╫▌▌╥╒╒╒╒╒╥╒╒╒╒╒╒╒╒╒╒╒╒╥╫╥╒╒
▌╫╥╒╒╒╒╒╥╥╥╫╫╫▌▌╒╒╒╒╒╥╫╫╒╒╒╒╒╒╒╒╒╒╒╥╥╫╫╫
▌╫╥╒╒╒╒╒╒╒╥╥╫╫▌╫╒╒╒╒╒╒╫▌╫╒╒╒╒╒╒╒╒╒╒╥╒███
█╫╥╥╒╒╒╒╒╥╫╫╥▌▌╫╒╒╒╒╒╒╒╫╫╫╒╒╒╒╒╒╒╒╒╥╒██▌
█╫╫╥╥╥╥╒╒╒╫╒╫▌╫╫╒╒╒╒╒╒╒╒╫╫╫╒╒╒╒╒╒╒╒╥╥╫▌▌
▌▌╫╫╥╥╥╥╒╥╥╥╫▌╥╫╫╒╒╒╫╥╒╥╒╥╥╫╒╒╒╒╒╒╒╥╒▌██
╥▌╫╫╫╥╥╒╥╥╥╥╫▌╒╫▌▌╫╫███╫╒╒╫╥╒╒╒╒╒╒╥╥╒███
▌▌╫╫╥╥╥╥╥╥╥╥╫█╫███▌▌▌▌▌╒╒╒╥╫╒╒╒╒╒╒╥╥╒███
█▌╫╫╫╥╥╥╥╥╫╥╫████▌▌▌╥╒╒╒╒╒╒╫╫╒╒╒╒╥╫╥╒███
█▌▌╫╫╫╥╥╒╥╥╥╥▌██▌▌▌╫╒╒╒╒╒╒╒╫▌╫╒╥╥╥╫╥╒███
▌▌▌▌╫╫╫╥╥╒╥╒╒╫╫╫▌╫╒╥╒╒╒╒╒╒╒╒╫▌╫╥╫╥╫╒╒███
╒╒╥▌╫╫╥╫╫╥╥╥╥╥╒╒╒╒╒╒╒╥╥╒╒╒╒╒╒╫▌╥╥╥╥╥╒███
╒╒╒▌▌╫╫╥╫╥╥╥╫╫╥╒╫╫▌▌▌╫╫▌▌╫╒╒╫╥╫╥╥╥╫╥╒███
╫╫╥▌▌▌╫╫╥╥╥╥╫╫╒╫▌▌▌█████████╥╒╥╥╥╫╫╒╒███
▌▌▌╫▌▌▌╫╫╫╥╥╫╥╫▌██▌▌╫╒╒╒▌██╫╒╒╥╒╥╫╫╒▌███
▌▌▌▌╫▌▌╫╫╫╥╥╫╫██▌╫╒╒╒╒╒▌█▌╫╒╒╒╒╒╥╫╫╒████
▌▌██╫╫▌▌╫╫╥╒▌████╫╒╫▌▌█▌╫╫╒╒╒╒╒╒╫╫╫╒████
████▌╫▌▌╫╫╫╥╒█████▌▌▌▌╥╫▌╫╒╒╒╒╥╫╫╫╫╥████
█████╫▌▌▌╫╫╥╒╒╫▌▌▌▌╥╫▌▌▌╫╒╒╥╒╥╒╫╫╫╫╫████
█████▌╫▌╫▌╥╥╫╫╫╫▌▌▌▌▌█▌╫╥╒╒╒╥╥╒╫╫╫▌▌████
██████╫▌▌╫╫╫╫╫▌╫╫╫▌▌▌╫╫╥╒╒╒╒╒╒╥╥╫╫▌▌████
██████▌╫▌▌╫╫╫╫╫╫╫╫╥╫╫╫╫╥╒╒╒╒╒╒╥╥╫▌▌█████
███████╫╫▌▌╫╫╫╫╫╥╥╥╥╫╥╥╥╒╒╒╒╒╒╥╥▌█╫█████
████████╥▌▌▌╫╫╫╫╥╥╥╥╒╒╒╒╒╒╒╒╒╒╥╫██╒█████
█████████╫▌▌╫▌╫╫╫╥╒╒╥╒╒╒╒╒╒╒╒╒╫██▌╥█████
██████████╫▌▌╫╫╫╥╥╒╥╒╒╒╒╒╒╒╒╒╥▌██╥▌█████
███████████╫▌╫╫╫╫╥╥╒╒╒╒╒╒╥╒╒╒▌██▌╒██████
████████████▌▌▌╫╥╫╥╒╒╥╒╒╒╥╒╒▌██▌╫╒██████
█████████████▌▌╫╫╥╥╒╒╥╫╥╫╥╒╫███▌╒╫██████
█████████████▌█▌╫╫╫╫╥╥╫╫╥╫▌███▌╫╒███████
██████████████▌▌█▌▌╫╫╫▌▌▌▌████▌╥╒███████
██████████████▌▌▌██▌▌▌▌▌▌▌▌▌█▌╫╒╫███████
██████████████▌▌▌█▌▌▌▌▌▌▌▌▌██▌╫╒████████"
	end#end of if


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
	- channels : display all available channels
	- bieberplaylist : display all of Justin Bieber's playlists
	- taylorplaylist : display all of Taylor Swift's playlists
	- biebersongs: display all of Bieber's songs
	- taylorsongs: display all of Taylor's songs
	- exit: exit the CLI
	HELP

	puts help
	end

	def exit_vevo
		puts "_________Justin•♥____________Justin•♥•Bi
______Justin•♥•Biebe_______Justin•♥•BieberJust
____Justin•♥•BieberJust___Justin•♥•BieberJustin•♥
___Justin•♥•BieberJustin•♥•BieberJu________Justin•
__Justin•♥•BieberJustin•♥•BieberJu__________Justin•
_Justin•♥•BieberJustin•♥•BieberJustin________Justin•
_Justin•♥•BieberJustin•♥•BieberJustin•♥•B_______Justin
Justin•♥•BieberJustin•♥•BieberJustin•♥•Biebe____Justin
Justin•♥•BieberJustin•♥•BieberJustin•♥•BieberJu___Just
Justin•♥•BieberJustin•♥•BieberJustin•♥•BieberJustin•♥•
Justin•♥•BieberJustin•♥•BieberJustin•♥•BieberJustin•♥
_Justin•♥•BieberJustin•♥•BieberJustin•♥•BieberJusti
__Justin•♥•BieberJustin•♥•BieberJustin•♥•BieberJus
____Justin•♥•BieberJustin•♥•BieberJustin•♥•Bieb
______Justin•♥•BieberJustin•♥•BieberJustin•♥•
_________Justin•♥•BieberJustin•♥•BieberJus
____________Justin•♥•BieberJustin•♥•Bi
______________Justin•♥•BieberJusti
_________________Justin•♥•Bieber
___________________Justin•♥•Bi
_____________________Justin•
______________________Justi
_______________________Ju

"
	end



	def run
		help
		input = ""

		while input
			puts "Please enter a command:"
			input = gets.downcase.strip
			case input
			when 'channels'
				Channel.all.each do |channel|
					#binding.pry
					greet(channel)
					puts channel.name
				end
			# when 'play'
			# 	list(songs)
			# 	play(songs)
			when 'help'
				help
			when 'exit'
				exit_vevo
				break
			else
				help
			end

		end#end of while


	end


end
