pets_with_numbers = {dog: 1, cats: 2, fish: 3}
counter = 0

loop do 
  break if counter == pets_with_numbers.size
  pets = pets_with_numbers.keys
  pet = pets[counter]
  number = pets_with_numbers[pet]
  puts "I have #{number} #{pet}!"
  counter += 1
end