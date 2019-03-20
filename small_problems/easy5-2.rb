# problem: convert number of minutes to hours and minutes
# on a 24 hour scale

# data: integer
# input: integer that represents the number of minutes

# alg: 
# - for values less than plus or minus 1440
#   - simply take value from / 60 as the hour and % 60 as the minutes
#   - if negative subtract from 24, and 60 respectively
#   - if positive add to 0, and 0 respectively
# - for values greater than plus or minus 1440
#   - first take remainder of % 1440 and work with this value
#     repeating until the value is less than 1440

def time_of_day(integer)
  hour = 0
  minutes = 0
    if 0 < integer && integer < 1440
      hour = integer / 60
      minutes = integer % 60
      "#{hour}:#{minutes}"
    elsif 0 > integer && integer > -1440
      hour = integer * -1 / 60
      minutes = integer * -1 % 60
      if hour == 0
        hour += 1
      end
      "#{24 - hour}:#{60 - minutes}"
    elsif 0
      "00:00"
    elsif integer > 1440
      integer
      loop do 
        integer -= 1440
        break if integer < 1440
      end
      hour = integer / 60
      minutes = integer % 60
      "#{hour}:#{minutes}"
    elsif integer < -1440
      integer
      loop do 
        integer += 1440
        break if integer > -1440
      end
      hour = integer * -1 / 60
      minutes = integer * -1 % 60
      if hour == 0
        hour += 1
      end
      "#{24 - hour}:#{60 - minutes}"
    end
end

puts time_of_day(0) #== "00:00"
puts time_of_day(-3) #== "23:57"
puts time_of_day(35) #== "00:35"
puts time_of_day(-1437) #== "00:03"
puts time_of_day(3000) #== "02:00"
puts time_of_day(800) #== "13:20"
puts time_of_day(-4231) #== "01:29"