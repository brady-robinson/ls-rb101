STAR = "*"
SPACE = " "

def diamond(size)
  half = size / 2
  count = 1
  half.downto(1) do |number|
    puts "#{SPACE * number}#{STAR * count}#{SPACE * number}"
    count += 2
  end

  puts "#{STAR * size}"

  count -= 2

  1.upto(half) do |number|
    puts "#{SPACE * number}#{STAR * count}#{SPACE * number}"
    count -= 2
  end
end

diamond(9)