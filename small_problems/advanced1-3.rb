# def transpose(matrix)
#   new_matrix = [[],[],[]]
#   row_1 = matrix[0]
#   row_2 = matrix[1]
#   row_3 = matrix[2]

#   count = 0

#   loop do 
#     break if count >= row_1.size
#     new_matrix[count] << row_1[count]
#     count += 1
#   end

#   count = 0

#   loop do 
#     break if count >= row_1.size
#     new_matrix[count] << row_2[count]
#     count += 1
#   end

#   count = 0

#   loop do 
#     break if count >= row_1.size
#     new_matrix[count] << row_3[count]
#     count += 1
#   end

#   new_matrix

# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]


def other_way(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map {|row_index| matrix[row_index][column_index]}
    result << new_row
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = other_way(matrix)

p new_matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
