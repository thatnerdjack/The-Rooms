#require "High Score API" #FOR TESTING

def firstrun
	@room = 0
	puts "Welcome to the rooms. This game will twist your mind in ways you cant even imagine. You may never sleep again. It is advised you turn back now. Would you like to?"
	@turnback = gets.chomp.downcase
	if @turnback == "no"
		@room = 0
		puts "So you are that stupid. Ok then. If you're going to die, I might as well know your name. What is it?"
		get_name
		puts "Ok #{@name}, lets being *evil laugh*."
		@room = 1
	elsif @turnback == "yes"
		puts "Good choise. Pitty, you looked like you were ready for a... deathly adventure."
		@running = false
	else
		puts "Stop mumbling and give me an answer!"
	end
end

def room1
	if @room1return == true
		puts "You feel like you have been here before. It almost feels like you have gone back to the start..."
	else
		puts "You feel the ground drop out from under you. You fall for what seems like an eternity until you wake up. You think for a moment this all may have been a dream but you are struck back to reality when you realize where you are."
	end
	@room1return = true
	puts "From what you can make out you are in a dark, damp cave. As you walk around you trip over the uneven floor and slip on the puddles that have formed there. You notice something odd, about the walls but cant quite make it out. You also see a path straight ahead of you and a door to your left."
	@asking = true
	while @asking
		@command = gets.chomp.downcase
		if @command == "f"
			@asking = false
			@room = 3
		elsif @command == "l"
			@asking = false
			@room = "question"
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
		elsif @command == "dev cheat 9000"
			@asking = false
			@room = "cheaty"
		elsif @command == "look closer"
			@intel = true
			puts "You decide to try and take a closer look at the walls. You notice something very strange. The walls seem to have wires running through them. You notice they glow and buzz periodicly. You come to the conclusion that this maze is not what it seems to be and from now on will keep an eye out for strange things."
		elsif @command == "look"
			puts "From what you can make out you are in a dark, damp cave. As you walk around you trip over the uneven floor and slip on the puddles that have formed there. You notice something odd, about the walls but cant quite make it out. You also see a path straight ahead of you and a door to your left."
		elsif @command == "help"
			puts "WIP" #WIP!!!
		else
			puts "That's not a valid responce you idiot. If you need to, type 'help' for commands."
		end #command if
	end #asking while
end #method

def room2
	if @room2return == true
		puts "You feel like you have been here before. The air moves around you and pushes you in."
	end
	@room2return = true
	puts "This room is simmilar to the last one. Perhaps the floor has more puddles of watter but overall it is the same dark and creepy cave. You notice a door infront of you that requires a key. You also can go back the way you came."
	if @intel == true
		puts "You also notice something suspicious too your right, but you cant be to sure what it is."
	end
	@asking = true
	while @asking
		@command = gets.chomp.downcase
		if @command == "f"
			@asking = false
			if @keyused == true
				puts "You enter the unlocked door and enter the room."
				@room = 6
			else
				puts "You do not have the key. Do you want to try and pick the lock?"
				@lockresponce = gets.chomp.downcase
				if @lockresponce == "yes"
					chance = 1 + rand(100)
					if chance == 97
						puts "You picked the lock! You then get up, and enter the next room."
						@room = 6
					else
						@asking = true
						puts "You tried to pick the lock and eventually gave up. You set back and try another path."
					end #chance if
				end #lockresponce if
			end #keyused if
		elsif @command == "l"
			puts "You cannot go left."
		elsif @command == "b"
			@asking = false
			@room = 1
		elsif @command == "r"
			if @room5discovery == true
				@asking = false
				puts "You decide to go into the secret passage way on the right and enter that room."
				@room = 5
			elsif @intel == true
				puts "You think there is something over there but you cannot be sure. You need to take a closer look."
			else
				puts "You cannot go right."
			end #go right criteria if
		elsif @command == "take"
			puts "There is nothing to take."
		elsif @command == "use"
			puts "What would you like to use?"
			@usecommand == gets.chomp.downcase
			if @usecommand == "key"
				if @key == "a key"
					@keyused = true
					@key = ""
					puts "You used the key to unlock the door."
				else
					puts "There is nothing to do."
				end #using key if
			else
				puts "You cannot use that here."
			end #usecommand if
		elsif @command == "items"
			puts "You have #{@shovel}, #{@key}, #{@ladder}, #{@bridge}."
		elsif @command == "look closer"
			if @intel == true
				@room5discovery = true
				puts "You decide that you need to investigate what is over on the right. As you look closer you notice a secret passage way on the right. You think it might be dangerous and take a step back to ponder your options."
			else
				puts "There is nothing to look closer at."
			end
		elsif @command == "look"
			puts "This room is simmilar to the last one. Perhaps the floor has more puddles of watter but overall it is the same dark and creepy cave. You notice a door infront of you that requires a key. You also can go back the way you came."
		elsif @command == "help"
			puts "WIP" #WIP!!!
		else
			puts "That's not a valid responce you idiot. If you need to, type 'help' for commands."
		end #command if
	end #asking while
