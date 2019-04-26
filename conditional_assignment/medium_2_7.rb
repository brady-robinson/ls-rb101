# Problem:

# Given a year after 1752, calculate the number of friday the 
# 13ths in that year. 

# Examples/test cases:

# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# input: a year
# output: an integer representing the number of friday the 
# 13ths in the year

# Data structure: integers

# Algorithm:
# - require the date class
# - initialize a count variable
# - initialize a new date set to the input year, default to first month, 13th day
# - use 1 up to 12 to iterate
# - on each iteration, if it is a friday, add one to count
# - change the date to the next month
# - return the count

require 'date'

def friday_13th(year)
  date = Date.new(year, 1, 13)
  count = 0

  1.upto(12) do
    if date.friday? 
      count += 1
    end
    date = date.next_month
  end

  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
