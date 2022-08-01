# Data Structure / Algorithm

# Questions we might have:
# - What is a substring?
# - What is a palindrome?
# - Will iinputs always be strings?
# - What does "treat palinidrome words case sensitively" mean?
# - Are we returning a new string or are we modifying the given string?

# PROBLEM:
# Input: string
# Output: array of substrings that are palindromes 
# Rules:
#      Explicit requirements:
#       - return an array of all plindromes in substrings.
#       - case sensitive; "Mom" not palindrome, 'mom' is.
#
# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.
#
# Algorithm:
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array
#
# Test cases:
#
# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# My solution:
# def substrings(str)
#   index_counter = 0
#   possible_sub_strings = []
# 
#     loop do
#       letter_counter = 2
# 
#       loop do
#         str[index_counter,letter_counter]
#         possible_sub_strings << str[index_counter,letter_counter] 
#         letter_counter +=1
# 
#         break if letter_counter > str.size
#       end
# 
#       str[index_counter,letter_counter]
#       index_counter += 1
#       break if index_counter == str.size - 1
#     end
#   possible_sub_strings.uniq!
# end

# Given solution:
def substrings(str)
  result = []
  starting_index = 0;

  while (starting_index <= str.length - 2)
    num_chars = 2
    while (num_chars <= str.length - starting_index)
      substring = str.slice(starting_index, num_chars)
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

def is_palindrome?(possible_sub_strings)
  return possible_sub_strings == possible_sub_strings.reverse
end

def palindrome_substrings(str)
  result = []
  substring_arr = substrings(str)
  substring_arr.each do |substring|
    result << substring if is_palindrome?(substring)
    end

  p result
end

p palindrome_substrings("supercalifragilisticexpialidocious"); # ["ili"]
p palindrome_substrings("abcddcbA");   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome"); # []
p palindrome_substrings("");