end #method

def room3
	if @room3return == true
		puts "You feel like you have been here before. The air moves around you and pushes you in."
	end
	@room3return = true
	puts "This room is simmilar to the last one. There is one rusty shovel in the left hand corrner of the room which is covered in cobwebs. There is a passage straight ahead and you could also go back from where you came."
	@asking = true
	while @asking
		@command = gets.chomp.downcase
		if @command == "f"
			@asking = false
			@room = "pit"
		elsif @command == "l"
			if @room3hole == true
				@asking = false
				@room = 5
			else
				puts "You cannot go left."
			end #room3hole if
		elsif @command == "b"
			@asking = false
			@room = 1
		elsif @command == "r"
			puts "You cannot go right."
		elsif @command == "take"
			@shovel = "a shovel"
			puts "You have taken a shovel."
			if @intel == true
				puts "As you take the shovel you notice that the ground it was resting on is particularly soft. It might be something that you could dig into."
			end #shovel intel if
		elsif @command == "use"
			puts "What would you like to use"
			@usecommand = gets.chomp.downcase
			if @usecommand == "shovel" and @shovel == "a shovel"
				@room3hole = true
				puts "You start to dig through the wall and uncover a tunnel. You try to listen to what is on the otherside and hear machines humming and beeping. You take a step back to contemplate your options."
			else
				puts "You cannot use that here."
			end #usecommand if
		elsif @command == "items"
			puts "You have #{@shovel}, #{@key}, #{@ladder}, #{@bridge}."
		elsif @command == "look closer"
			puts "There is nothing to look closer at."
		elsif @command == "look"
			"This room is simmilar to the last one. There is one rusty shovel in the left hand corrner of the room which is covered in cobwebs. There is a passage straight ahead and you could also go back from where you came."
		elsif @command == "help"
			puts "WIP" #WIP!!!
		else
			puts "That's not a valid responce you idiot. If you need to, type 'help' for commands."
		end #command if
	end #asking while
end #method if

def room4
	if @room4return == true
		puts "You feel like you have been here before. The air moves around you and pushes you in."
	end
	@room4return = true
	puts "This room is different from the others. It's quite large and the walls are smooth. In the center of the room there is a stone pedestal about four feet off the ground. Resting on the pedestal is a small, brittle key. The only way out of this room is the way you came."
	@asking = true
	while @asking
		@command = gets.chomp.downcase
		if @command == "f"
			puts "You cannot go forwards."
		elsif @command == "l"
			puts "You cannot go left."
		elsif @command == "b"
			@room = "pit"
		elsif @command == "r"
			puts "You cannot go right."
		elsif @command == "take"
			@key = "a key"
			puts "You have taken a key."
		elsif @command == "use"
			puts "There is nothing for you to do."
		elsif @command == "items"
			puts "You have #{@shovel}, #{@key}, #{@ladder}, #{@bridge}."
		elsif @command == "look closer"
			puts "There is nothing to look closer at."
		elsif @command == "look"
			puts "This room is different from the others. It's quite large and the walls are smooth. In the center of the room there is a stone pedestal about four feet off the ground. Resting on the pedestal is a small, brittle key. The only way out of this room is the way you came."
		elsif @command == "help"
			puts "WIP" #WIP!!!
		else
			puts "That's not a valid responce you idiot. If you need to, type 'help' for commands."
		end #command if
	end #asking while
end #method

