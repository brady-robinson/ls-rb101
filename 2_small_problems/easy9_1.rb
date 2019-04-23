def greetings(array, hash)
  name = array.join(" ")
  occupation = hash[:occupation]
  title = hash[:title]
  puts "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end


greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
