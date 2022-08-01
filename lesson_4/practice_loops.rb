# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number

#     counter += 1
#   end

#   doubled_numbers
# end

# p my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# # not mutated
# p my_numbers                      # => [1, 4, 3, 7, 2, 6]


# def multiply (array, multiplier)
#   counter = 0
#   new_arr = []

#   loop do
#     break if array.size == counter

#     new_arr << array[counter] * multiplier

#     counter += 1
#   end

#   new_arr
# end

# p my_numbers = [1, 4, 3, 7, 2, 6]
# p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]


# def select_letter(str, criteria)
#   selected_letters = ''
#   counter = 0

#   loop do

#     break if counter == str.size
#     current_letter = str[counter]

#     selected_letters << current_letter if current_letter == criteria

#     counter += 1
#   end

#   selected_letters
# end

# question = 'How many times does a particular character appear in this sentence?'
# p select_letter(question, 'a') # => "aaaaaaaa"
# p select_letter(question, 't') # => "ttttt"
# p select_letter(question, 'z') # => ""


# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(produce_list)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruit = {}

#     loop do
#       break if counter == produce_list.size

#       current_key = produce_keys[counter]
#       current_value = produce_list[current_key]

#       if current_value == 'Fruit'
#         selected_fruit[current_key] = current_value
#       end

#       counter += 1
#      end
     
#   selected_fruit
# end 


# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

### PRACTICE PROBLEMS ###

# Practice Problem 1
# Given the array below:

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are
# the positions in the array.
# ANSWER:

# def flint_hash(arr)
# flintstones_hash = {}
# count = 0

#   arr.each do |word|
#     break if count == arr.size

#     flintstones_hash["#{word}"] = count

#     count += 1
#   end
#   flintstones_hash
# end

# p flint_hash(flintstones)

# flint_hash = {}

# flintstones.each_with_index do |word, index|
#   flint_hash[word] = index
# end

# p flint_hash

# Practice Problem 2
# Add up all of the ages from the Munster family hash:

# option 1:
# ages = { 
#          "Herman" => 32, 
#          "Lily" => 30, 
#          "Grandpa" => 5843, 
#          "Eddie" => 10, 
#          "Marilyn" => 22,
#          "Spot" => 237 
#        }
# p ages.values.sum

# # option 2:

# age_totals = 0

# ages.each do |_k,v|
#   age_totals += v
# end

# p age_totals

# Practice Problem 3
# In the age hash:
# remove people with age 100 and greater.

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# option 1
# ages.delete_if { |name, age| age > 100 }
# p ages

# option 2
# ages.keep_if { |_name, age| age < 100 }
# p ages

# option 3
# ages.select! { |_name, age| age < 100 }
# p ages


# Practice Problem 4
# Pick out the minimum age from our current Munster family hash:
# ages = { 
#          "Herman" => 32, 
#          "Lily" => 30, 
#          "Grandpa" => 5843, 
#          "Eddie" => 10, 
#          "Marilyn" => 22, 
#          "Spot" => 237 
#        }

# option 1

# p ages.values.min

# option 2

# def get_age(age_hash)
#   low_age = 1000

#   age_hash.each_value do |age|
#     low_age = age if age < low_age
#   end

#   low_age
# end

# p get_age(ages)

# Practice Problem 5
# In the array:
# Find the index of the first name that starts with "Be"

# flintstones = %W(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones.index { |word| word if word.start_with?("Be") }

# Practice Problem 6
# Amend this array so that the names are all shortened to just the first three characters:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.map! { |names| names[0,3]}
# p flintstones

# Practice Problem 7
# Create a hash that expresses the frequency with which each letter occurs in this string:
# ex. { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# statement = "The Flintstones Rock"

# letters = ('a'..'z').to_a + ('A'..'Z').to_a
# results = {}

# letters.each do |letter|
#   letter_frequency = statement.count(letter)
#   results[letter] = letter_frequency if letter_frequency > 0
# end

# p results

# _______________________________________________________________________________


# def palindrome?(str)
#   str.downcase.delete(' ') == str.reverse
# end

# def real_palindrome?(str)
#   new_str = str.downcase.delete('^a-z0-9')
#   palindrome?(new_str)
# end

# def palindromic_number?(num)
#   palindrome?(num.to_s)
# end


