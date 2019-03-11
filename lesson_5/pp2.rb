# problem: sort an array of hashes according to a particular value
# in each hash
# data structure: array
# alg:
# assign a new variable to the operation
# call method sort_by
# reference key publiched: to get return value of year
# call to integer on the year
# use comparison operator to sort

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books2 = books.sort_by do |book|
  book[:published]
end

p books2
