# up: calculate retirement age
      # input: age
      #        age of retirement
      # output: current year, retirement year, numbers of years till retirement

      # implicit: do math to output year based on non-year inputs
      # explicit: should I validate the input?

# tests: NA
# data: numbers, time
# alg:
# - take whole integers
# - use current year as base
# - add dufference of age and retirement age to current year
# - also print the difference between age and returement age

require 'date'

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Date.today.year
years_till_retirement = retirement_age - age
retirement_year = current_year + years_till_retirement

puts "It's #{current_year}. You will require in #{retirement_year}."
puts "You have only #{years_till_retirement} years of work to go!"