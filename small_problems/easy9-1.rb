def greeting(array, hash)
  "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

puts greeting(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