def room5
	if @room5return == true
		puts "You feel like you have been here before. The air moves around you and pushes you in."
	end
	@room5return = true
	puts "As you find your way into this room you feel as if you have stepped into another world. All around you are computers beeping and humming and wires are everywhere making you trip as you walk in. It's bright in here which is a nice change from the dark and damp caves you have been wandering in for what seems like hours now. As you pick yourself back up you notice two ways out."
	if @room3return == true and @room2return == true and @room3hole == true
		puts "There is the way you came in. But there is also an exit to your left. It seems like the other end of a secret passage."
	elsif @room3return == true and @room2return == true
		puts "There is the way you came in. But there is also an exit to your right. It looks like a tunnel in the ground and after a closer look you discover it is a hole into another room. However the other side is filled in with dirt and you come to the conclusion that the room on the other side must be the room with the rusty shovel. You think you might be able to dig through."
	elsif @room2return == true
		puts "There is the way you came in. But there is also an exit to your right. It looks like a tunnel in the ground and after a closer look you discover it is a hole into another room. However the other side is filled in with dirt. If only you had a shovel."
	elsif @room3return == true
		puts "There is the way you came in. But there is also an exit to your left. It seems like the other end of a secret passage."
	end
	puts "There is also a ladder resting in a corrner."
	@asking = true
	while @asking
		@command = gets.chomp.downcase
		if @command == "f"
			puts "You cannot go forwards."
		elsif @command == "l"
			@room5discovery = true
			@room = 2
		elsif @command == "b"
			puts "You cannot go backwards."
		elsif @command == "r"
			if @room3hole == true
				@room = 3
			else
				puts "You can't go that way it's blocked."
			end
		elsif @command == "take"
			@ladder = "a ladder"
			puts "You have taken a ladder."
		elsif @command == "use"
			puts "What would you like to use?"
			@usecommand = gets.chomp.downcase
			if @usecommand == "shovel" and @shovel == "a shovel" and @room3hole == false
				puts "You take your shovel to the hole in the wall and you try to clear the dirt blockage that is in your way. Afterwards you are tired and you take a step back to contemplate your options."
				@room3hole = true
			else
				puts "There is nothing for you to do."
			end
		elsif @command == "items"
			puts "You have #{@shovel}, #{@key}, #{@ladder}, #{@bridge}."
		elsif @command == "look closer"
			puts "There is nothing to look closer at."
		elsif @command == "look"
			@room5return = true
			puts "As you find your way into this room you feel as if you have stepped into another world. All around you are computers beeping and humming and wires are everywhere making you trip as you walk in. It's bright in here which is a nice change from the dark and damp caves you have been wandering in for what seems like hours now. As you pick yourself back up you notice two ways out."
			if @room3return == true and @room2return == true and @room3hole == true
				puts "There is the way you came in. But there is also an exit to your left. It seems like the other end of a secret passage."
			elsif @room3return == true and @room2return == true
				puts "There is the way you came in. But there is also an exit to your right. It looks like a tunnel in the ground and after a closer look you discover it is a hole into another room. However the other side is filled in with dirt and you come to the conclusion that the room on the other side must be the room with the rusty shovel. You think you might be able to dig through."
			elsif @room3hole == true and @room2return == true
				puts "There is the way you came in. But there is also the hole you just cleared."
			elsif @room2return == true
				puts "There is the way you came in. But there is also an exit to your right. It looks like a tunnel in the ground and after a closer look you discover it is a hole into another room. However the other side is filled in with dirt. If only you had a shovel."
			elsif @room3return == true
				puts "There is the way you came in. But there is also an exit to your left. It seems like the other end of a secret passage."
			end
			if @ladder == ""
				puts "There is also a ladder resting in the corrner."
			end
		elsif @command == "help"
			puts "WIP" #WIP!!!
		else
			puts "That's not a valid responce you idiot. If you need to, type 'help' for commands."
		end #command if
	end #asking while
end #method