# p palindromic_number?(34543) #== true
# p palindromic_number?(123210) #== false
# p palindromic_number?(22) #== true
# p palindromic_number?(5) #== true

# -----------------------------------------------------------------------------

# Small problems EASY 4

# def short_long_short(str1, str2)
#   if str1.size > str2.size
#     str2 + str1 + str2
#   elsif str1.size < str2.size 
#     str1 + str2 + str1
#   end
# end


# p short_long_short('abc', 'defgh') # == "abcdefghabc"
# p short_long_short('abcde', 'fgh') # == "fghabcdefgh"
# p short_long_short('', 'xyz') # == "xyz"

#-----------------------------------------------------------------------------
# def century(year)
#   century = year/100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + suf_append(century)
# end

# def suf_append(century)
#   return 'th' if [11, 12, 13](century % 100).include?
#   last_digit = century % 10
#   case last_digit
#   when 1
#     'st'
#   when 2
#     'nd'
#   when 3
#     'rd'
#   else
#     'th'
#   end
# end

# p century(2000) # == '20th'
# p century(2001) # == '21st'
# p century(1965) # == '20th'
# p century(256) # == '3rd'
# p century(5) # == '1st'
# p century(10103) # == '102nd'
# p century(1052) # == '11th'
# p century(1127) # == '12th'
# p century(11201) # == '113th'

#-----------------------------------------------------------------------------

# def leap_year?(year)
#   if year % 4 == 0 && year % 100 != 0
#     true
#   elsif year % 100 == 0 && year % 400 == 0 
#     true
#   else 
#     false
#   end
# end

# def leap_year?(year)
#   if year < 1752
#     year % 4 == 0
#   else
#   (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
#   end
# end

# p leap_year?(2016) # == true
# p leap_year?(2015) # == false
# p leap_year?(2100) # == false
# p leap_year?(2400) # == true
# p leap_year?(240000) # == true
# p leap_year?(240001) # == false
# p leap_year?(2000) # == true
# p leap_year?(1900) # == false
# p leap_year?(1752) # == true
# p leap_year?(1700) # == false
# p leap_year?(1) # == false
# p leap_year?(100) # == false
# p leap_year?(400) # == true

#-----------------------------------------------------------------------------

# def multisum(num)
#   arr = []
#   1.upto(num).select { |n| arr << n if (n % 3 == 0 || n % 5 == 0) }
#   arr.sum
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

#-----------------------------------------------------------------------------

# def running_total(arr)
#   sum = 0

#   arr.map do |n| 
#     sum += n
#   end
# end


 # p running_total([2, 5, 13]) # == [2, 7, 20]
 # p running_total([14, 11, 7, 15, 20]) # == [14, 25, 32, 47, 67]
 # p running_total([3]) # == [3]
 # p running_total([]) # == []

#-----------------------------------------------------------------------------


#??????? COVERTING A STRING TO A SIIGNAL NUMBER! ????????????????????
# STR_TO_DIGITS = { 
#                   '1' => 1,
#                   '2' => 2,
#                   '3' => 3,
#                   '4' => 4,
#                   '5' => 5,
#                   '6' => 6,
#                   '7' => 7,
#                   '8' => 8,
#                   '9' => 9,
#                   '0' => 0
#                 }

# def string_to_integer(str)
#   digits = str.chars.map { |num| STR_TO_DIGITS[num]  }
  
#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# p string_to_integer('4321') # == 4321
# p string_to_integer('570') # == -570
# p string_to_integer('+100') #== 100

#-----------------------------------------------------------------------------

# def ascii_value(string)
#   string.chars.map { |letter| letter.ord }.sum 
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

#-----------------------------------------------------------------------------

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(minutes)
#  MINUTES_PER_DAY % minutes 
# end

# def time_of_day(minutes)
#   hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

  # if minutes > 0
  #   time_of_day = 0 + minutes
  # elsif minutes < 0
  #   time_of_day = 1440 + minutes
  # else
  #   time_of_day = 0
  # end

# end 

# p normalize_minutes_to_0_through_1439(35)
# p normalize_minutes_to_0_through_1439(800)

# p time_of_day(0) # == "00:00"
# p  time_of_day(-3) # == "23:57"
#  p time_of_day(35) # == "00:35"
# p time_of_day(-1437) # == "00:03"
# p time_of_day(3000) # == "02:00"
#  p time_of_day(800) # == "13:20"
# p time_of_day(-4231) # == "01:29"


