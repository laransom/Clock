puts 'What time is it?'
hour=0
minute=0

until (hour.between?(1,12)) && (minute.between?(0,59))
		time = gets.chomp.split(':')
		hour = time[0].to_i
		minute = time[1].to_i
		if hour < 1 || hour > 12 || minute < 0 || minute > 59
			puts 'Please enter a proper time in 12 hour x:xx format'
		end
end

mhand = minute * 6
hhand = (hour * 30) + (minute * 0.5)

angle = mhand - hhand

if angle < 0
	angle = angle.abs
end

if angle > 180
	angle = 360 - angle
end

if minute.between?(0,9)
	minute = "0#{minute}"
end



puts "The clocks' hands at #{hour}:#{minute} are at a #{angle} degree angle."
