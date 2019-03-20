def print_in_box(string)
  horizontal_line = "+#{'-' * (string.size + 2)}+"
  empty_line = "|#{' ' * (string.size + 2)}|"

  puts horizontal_line
  puts empty_line
  puts "| #{string} |"
  puts empty_line
  puts horizontal_line
end

print_in_box('To boldly go where no one has gone before.')