# def after_midnight(time)
#   hours_to_minutes = (time.split(':').shift).to_i * MINUTES_PER_HOUR
#   minutes = (time.split(':').pop).to_i
#   total_minutes = (hours_to_minutes + minutes) % MINUTES_PER_DAY

#   # if total_minutes == 0 || total_minutes % 1440 == 0
#   #   after_midnight = 0
#   # else
#   #   after_midnight = total_minutes
#   # end

#   # after_midnight
# end

# def before_midnight(time)
#   hours_to_minutes = (time.split(':').shift).to_i * MINUTES_PER_HOUR
#   minutes = (time.split(':').pop).to_i
#   total_minutes = hours_to_minutes + minutes

#   if total_minutes == 0
#     before_midnight = total_minutes
#   else
#     before_midnight = MINUTES_PER_DAY - total_minutes
#   end
# end

# p after_midnight('00:00') # == 0
# p before_midnight('00:00') # == 0
# p after_midnight('12:34') # == 754
# p before_midnight('12:34') # == 686
# p after_midnight('24:00') # == 0
# p before_midnight('24:00') # == 0

#-----------------------------------------------------------------------------

# def swap_first_last(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   results = words.split.map { |word| swap_first_last(word) }
#   p results.join(' ')
# end

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'

#??????????????????????????????????????????????????????????????????????????????


# ALPHABET = ('a'..'z').to_a
# EMPTY_SPACE = ' '

# def cleanup(text)
#   new_word = []

#     text.chars.each do |letter| 
#       if ALPHABET.include?(letter)
#         new_word << letter
#       else
#         new_word << ' ' unless new_word.last == ' '
#       end
  
#   end
#   new_word.join
# end

# p cleanup("---what's my +*& line?") # == ' what s my line '

#??????????????????????????????????????????????????????????????????????????????

# my solution:
# ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

# def word_strip(text)
#   new_word = []

#   text.chars.each do |letter|
#   new_word << letter if ALPHABET.include?(letter)
#   end

#   new_word.join 
# end



# def word_sizes(string)
#   word_count = Hash.new(0) #??? WHY DOESNT word_count = {} work????
 
#    string.split.each do |word|
#     clean_word = word.delete('^A-Za-z') # given solution
#     word_count[clean_word.size] += 1
#   end

#   word_count
# end


# p word_sizes('Four score and seven.')  # ==  { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!')  # == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?")  # == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('')  # == {}

#-----------------------------------------------------------------------------

# NUMBERS_TO_WORDS = {
#                        0 => 'zero', 1 => 'one', 2 => 'two', 
#                        3 => 'three', 4 => 'four', 5 => 'five', 
#                        6 => 'six', 7 => 'seven', 8 => 'eight', 
#                        9 => 'nine', 10 => 'ten', 11 => 'eleven', 
#                        12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 
#                        15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 
#                        18 => 'eighteen', 19 => 'nineteen'
#                       }

# NUMBER_TO_WORD = %w(zero one two three four five
#                     six seven eight nine ten eleven
#                     twelve thirteen fourteen fifteen 
#                     sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(arr)
#   word_array = arr.map do |number|
#                 (number = NUMBERS_TO_WORDS[number])
#               end
#   word_array.sort!
#   word_array.map { |word| NUMBERS_TO_WORDS.key(word) }
# end

# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

#-----------------------------------------------------------------------------

# def crunch(str)
#   index = 0
#   crunch_word = ''
  
#   while index <= str.length - 1
#     crunch_word << str[index] if str[index] != str[index + 1]
#     index += 1
#   end
#    crunch_word
# end


# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

#-----------------------------------------------------------------------------

# def top_bottom_dashes(str)
#   dashes = str.chars.map { |letter| letter = '-'  }.join
#   "+-#{dashes}-+"
# end

# def top_bottom_spaces(str)
#   dashes_length = str.chars.map { |letter| letter = ' '  }.join
#   "| #{dashes_length} |"
# end

# def string_in_box(str)
#   "| #{str} |"
# end

# def print_in_box(str)
#   dashes = "+-#{'-'* str.size}-+"
#   empty_line = "| #{' '*str.size} |"

