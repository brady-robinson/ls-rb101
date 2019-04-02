STAR = '*'
SPACE = ' '

def star(n)
  middle_line = STAR * n
  spaces_max = n/2 - 1
  iterator = n/2 - 1

  0.upto(spaces_max) do 
    puts "#{STAR}#{SPACE * iterator}#{STAR}#{SPACE * iterator}#{STAR}".center(n)
    iterator -= 1
  end

  puts middle_line

  iterator_2 = 0

  spaces_max.downto(0) do 
    puts "#{STAR}#{SPACE * iterator_2}#{STAR}#{SPACE * iterator_2}#{STAR}".center(n)
    iterator_2 += 1
  end

end

star(9)
star(13)
star(29)
