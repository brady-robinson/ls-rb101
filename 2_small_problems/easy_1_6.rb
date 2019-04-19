def reverse_words(string)
  new_words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    new_words << word
  end

  new_words.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
