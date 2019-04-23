def triangle(size)
  spaces = size - 1
  stars = 1
  size.times do 
    puts "#{" " * spaces}#{"*" * stars}"
    spaces -= 1
    stars += 1
  end
end


triangle(5)
triangle(9)
triangle(50)