#   puts "#{dashes}"
#   puts "#{empty_line}"
#   puts "| #{str} |"
#   puts "#{empty_line}"
#   puts "#{dashes}"
# end

#   # p string_in_box('To boldly go where no one has gone before.')
#   # p top_bottom_dashes('To boldly go where no one has gone before.')
#   # p top_bottom_spaces('To boldly go where no one has gone before.')
#   print_in_box('To boldly go where no one has gone before.')
#   print_in_box('')
#   print_in_box('blah blah blah')
# # +--------------------------------------------+
# # |                                            |
# # | To boldly go where no one has gone before. |
# # |                                            |
# # +--------------------------------------------+

#-----------------------------------------------------------------------------
# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE


# def dms(degrees_float)
#    total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#    degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#    minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#    format(%(#{degrees}#{DEGREE}%02d'%02d"),minutes, seconds)
# end

 # degree(76.73)
# p dms(93.034773)
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

#-----------------------------------------------------------------------------

# def remove_vowels(arr)
#    arr.map { |string| string.delete('aeiouAEIOU') } 
# end

#  p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
#  p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
#  p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#-----------------------------------------------------------------------------


# def find_fibonacci_index_by_length(num)
#   num1 = 1
#   num2 = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = num1 + num2
#     break if fibonacci.to_s.size >= num

#     num1 = num2
#     num2 = fibonacci
#   end

#   index
# end



# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

#-----------------------------------------------------------------------------

# def reverse!(arr)
#     left_index = 0
#     right_index = -1

#     while left_index < arr.size / 2
#       arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
#       left_index += 1
#       right_index -= 1
#   end
#   arr
# end

# list = [1,2,3,4]
# result = reverse!(list)
# p result == [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

#  list = %w(a b e d c)
#  p reverse!(list) == ["c", "d", "e", "b", "a"] # true
# p list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# p reverse!(list) == ["abc"] # true
# p list == ["abc"] # true

# list = []
# p reverse!(list) == [] # true
# p list == [] # true

#-----------------------------------------------------------------------------
# option 1:
# def reverse(arr)
#   new_arr = []
#   index = -1
  
#     loop do
#       break if new_arr.size >= arr.size
#       new_arr << arr[index]
#       index -= 1
#     end
#    new_arr
# end

# Option 2: (given solution)

# def reverse(arr)
#   new_arr = []
#   arr.reverse_each { |num| new_arr << num }
#   new_arr
# end


# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

#  list = [1, 3, 2]                      # => [1, 3, 2]
#  new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true

#-----------------------------------------------------------------------------
# def merge(arr1, arr2)
#   arr1 | arr2
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#-----------------------------------------------------------------------------

# def halvsies(arr)
#    middle = (arr.size.to_f / 2).round
#    arr1 = arr.slice!(0, middle)
#    arr2 = arr
#    [arr1, arr]
# end


# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

#-----------------------------------------------------------------------------

# Option 1: my option
# def find_dup(arr)
#   p new_arr = arr.select { |num| return num if arr.count(num) > 1 }
# end

# Option 2:
# def find_dup(arr)
#   arr.find { |num| num if arr.count(num) > 1 }
# end


# p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

#-----------------------------------------------------------------------------

# Option 1: given
# def include?(arr, value)
#   p !!arr.find_index(value)
# end

# Option 2: my solution was going along these lines 
# def include?(arr, value)
#   arr.each { |n| return true if value == n }
#     false
# end

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

#-----------------------------------------------------------------------------

# def triangle(num)
#   empty_spaces = num - 1
#   num_of_stars = 1

#   num.times do
#     puts (' ' * empty_spaces) +  ('*' * num_of_stars)
#     empty_spaces -= 1
#     num_of_stars += 1
#   end
# end

# def upside_down_triangle(num)
#   empty_spaces = 0
#   num_of_stars = num

#   num.times do
#     puts (' ' * empty_spaces) +  ('*' * num_of_stars)
#     empty_spaces += 1
#     num_of_stars -= 1
#   end
# end

# # triangle(5)
# # triangle(9)

# upside_down_triangle(5)
# upside_down_triangle(9)


#-----------------------------------------------------------------------------

# Option 1: my solution
# def interleave(arr1, arr2)
#   p arr1.zip(arr2).flatten
# end

# Option 2: given solution
# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end


# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#-----------------------------------------------------------------------------

