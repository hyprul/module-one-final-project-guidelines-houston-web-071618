require 'pry'

class CommandLineInterface

	def greetbieber

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
	

		puts "Welcome to JustinBieberVEVO's Youtube Channel, the command line interface to Justin Bieber!"


	end

	def greetswift
		puts "█░═█░══════════░░░░░████░═░█████████████
██═█═───────────══░═████░███████████████
████═══════════─░░██░███████████████████
███░══════════─═─░░██═░█████████████████
███════════════──═░░░█░░████████████████
███═─═══════───═──═█░░█░═░██████████████
███══════─═────────═█░═░░░░░████████████
███═─═══─═─═─═──────═░░░═░░░░█░███░░░░══
███══───═─────────────░██░════════░░░░██
███═──═░░░═────────────═░██░░░░░░░░░░███
███══─════░█░═──────────══████████████░═
███═══─═─══████░───═─═───═██████████████
██░─═─═░█████████░═══─══░███████████████
██═──══████████████═───═░████░██████████
██═───═███░═██═─█░█░────░═─█░═░██████░░░
██░──═──═█░═░═─═───░───══────════█░░═══░
███───═──═░░════───══──══────══════───═░
███──═══─═════─────═───═══─────────────═
██░───═───────────══────═══─────────═─══
█──═──══─────────═══────══─────────════░
█═─═──═══────────═══────═══───────═════░
██─░═──════──────═══─────═══─────══════░
██═██──════──────══──────══─────══════░░
██─░█──═════─────═───────══──═─══════░░░
██░░█═─══════────═░░═──═░░░───════════░░
█████░─═══════─═──███░░████────═══════░░
██████──═══════───░███████═───═─══════░░
██████──════════─────═░──────═─══════░░░
██████░─═══════───────────────══════░═░░
███████─═══════────░██─███░═─════════░░█
█░█████═─════════█████████████░═══════░█
░═░█████═══════░█████████████──════░═░██
══░═█████══════──████░█░══██░──═══░═░░██
════██══██═░════─███░░██████─════░░░░███
█══███─═███░░═════█████████═─═════░░████
█═░░█──░███░█░════─██████░───════░██████
░░░══─═█░██░██░─══──────────═─══░███████
██─░─════██░███═─═───────────══░████████
█═─█═══─░░░░████░══─────────══██████████
░══█════█░═░░█████░░═══════░░███████████"
	
	puts "Welcome to TaylorSwiftVEVO's Youtube Channel, the command line interface to Taylor Swift!"
	end



	def help
		help = <<-HELP
	I accept the following commands:
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
					puts channel.name
				end
			when 'bestsongofalltime'
				puts Video.all.max_by {|video| video.views.to_i}.name
				puts "OFCCCCC!!!"

			when 'greetbieber'
				greetbieber

			when 'greettaylor'
				greetswift

			when 'biebersongs'

				target = Channel.find_by(name: "JustinBieberVEVO")
				if target == nil
					puts "Biebz is destroyed!"
					puts "OFCCCCC!!!"
					run
				end
				#binding.pry
				videos = target.playlists[0].videos

				videos.each do |video|
					puts video.name
				end
			when 'taylorsongs'
				target = Channel.find_by(name: "TaylorSwiftVEVO")
				videos = target.playlists[0].videos

				videos.each do |video|
					puts video.name
				end
			when 'bieberplaylist'
				puts Playlist.all.first.name

			when 'taylorplaylist'
				puts Playlist.all[1].name

			when 'destroybieber'
				target = Channel.find_by(name: "JustinBieberVEVO")
				#destroy videos first
				target.playlists.all.each do |playlist|
					playlist.videos.destroy_all
					playlist.destroy
				end

				target.destroy

				#binding.pry
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