def room6
	if @room6return == true
		puts "You feel like you have been here before. The air moves around you and pushes you in."
	end
	puts "As you walk into the room you find it to be much smaller than the others. The only point of intrest is the door on the other side of the room. You attempt to open it but you find a latch which is rusted shut. You need to find something to break that latch if you want to keep moving forward."
	@asking = true
	while @asking
		@command = gets.chomp.downcase
		if @command == "f"
			if @latchbroken == true
				@room = 7
			else
				puts "You need to break the latch first."
			end
		elsif @command == "l"
			puts "You cannot go left."
		elsif @command == "b"
			@room = 2
		elsif @command == "r"
			puts "You cannot go right."
		elsif @command == "take"
			puts "There is nothing to take."
		elsif @command == "use"
			puts "What would you like to use?"
			@usecommand = gets.chomp.downcase
			if @usecommand == "shovel" and @shovel == "a shovel"
				puts "You take up your shovel and slam it down on the latch with all of your might. It takes a few tries but eventually it breaks. You step back to rest and contemplate your options."
				@latchbroken = true
			else
				puts "There is nothing to do."
			end
		elsif @command == "items"
			puts "You have #{@shovel}, #{@key}, #{@ladder}, #{@bridge}."
		elsif @command == "look closer"
			puts "There is nothing to look closer at."
		elsif @command == "look"
			puts "As you walk into the room you find it to be much smaller than the others. The only point of intrest is the door on the other side of the room."
		elsif @command == "help"
			puts "WIP" #WIP!!!
		else
			puts "That's not a valid responce you idiot. If you need to, type 'help' for commands."
		end #command if
	end #asking while
end #method

def room7
	if @room7return == true
		puts "You feel like you have been here before. The air moves around you and pushes you in."
	end
	puts "As you walk into this room fear washes over you and strikes you to your core. The room is very large with a door on the far wall and pit in the middle that looks like it falls into an abyss of nothing. You could try to open the door but the door looks heavy and you may be too weak. But death dosent sound fun either. Which would you like to try, death or door? (Hint: You dont have to use the commands that you have been using until now. Just type 'death' or 'door' without the quotes.)"
	@asking = true
	while @asking
		@command = gets.chomp.downcase
		if @command == "death"
			@asking = false
			puts "You decide to give up and you jump into the pit. Such a shame..."
			@room = "credits"
		elsif @command == "door"
			@asking = false
			if @latchbroken == true
				@lifechance = 1 + rand(100)
				if @lifechance < 50
					puts "You try to open the door but you dont have the strength. You collapse on the floor and die. Such a shame..."
					@room = "credits"
				else
					puts "You push the door with all of the strengh you have left and it moves enough for you to get through!"
					@room = 8
				end #lifechance if
			else
				@asking = false
				puts "You push the door with all of the strengh you have left and it moves enough for you to get through!"
				@room = 8
			end #latchbroken if
		else
			puts "That's not a valid responce you idiot."
		end #command if
	end #asking while
end #method

def room8
	puts "Congratulations! You have beaten the rooms! You are one of the few to have survived. I underestimated you. Now since you have won you have the choice of watching the credits or just ending the game now. Just type 'credits' or 'end'."
	@asking = true
	while @asking
		@command = gets.chomp.downcase
		if @command == "credits"
			@asking = false
			@room = "credits"
		elsif @command == "end"
			@asking = false
			@running = false
		else
			puts "That's not a valid responce."
		end #command if
	end #asking while
end #method

def question
	puts "You start walking down the path and stop at a corrner. You question whether this is a good idea. The soft ground goves you the idea that this may be a trap. Do you continue forward or turn back?"
	@asking = true
	while @asking
		@command = gets.chomp.downcase
		if @command == "f"
			@room = 2
		elsif @command == "l"
			puts "You cannot go left."
		elsif @command == "b"
			@room = 1
		elsif @command == "r"
			puts "You cannot go right."
		elsif @command == "take"
			if @questionhole == true
				puts "You have taken a bridge."
				@bridge = "a bridge"
			else
				puts "There is nothing to take."
			end
		elsif @command == "use"
			puts "What would you like to use?"
			@usecommand = gets.chomp.downcase
			if @usecommand == "shovel" and @shovel == "a shovel"
				puts "You take your shovel and start to dig up the soft ground underneath you. You dont think there is anything under there but you just want to be safe. But to your amazement you find a bridge underneath all of the dirt. Something that might be of use later on."
				@bridge = "a bridge"
			else
				puts "There is nothing to do."
			end
		elsif @command == "items"
			puts "You have #{@shovel}, #{@key}, #{@ladder}, #{@bridge}."
		elsif @command == "look closer"
			puts "There is nothing to look closer at."
		elsif @command == "look"
			puts "You could either continue forward and turn the corrner, or you could turn back. You also feel that the soft ground may lead to a trap."
		elsif @command == "help"
			puts "WIP" #WIP!!!
		else
			puts "That's not a valid responce you idiot. If you need to, type 'help' for commands."
		end #command if
	end #asking while
