#High Score API (WIP)


#By Jack Doherty


#INSERT INTRO HERE


def set_score(number) #Sets the player's score to specified ammount. Put at top of program so that everytime the program runs the player's score is reset.
	@score = number
end

def add_score(number) #Adds specified ammount to player's score.
	number.times do
		@score = @score + 1
	end
end

def sub_score(number) #Subtracts specified ammount from player's score
	number.times do
		@score = @score - 1
	end
end

def get_name #Gets player's name.
	puts "What is your name?"
	@name = gets.chomp
end

def high_score_read #Reads your high score files and stores the number in the "hsnum" variable and the name in the "hsname" variable.
	@hsnum = File.read("scorenum.txt").to_i #Make sure to have this file created in the same directory as your program.
	@hsname = File.read("scorename.txt") #Make sure to have this file created in the same directory as your program.
	@hsname = @hsname.chomp
end

def high_score_read_write #Opens high score file to reading and writing and stores name and nuber in the same variabels as in "high_score_read".
	@hsnumfile = File.open("scorenum.txt", "r+") #Make sure to have this file created in the same directory as your program.
	@hsnamefile = File.open("scorename.txt", "r+") #Make sure to have this file created in the same directory as your program.
	@hsnum = @hsnumfile.read.to_i
	@hsname = @hsnamefile.read.chomp
end

def high_score_check(type) #Checks if player beat high score and writes to file if true. For type write high for high score and low for low score.
	if type == "high"
		if @hsnum < @score
			puts "You also have the new high score! The previous high score was held by #{@hsname} who had a score of #{@hsnum}."
			@hsnamefile.puts @name
			@hsnumfile.puts @score
		else
			puts "The high score is held by #{@hsname} with a score of #{@hsnum}."
		end
	elsif type == "low"
		if @hsnum > @score
			puts "You also have the new high score! The previous high score was held by #{@hsname} who had a score of #{@hsnum}."
			@hsnamefile.puts @name
			@hsnumfile.puts @score
		else
			puts "The high score is held by #{@hsname} with a score of #{@hsnum}."
		end
	end
end