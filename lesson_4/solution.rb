def sum_even_number_row(row_number)
  rows = []
  start_integer = 2

  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2 # Arrays#last method will pull up the index of the array. 
                                       # Chaining Array#last again will get the value of the last index.
    
  end
  
  rows.last.sum
   # sum of the integers in the final row array
end

## MY SOLUTION
# def create_row(start_integer, row_length)
#   row = [start_integer]
#   number = start_integer + 2

#   while row.length < row_length
#     row << number
#     number += 2
#   end
#   # steps 2-4 
#   row
# end

# PROVIDED SOLUTION
def create_row(start_integer, row_length)
  row = []
  curent_integer = start_integer
  loop do
    row << curent_integer
    curent_integer += 2
    break if row.length == row_length
  end
  row
end

# Examples:
# Row number: 1 —> sum of integers in row : 2
#   - input: 1
#   - output: 2
# Row number: 2 —> sum of integers in row : 10 (4 + 6)
#   - input: 2
#   - output: 10
# Row number: 4 —> sum of integers in row: 68 (14 + 16 + 18 + 20)
#   - input: 4
#   - output: 68

 p sum_even_number_row(1)  == 2 # true
 p sum_even_number_row(2)  == 10 # true
 p sum_even_number_row(4)  == 68 # true

# 1. Create an empty ‘rows’ array to contain all of the rows
# 2. Create a ‘row’ array and add it to the overall ‘rows’ array
# 3. Repeat(loop) 1 step 2 until all the necessary rows have been created
#     1. All the rows have been created(break if) when the length of the ‘rows’ is == the input integer
# 4. Sum the final row
# 5. Return the value of the sum

# [
#   [2],
#   [4, 6],
#   [8, 10, 12],
#   [14, 16, 18, 20]
#   ….
# ]

# Calculating the start integer:
# Rule: first integer of row == last integer of previous row + 2
# Algotrith:
#   - get last row of the rows array
#   - get last integer of that row
#   - add 2

# Start: 2, length: 1 —> [2]
# Start: 4, length: 2 —> [4, 6]
# Start: 8, length: 3 —> [8, 10, 12]

 # p create_row(2, 1) # == [2]
 # p create_row(4, 2) # == [4, 6]
 # p create_row(8, 3) # == [8, 10, 12]


# 1. Create an empty ‘row’ to contain the integers
# 2. Add the starting integer
# 3. Increment the starting integer by 2 to get the next integer in the sequence 
# 4. Repeat(loop) steps 2 & 3 until the array reached the correct length(use break) 
# 5. Return the ‘row’ array

# Start the loop
#   - add the start integer to the row
#   - increment the start integer by 2 
#   - break if length of row == row_length