end #method

def pit
	if @pitreturn == false
		puts "You walk into a very dark and narrow hallway. As you stumble around the room you fall into a pit! You feel as you did at the beginning of this journey."
		@room = 1
	else
		puts "As you have been here before you take extra care not to fall into that pit. You can make out a door on the far side of the room but between you and the door is a very large pit. You would need a small bridge to cross it."
	end
	@asking = true
	while @asking
		@command = gets.chomp.downcase
		if @command == "f"
			if @pitcover == true
				puts "You walk carefully across the bridge you laid down and make it to the door on the far side of the room."
				@room = 4
			elsif @pitcover == false and @intel == false
				puts "Being the idiot you are, you decide to walk forward right into the pit again."
				@room = 1
			else
				puts "You cant go that way. You would fall into a pit."
			end
		end
		elsif @command == "l"
			puts "You cannot go left."
		elsif @command == "b"
			@room = 3
		elsif @command == "r"
			puts "You cannot go right."
		elsif @command == "take"
			puts "There is nothing to take."
		elsif @command == "use"
			puts "What would you like to do?"
			@usecommand = gets.chomp.downcase
			if @usecommand == "bridge" and @bridge == "a bridge"
				puts "You take the bridge off of your back and place it over the pit. Hopefully it will withstand your weight."
				@pitcover = true
				@bridge = ""
			else
				puts "There is nothing for you to do."
			end
		elsif @command == "items"
			puts "You have #{@shovel}, #{@key}, #{@ladder}, #{@bridge}."
		elsif @command == "look closer"
			puts "There is nothing to look closer at."
		elsif @command == "look"
			puts "As you have been here before you take extra care not to fall into that pit. You can make out a door on the far side of the room but between you and the door is a very large pit. You would need a small bridge to cross it."
		elsif @command == "help"
			puts "WIP" #WIP!!!
		else
			puts "That's not a valid responce you idiot. If you need to, type 'help' for commands."
		end #command if
	end #asking while
end #method

def cheaty
	if @name == "Jack" or @name == "jack" or @name == "Jack D."
		puts "Hello Jack. I'm giving you intel and all the items now..."
		@shovel = "a shovel"
		@key = "a key"
		@ladder = "a ladder"
		@bridge = "a bridge"
		@room1return = true
		@room2return = true
		@room3return = true
		@room4return = true
		@room5return = true
		@room6return = true
		@room7return = true
		@questionreturn = true
		@pitreturn = true
		@pitcover = true
		@intel = true
		sleep 1
		puts "Now which room would you like to go to?"
		@cheat = gets.chomp.downcase
		if @cheat == "1"
			@room = 1
		elsif @cheat == "2"
			@room = 2
		elsif @cheat == "3"
			@room = 3
		elsif @cheat == "4"
			@room = 4
		elsif @cheat == "5"
			@room = 5
		elsif @cheat == "6"
			@room = 6
		elsif @cheat == "7"
			@room = 7
		elsif @cheat == "8"
			@room = 8
		elsif @cheat == "question"
			@room = "question"
		elsif @cheat == "pit"
			@room = "pit"
		end #Jack cheat if
	else
		puts "Wow... you know how to cheat... impresive................................................"
		sleep 1
		@running = false
	end #name check if
end #method

def credits
	puts "The Rooms"
	sleep 1
	puts ""
	sleep 1
	puts "---------"
	sleep 1
	puts ""
	sleep 1
	puts "Created by Jack Doherty"
	sleep 1
	puts ""
	sleep 1
	puts "---------"
	sleep 1
	puts ""
	sleep 1
	puts "Inspired by the game Dunnet"
	sleep 1
	puts ""
	sleep 1
	puts "---------"
	sleep 1
	puts ""
	sleep 1
	puts "Made for Intro to Programing"
end #method