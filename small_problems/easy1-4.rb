# problem: count the occurences of each unique item
# data structure: array
# alogrithm:
# - define method
# - use .each along with count and delete to print


def count_occurrences(item)
  unique_array = item.uniq
  unique_array.each do |value|
    puts "#{value} => #{item.count(value)}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)