# UPPERCASE_CHARS = ('A'..'Z').to_a
# LOWERCASE_CHARS = ('a'..'z').to_a


# def letter_case_count(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }
 
#   string.chars.each do |char|
#       if LOWERCASE_CHARS.include?(char)
#         counts[:lowercase] += 1
#       elsif UPPERCASE_CHARS.include?(char)
#         counts[:uppercase] += 1
#       else 
#         counts[:neither] += 1
#       end
#     end

#   p counts
# end

# letter_case_count('abCdef 123') # == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

#-----------------------------------------------------------------------------

#Option 1: My solution
# def word_cap(string)
#   p string.split.map { |word| word.capitalize }.join(' ')
# end

# Option 2: use the capuitalize method abbreviation
# def word_cap(string)
#   string.split.map(&:capitalize).join(' ')
# end

# Further exploration: come up with two methods without using capitalize
# Method 1: gsub method
# def word_cap(string)
#   p string.split.map { |word| word.downcase.gsub(word[0], word[0].upcase) }.join(' ')
# end

#Method 2: New_Array 
# def word_cap(string)
#   words_arr = []

#    string.downcase.split.each do |word|
#     word[0] = word[0].upcase
#     words_arr << word
#   end
#   p words_arr.join(' ')
# end

#  p word_cap('four score and seven')  == 'Four Score And Seven'
 # p word_cap('the javaScript language') == 'The Javascript Language'
 # p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#-----------------------------------------------------------------------------

# def swapcase(string)
#   new_string = string.chars.each do |char|
#                 if char == char.downcase # or char =~ /['a-z']
#                   char.upcase!
#                 elsif char == char.upcase # or char =~ /['A-Z']
#                   char.downcase!
#                 else
#                   char
#                 end
#               end
#    new_string.join
# end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#-----------------------------------------------------------------------------
# def staggered_case(string)
#   new_string = ''
#   string.split('').each_with_index do |char, index|
#     new_string += case index.even?
#                   when true then char.upcase
#                   else char.downcase
#                   end
#                 end
#   p new_string
# end

# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
#  staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#-----------------------------------------------------------------------------
# def show_multiplicative_average(arr)
#   result = ((arr.reduce(:*)) / arr.size.to_f)
#   puts "The result is #{format('%.3f',result)}"
# end

# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

#-----------------------------------------------------------------------------
# My solution:
# def multiply_list(arr1, arr2)
#   index = 0
#   products = []
#   arr1.each do |num| 
#     products << num = arr1[index] * arr2[index]
#     index += 1
#   end
#   p products 
# end

# Given solution: similar but uses each_with_index instead of each
# def multiply_list(list_1, list_2)
#   products = []
#   list_1.each_with_index do |item, index|
#     products << item * list_2[index]
#   end
#   products
# end

# Further exploration: use Array#zip

# def multiply_list(arr1, arr2)
#   p (arr1.zip(arr2)).map { |arr| arr.reduce(:*) }
# end

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#-----------------------------------------------------------------------------
# def penultimate(string)
#   string.split[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

#-----------------------------------------------------------------------------
# def sum_of_sums(arr)
#   index = 0
#   sum_arr = []

#     arr.each do |num|
#       sum_arr << arr[0..(index)] + num
#       index += 1
#     end
#   sum_arr.sum
# end



# p sum_of_sums([3, 5, 2])  == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

#-----------------------------------------------------------------------------

# puts "Enter a noun:"
# noun = gets.chomp

# puts "Enter a verb:"
# verb = gets.chomp

# puts "Enter an adjective:"
# adjective = gets.chomp

# puts "Enter an adverb:"
# adverb = gets.chomp

# sentence_1 = "Why are you #{verb+'ing'} your #{adjective} #{noun} so #{adverb}? That's hilarious!"
# sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
# sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

# puts [sentence_1, sentence_2, sentence_3].sample

#-----------------------------------------------------------------------------
# def leading_substrings(string)
#   index = 0
#   str_arr = []

#   string.chars.each do |char|
#      str_arr << char = string[0..index]
#      index += 1
#   end
#   str_arr
# end

# or option 2: using each_with_index

# def leading_substrings(string)
#   str_arr = []

#   string.chars.each_with_index do |char, i|
#      str_arr << char = string[0..i]
#   end
#   str_arr
# end

