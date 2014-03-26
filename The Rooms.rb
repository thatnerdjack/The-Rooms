#Notes:
#Add tutorial to beging


#The Rooms


#By Jack Doherty


require "High Score API"
require "Room Methods"

@shovel = ""
@key = ""
@ladder = ""
@bridge = ""
@room1return = false
@room2return = false
@room3return = false
@room4return = false
@room5return = false
@room6return = false
@room7return = false
@questionreturn = false
@pitreturn = false
@room3hole = false
@latchbroken = false
@questionhole = false
@pitcover = false


@room = 0
@running = true
while @running
	if @room == 0
		firstrun
	elsif @room == 1
		room1
	elsif @room == 2
		room2
	elsif @room == 3
		room3
	elsif @room == 4
		room4
	end
end