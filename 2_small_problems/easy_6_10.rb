STAR = '*'
SPACE = " "

def triangle(num)
  count = num - 1
  count_2 = 1

  num.times do
    puts "#{SPACE * count}#{STAR * count_2}"
    count -= 1
    count_2 += 1
  end
end

triangle(5)
triangle(9)
triangle(50)