# p leading_substrings('abc') == ['a', 'ab', 'abc']
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#-----------------------------------------------------------------------------
# def leading_substrings(string)
#   str_arr = []

#   string.chars.each_with_index do |char, i|
#      str_arr << char = string[0..i]
#   end
#   str_arr
# end

# def substrings(string)
#  new_arr = [] 
#  index = 0
  
#   loop do
#     results = leading_substrings(string)
#     new_arr << results[index..results.size]
#     string = string.delete(string[0])
#     break if index == string.size
#     end
#   new_arr.flatten
# end

# Better option using each_with_index
# def substrings(string)
#   new_arr = []
#   p string.chars
#   string.chars.each_with_index do |char, index|
#     new_arr << leading_substrings(string[index..-1])
#   end
#   p new_arr.flatten
# end

# p  substrings('abcde')  == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]
#----------------------------------------------------------------------------
# def leading_substrings(string)
#   str_arr = []

#   string.chars.each_with_index do |char, i|
#      str_arr << char = string[0..i]
#   end
#   str_arr
# end

# def substrings(string)
#   new_arr = []
#   string.chars
#   string.chars.each_with_index do |char, index|
#     new_arr << leading_substrings(string[index..-1])
#   end
#   new_arr.flatten
# end

# def palindrome?(string)
#   string == string.reverse && string.size > 1
# end

# def palindromes(string)
#   new_arr = []
#   results = substrings(string)
#   results.each do |word|
#     new_arr << word if palindrome?(word) # equals true
#   end
#   new_arr
# end

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

#----------------------------------------------------------------------------

# Option 1: given
# def fizzbuzz(num1, num2)
#   results = []
#   range = (num1..num2)
#   range.map do |n| 
#     results << fizzbuzz_value(n)
#   end
#   p results.join(', ')
# end

# def fizzbuzz_value(num)
#   case 
#   when num % 3 == 0 
#     "Fizz"
#   when num % 5 == 0
#     "Buzz"
#   when num % 3 == 0 && num % 5 == 0
#     "FizzBuzz"
#   else  
#     num
#   end
# end

# # Option 2:
# def fizzbuzz(num1, num2)
#   range = (num1..num2)
#   results = range.map do |n|
#               if n % 3 == 0
#                 'Fizz'
#               elsif n % 5 == 0
#                 'Buzz'
#               elsif n % 3 == 0 && n % 5 == 0
#                 'FizzBuzz'
#               else
#                 n
#               end
#             end
#     p results.join(', ')
#   end
                  

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

#----------------------------------------------------------------------------

# def repeater (string)
#   string.chars.map { |letter| letter * 2}.join
# end


# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

#----------------------------------------------------------------------------
# CONSONANTS = %w(a b c d f g h j k l m n p q r s t v w x y z)

# def double_consonants(string)
#   results = string.chars.map do |char| 
#     if CONSONANTS.include?(char.downcase) 
#       char * 2 
#     else 
#       char
#     end
#   end
#   results.join
# end


# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""
#----------------------------------------------------------------------------
# def reversed_number(num)
#   num.to_s.reverse.to_i
# end

# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

#----------------------------------------------------------------------------

# def center_of(string)
#   center_index = string.size / 2 
#   if string.size.odd?
#     string[center_index]
#   else 
#     string[center_index - 1, 2]
#   end

# end

# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'

#----------------------------------------------------------------------------
# def greetings (name_arr, job)
#   name = name_arr.join(' ')
#   "Hello, #{name}! Nice to have a #{job[:title]} #{job[:occupation]} around."
# end



# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
#----------------------------------------------------------------------------
# def doubled_number?(num)
#   number_str = num.to_s.chars
#   center_index = (number_str.size / 2)
#   left_side = number_str[0..center_index - 1]
#   right_side = number_str[center_index..-1]

#   left_side == right_side ? true : false
# end

# def twice(num)
#   if num.to_s.size >= 2 && doubled_number?(num)
#     num
#   else
#     num * 2
#   end
# end


# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

#----------------------------------------------------------------------------

# MY SOLUTION:
# def negative(num)
#   if num == 0 || num < 0
#     num
#   else
#     -(num)
#   end
# end

# GIVEN SOLUTION:

# def negative(num)
#   num > 0 ? -num : num
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby
#----------------------------------------------------------------------------

