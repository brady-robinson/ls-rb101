
def print_line(grid_size, max)
  number_of_stars = grid_size - 2 * max
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end



def diamond(grid_size)
  up_to_max = (grid_size - 1) / 2
  up_to_max.downto(0) {|iteration| print_line(grid_size, iteration)}
  1.upto(up_to_max) {|iteration| print_line(grid_size, iteration)}
end

diamond(15)
