@asking = true
while @asking
	@command = gets.chomp.downcase
	if @command == "f"
		puts "You cannot go forwards."
	elsif @command == "l"
		puts "You cannot go left."
	elsif @command == "b"
		puts "You cannot go backwards."
	elsif @command == "r"
		puts "You cannot go right."
	elsif @command == "take"
		puts "There is nothing to take."
	elsif @command == "use"
		puts "There is nothing for you to do."
	elsif @command == "items"
		puts "You have #{@shovel}, #{@key}, #{@ladder}, #{@bridge}."
	elsif @command == "look closer"
		if @intel == true
			#Look Closer Description
		else
			puts "There is nothing to look closer at."
		end
	elsif @command == "look"
		#Description
	elsif @command == "help"
		puts "WIP" #WIP!!!
	else
		puts "That's not a valid responce you idiot. If you need to, type 'help' for commands."
	end #command if
end #asking while