# def sequence(num)
#   p arr = (1..num).to_a
# end

# Further Exploration:
# def sequence(num)
#   num > 0 ? arr = (1..num).to_a : (num..1).to_a.reverse

# end


# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# p sequence(-5)  
# p sequence(-3) 
# p sequence(-1) 
#----------------------------------------------------------------------------

# def uppercase?(string)
#   string == string.upcase
# end


# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

#----------------------------------------------------------------------------
# MY SOLUTION:
# def word_lengths(string)
#   string_arr = string.split
#   lengths_arr = string_arr.map { |word| word.length.to_s }
#   merged_arr = string_arr.zip(lengths_arr)
#   merged_arr.map { |e| e.join(' ') }
# end

# GIVEN SOLUTION: similar but removes two steps
# def word_lengths(string)
#   words = string.split
#   words.map { |word| word + ' ' + word.length.to_s  }
# end


# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []

#----------------------------------------------------------------------------
# split the string
  # Array#split
# reverse the string index
    #Array#reverse
# join witih a comma seperating

# My Solution:

# def swap_name(string)
#   name_split = string.split
#   new_arr = []

#   new_arr << name_split[1]
#   new_arr << name_split[0]
#   p new_arr.join(', ')
# end

# def swap_name(string)
#   p string.split.reverse.join(', ')
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'


#----------------------------------------------------------------------------
#
# first number is the size of the array to return
# second number is the multiplier

# until array.size == num1
# multiply num2 by index + 1 
  # loop do
  # create index
# return the result

# def sequence(num1, num2)
#   index_range = (0..num1 - 1)
#   results = []
#  for i in index_range
#     results << (i + 1)* num2
#  end
#   p results
# end


# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []
#----------------------------------------------------------------------------

# ** create a constant hash with the key = letter grade and value == given range
# **create and array of the 3 given values
# **sum the given values array
# **divide the array by the number of values (3 in this case) 
# **set result to variable
# iterate through hash return key if value includes average
  # hash.each { |k,v| key i`f v.include?(ave)}

# GRADES = {
#           'A': (90..100).to_a,
#           'B': (80..90).to_a,
#           'C': (70..80).to_a,
#           'D': (60..70).to_a,
#           'F': (0..60).to_a
# }

# def get_grade(num1, num2, num3)
#   average = (num1 + num2 + num3)/ 3
#   final_grade = ''

#   GRADES.each do |grade, range| 
#     final_grade << grade.to_s if range.include?(average)
#     end

#   final_grade
# end

# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

#----------------------------------------------------------------------------
# Problem: Write a method which takes a grocery list (array) of fruits with 
#          quantities and converts it into an array of the correct number of 
#          each fruit.


# iterate through the array and multiply the number and the fruit
# add the result to an empty array

# def buy_fruit(arr)
#   fruit_list = []

#    arr.each do |nested_arr| 
#       nested_arr[1].times { fruit_list << nested_arr[0] }
#     end
#   fruit_list
# end

# or 

# def buy_fruit(arr)
#   fruit_list = []

#    arr.each do |item| 
#      fruit, quantity = item[0], item[1]
#      quantity.times { fruit_list << fruit }
#     end

#   fruit_list
# end

# given solution 2

# def buy_fruit(list)
#   p list.map { |fruit, quantity| [fruit] * quantity }#.flatten
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

#----------------------------------------------------------------------------

# we are going to store the data into an hash
# initiate an empty hash
# iterate over the words array
# sort each word by alphabetical order
# if the key already exists, we will append the words into the value (array)
# otherwise, create a new key with this sorted word
# then call the values of the hash

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# results = {}

#   words.each do |word| 
#     key = word.chars.sort.join  
#       if results.has_key?(key)
#         results[key].push(word)
#       else
#         results[key] = [word]
#       end
#   end

# results.each_value do |v|
#   p v
# end

#----------------------------------------------------------------------------

#----------------------------------------------------------------------------


#----------------------------------------------------------------------------




#----------------------------------------------------------------------------



#----------------------------------------------------------------------------



#----------------------------------------------------------------------------



#----------------------------------------------------------------------------

#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#----------------------------------------------------------------------------


#----------------------------------------------------------------------------
#----------------------------------------------------------------------------
#----------------------------------------------------------------------------




#----------------------------------------------------------------------------