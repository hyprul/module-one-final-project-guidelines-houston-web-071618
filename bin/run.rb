require_relative '../config/environment'

biebs = Channel.new({
	name: "JustinBieberVEVO"
})
#puts biebs.name

#puts "HELLO WORLD"

new_cli = CommandLineInterface.new
new_cli.greet(biebs)
#new_cli.help
#new_cli.gets_user_input(biebs)
#new_cli.greet
