# 1. Repeat yourself

# print the string to a new line integer times

# def repeat(str,num)
#    num.times{ puts str }
# end

# repeat('Hello', 3)

#----------------------------------------------------------------------------
# 2. Odd
# get the absolute value from the given integer
# return true if absolute value is odd

# def is_odd?(num)
#   num % 2 != 0
# end


# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

#----------------------------------------------------------------------------
# 3. List of Digits
# covert number to string
# split string into array using chars
# iterate over the arry and covert back to integers


# def digit_list(num)
#   num.to_s.chars.map { |str| str.to_i } # or map(&:to_i)
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true
#----------------------------------------------------------------------------
# 4. How Many?
# create an empty hash
# the keys for the hash will be the name of the vehicle
# the value will be the number of times the key appears in array
  # us Array#count to get the count

#   vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# def count_occurrences(type)

#   vehicle_hash = Hash.new(0)

#   type.each do |vehicle|
#      count = type.count(vehicle)
#      keys =  vehicle
#      vehicle_hash[keys] = count
#   end

#   vehicle_hash.each do |k,v|
#     puts "#{k} => #{v}"
#   end
# end

# count_occurrences(vehicles)

#----------------------------------------------------------------------------
# 5. Reverse It (Part 1)

# split the string
# create a new empty array 
# remove and return the last word of the split string 
# add the word to the empty array
#join teh array 

# def reverse_sentence(string)
#   new_arr = []
#   arr = string.split

#   until arr.empty?
#     new_arr << arr.pop
#   end
#   p new_arr.join(' ')
# end

# or

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end


# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

#----------------------------------------------------------------------------
# 6. Reverse It (Part 2)

# split the words up into an array
# iterate over the array
# if the word.size is greater than 5, reverse the word
# else return the word
# join the array

# def reverse_words(string)
#   string.split.each { |word| word.size > 5 ? word.reverse! : word }.join(' ')
# end


# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS
#----------------------------------------------------------------------------
# 7. Stringy Strings
# 
# creat an array from 1 to num
# iterate over the array
# if the index is odd, the value is 1
# else the value is 0
# do this for every index until index.size = num given


# def stringy(num)
#   new_arr = []
#   range = (1..num).to_a

#   range.each { |num| num.odd? ? new_arr << 1 : new_arr << 0 }

#   new_arr.join
# end
 

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
#----------------------------------------------------------------------------
# 8. Array Average

# sum the array 
# divide the sum by the array size (integers in the array)

# def average(arr)
#   (arr.sum) / arr.size
# end


# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
#----------------------------------------------------------------------------
# 9. Sum of Digits
# covert the numbers to string
# split the string into characters
#iterate over the string array to covert to integers
# sum the integers array

# def sum(num)
#   num.to_s.chars.map { |e| e.to_i  }.sum 
    ### or num.to_s.chars.map(&:to_i).reduce(:+)###
# end


# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
#----------------------------------------------------------------------------
# What's my Bonus?
# if bolean value == true : bonus = salary / 2
# else bonus = 0

# def calculate_bonus(salary, boolean)
#   boolean ? (salary / 2) : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
#----------------------------------------------------------------------------
# Easy 2 - 
# 1. How old is Teddy?

# generate a range between 20 and 200
# randomly generate a number between the range
# assign that number to age
# put the statement "Teddy is '#{age}' years old!"

# p age = rand(20..200)
# puts "Teddy is #{age} years old!"

# Teddy is 69 years old!
#----------------------------------------------------------------------------
# 2. How big is the room?
# Set a constatn variable for sqm to sqft
# ask the user for the length in meters
# get user response and set the vairable to length and convert to_i
# ask the user for the width
# get user response and set variable to width and convert to_i
# multiply length by width to get the sqm size
# multiply the sqm by the constant conversion variiable to get sqft
# puts "The are of the room is __ sqm (___sqft)."

# SQM_TO_SQFT = 10.7639 # smq per square feet

# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_i
# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_i
# sqm_room_area = length * width
# sqft_room_area = (sqm_room_area * SQM_TO_SQFT).round(2)

# puts "The area of the room is #{sqm_room_area} square meters (#{sqft_room_area} square feet)."

#----------------------------------------------------------------------------
# 3. Tip Calculator
# Ask the user for the bill amount
# set answer to bill amount variable
# Ask the user for the tip percentage
# set the answer to tip percent variable covert to float
# multiply the bill by the tip percentage to get the tip amount
# add the tip amount to the bill amount to get total bill
# outPUTS the tip and total bill amount

# puts "What is the bill?"
# bill = gets.chomp.to_i.round(2)
# puts "What is the tip percentage?"
# p tip_percent = (gets.chomp.to_f) / 100
# p tip = bill * (tip_percent)
# total = bill + tip

# puts "The tip is $#{tip}"
# puts "The total is $#{total}"
#----------------------------------------------------------------------------
# 4. When will I Retire?
# set a variable for current time
# set a variable for current year
# ask for user age
# get user respone and set to eqaul age
# ask the user for retirement age
# get user response and set answer equal to retirement age
# calculate years left of work by subtracting age from retirement age
# calculate retirement year by adding years left to current year
# output given statement

# time = Time.now
# year = time.year

# puts "What is your age?"
# age = gets.chomp.to_i

# puts "At what age would you like to retire?"
# retire_age = gets.chomp.to_i

# years_left = retire_age - age
# retirement_year = years_left + year




# puts "It's #{year}. You will retire in #{retirement_year}."
# puts "You have only #{years_left} years of work to go!"

#----------------------------------------------------------------------------
# 5. Greeting a user
# Ask the user for their name.
# set answer to name variable
# if name ends with '!', remove the last character '!' and output response in upcase
# else puts "Hello name."

# puts "What is your name?"
# name = gets.chomp

# if name.include?('!')
#   puts "HELLO #{name.chop}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end
#----------------------------------------------------------------------------
# 6. Odd Numbers
# create a range of numbers from 1 to 99 including 99 to an array
# use each method to out put numbers if number is odd

# (1..99).to_a.each { |num| puts num if num.odd? }
#----------------------------------------------------------------------------
# 7. Even Numbers
# create range of numbers from 1 to 99 including 99 to an array
# use each or select to select and puts even numbers on seperate line

# (1..99).to_a.each { |num| puts num if num.even? }

# using for loop and modulo 

# for num in (1..99).to_a 
#   puts num if num % 2 == 0 
# end
#----------------------------------------------------------------------------
# 8. Sum or Product of Consecutive Integers
# ask the user to enter an integer greater than 0
# set answer to num variable
# create an array that inludes a range of numbers from 1 to num
# ask the user if they want to enter 's' to sum or 'p' for product of array
# set answer to equal user response 
# downcase answer to allow for case insensitive input
# if answer == 's , sum all numbers in the range and set to sum variable
# puts "The sum of the integers between 1 and #{num} is #{sum}"
# if answer == 'p' , multiply all numbers in array and set to product variable
# puts "The product of the integers between 1 and #{num} is #{product}."

# puts ">> Please enter an integer greater than 0:"
# num = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# answer = gets.chomp.downcase

# range = (1..num).to_a

# if answer == 's'
#   sum = range.reduce(&:+) 
#   # alternative: range.sum || sum = 0 ; range.each { |num| sum += num } 
#   puts "The sum of the integers between 1 and #{num} is #{sum}."
# elsif answer == 'p'
#   product = range.reduce(&:*)
#   # alternative: product = 1 range.each { |num| product *= num }
#   puts "The product of the integers between 1 and #{num} is #{product}."
# else
#   puts "oops.. something went wrong. Please try again!"
# end
#----------------------------------------------------------------------------
# Easy 3 
# 1. Searching 101
# create an empty array
# ask the user for a number
# push or append the number to the empty array
# repeat until the array.size == 5
# ask the user for the 6th number
# use the include method to see if the 6th number is included inthe array of 5
# output whether or not the 6th number appears in the array

# numbers_arr = []

# puts "==> Enter the 1st number:"
# numbers_arr << gets.chomp.to_i

# puts "==> Enter the 2nd number:"
# numbers_arr << gets.chomp.to_i

# puts "==> Enter the 3rd number:"
# numbers_arr << gets.chomp.to_i

# puts "==> Enter the 4th number:"
# numbers_arr << gets.chomp.to_i

# puts "==> Enter the 5th number:"
# numbers_arr << gets.chomp.to_i

# puts "==> Enter the last number:"
# last_num = gets.chomp.to_i

# if numbers_arr.include?(last_num)
#   puts "The number #{last_num} appears in #{numbers_arr}."
# else
#   puts "The number #{last_num} does not appear in #{numbers_arr}."
# end

#----------------------------------------------------------------------------
# 2. Arithmetic Integer
# ask the user for a positive integers
# convert to_i and store the input to num1 variable
# ask the user for a second positive integer
# convert to_i and store the input to num2 variable
# puts thre result of the operations: addition, subtraction, product, quotient, 
# remainder, and power

# puts "==> Enter the first number:"
#   num1 = gets.chomp.to_i
# puts "==> Enter the second number:"
#   num2 = gets.chomp.to_i

# puts "==> #{num1} + #{num2} = #{num1 + num2}"
# puts "==> #{num1} - #{num2} = #{num1 - num2}"
# puts "==> #{num1} * #{num2} = #{num1 * num2}"
# puts "==> #{num1} / #{num2} = #{num1 / num2}"
# puts "==> #{num1} % #{num2} = #{num1 % num2}"
# puts "==> #{num1} ** #{num2} = #{num1 ** num2}"

#----------------------------------------------------------------------------
# 3. Counting the Number of Characters
# ask the user for a word
# conver intput top array
# store user input into 'statement' variable
# convert string to array 
# iterate through array to remove the white spaces from the string
# count the number of remainig characters
# print statement "There are #{size} characters in '#{statement}'."

# MY SOLUTION:
# def size(string)
#   statement = string.chars.map do |letter| 
#            letter unless letter == ' '
#            end
#   statement.compact!.size
# end

# puts "Please write word or multiple words:"
#  statement = gets.chomp


# puts "There are #{size(statement)} characters in '#{statement}'."

#  or

# puts "Please write word or multiple words:"
#  statement = gets.chomp
#  size = statement.delete(' ').size

# puts "There are #{size} characters in '#{statement}'."
#----------------------------------------------------------------------------
# 4. Multiplying Two Numbers
# create a method called multiply which take 2 numbers as arguments
# multiply num1 by num2
# return the product

# def multiply(num1, num2)
#   num1 * num2
# end

# p multiply(5, 3) == 15
#----------------------------------------------------------------------------
# 5. Squaring an Argument
# use teh method multiply from the previous problem
# create a method that takes one integer as the argument
# pass that number in as the first and second number of the multiply method
# return the result 

# def multiply(num1, num2)
#   num1 * num2
# end

# def square(num)
#   multiply(num, num)
# end

# p square(5) == 25
# p square(-8) == 64
#------------------------------------------------------------------------------
# 6. Exlusive Or
# if else statement that elavaluates true if only one of tge arguments is true

# def xor?(bol1, bol2)
#   if bol1 == true && bol2 == true
#     false
#   elsif bol1 == false && bol2 == false
#     false
#   else (bol1 == true && bol2 == false) || (bol1 == false && bol2 == true)
#     true
#   end
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false
#----------------------------------------------------------------------------
# 6. Odd Lists
# take an array as an argument
# select the element if index 0 or index.even?

# def oddities(arr)
#   arr.select.with_index { |el, index| el if index == 0 || index.even? }
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []
#----------------------------------------------------------------------------
# 7. Palindrome Strings (Part 1)
# does the string forward equal the string backwards

# def palindrome?(string)
#   string == string.reverse
# end

# def palindrome?(arr)
#   arr == arr.reverse
# end

# p palindrome?([0, 1, 2, 2, 1, 0]) == true
# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true
#----------------------------------------------------------------------------
# 8. Palindromic Strings (Part 2)
# downcase the string and delete any non alphanumeric characters
# run the result through the previous palendrome method

# def palindrome?(string)
#   string == string.reverse
# end

# def real_palindrome?(string)
#   p new_string = string.downcase.delete('^a-z0-9')
#   palindrome?(new_string)
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false
#----------------------------------------------------------------------------
# 9. Palindromic Numbers
# convert the numbers to string
# numbers == numbers.reverse

# def palindrome?(string)
#   string == string.reverse
# end

# def palindromic_number?(num)
#   palindrome?(num.to_s)
# end

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true
#----------------------------------------------------------------------------
# Easy 4
# 1. Short Long Short
# create an empty array
# get the size of each element in the array
# add small string size to new array, then larger, then smaller again
# join array 


# My Solution:
# def short_long_short (str1, str2)
#   new_arr = []
#   if   str1.size > str2.size
#     new_arr << str2 
#     new_arr << str1 
#     new_arr << str2
#   else
#     new_arr << str1 
#     new_arr << str2 
#     new_arr << str1
#   end
#   new_arr.join
# end
    
# Given Solution:

# def short_long_short (str1, str2)
#   if   str1.size > str2.size
#     str2 + str1 + str2
#   else
#     str1 + str2 + str1
#   end
# end

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"
#----------------------------------------------------------------------------
# 2. What Century is That?
# take the number and divide it by 100 then add 1 to get the century
# then use the modulo operator and if remainder is 0, -1 from century
# convert the century to string
# use a case statement to determine the appropriate ending for the number
# 

# def century(year)
#   century = (year / 100) + 1
#   if year % 100 == 0
#     century -= 1
#   end
#   century.to_s + suffix(century)
# end

# def suffix(century)
#   return 'th' if [11,12,13].include?(century % 100)
#   last_num = century % 10
  
#   case last_num
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'
#----------------------------------------------------------------------------
# 3. Leap Years (Part 1)
# if else statement 
# condition 1: leap year = year divisible by 4 unless its also divisible by 100
# condition 2: not a leap year if divisible by 100 unless also divisible by 400
# use a boolean to return true or false based conditions

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else year % 4 == 0
#   end
# end

# def leap_year?(year)
#   year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true
#----------------------------------------------------------------------------
# 4. Leap Years (Part 2)
# update the previos method
# if year less than 1752, and divisible by 4, then it's a leap year
# else, use the same method

# def leap_year?(year)
#   if year < 1752
#     year % 4 == 0 
#   else 
#     year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true
#----------------------------------------------------------------------------
# 4. Multiples of 3 and 5
# create a range between 1 and the number passed as the argument
# covert the range to an array
# iterate over the array and select the numbers that are divisible by 3 or 5
# sum the results of the iteration

# def multisum(num)
#   range = (1..num).to_a
#   range.select { |num| num if num % 3 == 0 || num % 5 == 0 }.reduce(&:+) #sum
# end


# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168
#----------------------------------------------------------------------------
# 5. Running Totals
# create a sum variable and set it equal 0
# iterate over the given array and 
# set the sum to equal sum plus the number in the array

# def running_total(arr)
#   sum = 0
#   arr.map { |n| sum += n }
# end

 # p running_total([2, 5, 13]) == [2, 7, 20]
 # p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
 # p running_total([3]) == [3]
 # p running_total([]) == []
#----------------------------------------------------------------------------
# 6. Convert a String to a Number!
# create a constant hash that has the string number as key and integer as value
# split the number string into an array
# iterate over the array and call the value of the string number 

# NUMBERS = {
#   '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
#   '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0
# } 

# def string_to_integer(string)
#   digits = string.chars.map { |num| NUMBERS[num] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570
#----------------------------------------------------------------------------
# 7. Convert a String to a Signed Number!
# use the previous method
# seperate the sign and return it at the end

# NUMBERS = {
#   '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
#   '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0
# } 


# def string_to_integer(string)
#   digits = string.chars.map { |num| NUMBERS[num] }

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

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100
#----------------------------------------------------------------------------
# 8. Convert a Number to a String!
# split the numbers into characters
# add the numbers to an array 
# join the array conveting the integers into a string

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

#----------------------------------------------------------------------------
# 9. Convert a Signed Number to a String!

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end

# def signed_integer_to_string(num)
#   case num[0]
#   when '-' then -integer_to_string(num[1..-1])
#   when '+' then integer_to_string(num[1..-1])
#   else          integer_to_string(num)
#   end
# end

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'
#----------------------------------------------------------------------------
# Easy 5 
# 1. ASCII String Value

# seperate the string into characters
# create a sum variable and set it to equal 0
# iterate over the array of characters
# use String#ord to return the number value for each character
# sum the total of the value (either sum, inject or reduce)

# My Solution:
# def ascii_value(string)
#   string.chars.map { |letter| letter.ord }.sum
# end

# Given solution
# def ascii_value(string)
#   sum = 0
#   string.each_char { |letter| sum += letter.ord }
#   sum
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

#----------------------------------------------------------------------------
# 2. After Midnight (Part 1)
# create constants hours per minutes, minutes per hour and minutes per day
# convert negtive minutes to positive minutes by adding 1440 until positive
# use divmod to divide the remaining minutes by hours per day to get minutes & hours
# format hours and minutes 

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = 1440

# def normalize_mins_to_0_through_1439(mins)
#   while mins < 0
#     mins += MINUTES_PER_DAY
#   end

#   mins % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_mins_to_0_through_1439(delta_minutes) #turns the -number into a +number
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR) # gets the hours and minutes
#   format('%02d:%02d', hours, minutes)
# end



# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"
#----------------------------------------------------------------------------
# 3. After Midnight (Part 2)
# after midnight: seperate the string into hours and minutes
# multiply hours by 60 minutes to get total minutes for hours
# add the remaining minutes to the total minutes
# before midnight: same as after midnight method, except:
# subtract the minutes from 1440 (minutes per day)

# my Solution:
# MINUTES_PER_DAY = 1440

# def after_midnight(string)
#   time_split = string.split(':')
#   hours_to_total_minutes = (time_split[0].to_i * 60) + time_split[1].to_i
#   if hours_to_total_minutes % MINUTES_PER_DAY == 0
#     0
#   else
#     hours_to_total_minutes
#   end
# end

# def before_midnight(string)
#   minutes = after_midnight(string)
#   if minutes % MINUTES_PER_DAY == 0
#     0
#   else
#     MINUTES_PER_DAY - minutes
#   end
# end

# Given solution:
# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end

# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0
#----------------------------------------------------------------------------
# 4. Letter Swap
# split string into an array of words
# iterate over the array of words 
# set the 0 index of each word to equal the -1 index and vise versa

# Given solution: Using substrings (what I intended to do in my pseudo code)
# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

# My Solution: creat an empty array. concat words in desired order
# def swap (string)
#   new_word_arr = []
#   str_arr = string.split(' ').map do |word| 
#     if word.size > 1 
#       new_word_arr << word = word[-1] + word[1..-2] + word[0]
#     else
#       new_word_arr << word
#     end
#   end
#   new_word_arr.join(' ')
# end



# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'
#----------------------------------------------------------------------------
# 5. Clean up the words
# split the string into letters
# iterate over letters
# replace none alphabet characters with spaces unless next charecter is a space
# join the array with spaces

# APLHABET = ('a'..'z').to_a

# def cleanup(string)
#   clean_letters = []
#   string.chars.map do |letter| 
#     if APLHABET.include?(letter)
#       clean_letters << letter
#     else
#       clean_letters << letter = ' ' unless clean_letters.last == ' '
#     end
#   end
#   clean_letters.join
# end

# p cleanup("---what's my +*& line?") == ' what s my line '
#----------------------------------------------------------------------------
# 6. Letter Counter (Part 1)
# seperate the string into words
# create an empty hash
# iterate over the array of words
# create a count array that counts the word r=frequency
# set key to equal the word size
# set value to equal word count

# My Solution:
# def word_sizes(string)
#   word_hash = Hash.new(0)
#   word_size = string.split.map { |word| word.size }
#   word_size.each { |num| word_hash[num] = word_size.count(num)}
#   word_hash
# end

# Given:
# def word_sizes(string)
#   word_hash = Hash.new(0)
#   string.split.each { |word| word_hash[word.size] += 1 }
#   p word_hash
# end


# p word_sizes('Four score and seven.')  == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

#----------------------------------------------------------------------------
# 7. Letter Counter (Part 2)
# iterate over the string to remove any non alphabetical charicters

# def word_sizes(string)
#   word_hash = Hash.new(0)
#   string.split.each do |word|
#     clean_word = word.delete('^A-Za-z')
#     word_hash[clean_word.size] += 1 
#   end
#   word_hash
# end


# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}
#----------------------------------------------------------------------------
# 8. Alphabetical Numbers
# create a hash with the key == numbers and value == spelling
# iterate over the array and call the value of the number
# sort the new array
# convert back to integer using the hash 

# NUMBERS_TO_WORDS = %w(zero one two three four five six seven eight nine
#                       ten eleven twelve thirteen fourteen fifteen sixteen
#                       seventeen eighteen nineteen)


# def alphabetic_number_sort(arr)
#   p arr.sort_by { |num| NUMBERS_TO_WORDS[num] }
# end

# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
#----------------------------------------------------------------------------
# 9. ddaaiillyy ddoouubbllee
# split the string into characters
# create an new array to store the non duplicate letters
# interate over the characters array
# add letter to new array unless new_arr.last == the current letter
# join the new_arr

# def crunch(string)
#   new_arr = []
#   string.chars.each do |char|
#     new_arr << char unless new_arr.last == char
#   end
#   p new_arr.join('')
# end


# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''
#----------------------------------------------------------------------------
# 10. Bannerizer
# top and bottom line will be the same
# set top and bottom to equal '+-' + string.size * '-' + '-+'
# set the line above string and line below string to a blank_line_variable
# have blank line variable == '| ' + string.size + ' |'
# set the text line to equal '| ' + string.size + ' |'

# def print_in_box(string)
#   outter_line = "+-#{'-' * string.size} -+" # string interpolation
#   empty_line = "| #{'-' * string.size} |"

#   puts outter_line
#   puts empty_line
#   puts "| #{string} |"
#   puts empty_line
#   puts outter_line
# end

# p print_in_box('To boldly go where no one has gone before.')
# p print_in_box('')
#----------------------------------------------------------------------------
# Easy 6
# 1. Cute Angles
# take the number and convert it to a float
# convert float to string
# split the float at the decimal 
# the whole number = degrees
# multiply the remaining decimal * 60 
# split th result to get the the minutes
# multiply the remainning decimal to get seconds
# concat or interpolate together
# format result

# DEGREE = "\xC2\xB0"
# MY SOLUTION: brute force method
# def dms(num)
#   num_arr = num.to_f.to_s.split('.')
#   degrees = num_arr[0].to_i
#   str_minutes = "." + num_arr[1]
#   split_minutes = (str_minutes.to_f * 60).to_s.split('.')
#   minutes = split_minutes[0].to_i
#   str_seconds = '.' + split_minutes[1]
#   split_seconds = (str_seconds.to_f * 60).to_s.split('.')
#   seconds = split_seconds[0].to_i

#   p format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

#  GIVEN SOLUTION: uses divmod to get degrees, minutes, seconds
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(float)
#   total_seconds = (float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)

#   p format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)

# end

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
#----------------------------------------------------------------------------
# 2. Delete Vowels
# iterate through the array or strings
# delete ("aeiouAEIOU") in the string

# def remove_vowels(arr)
#   arr.map { |string| string.delete('aeiouAEIOU') }
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
#----------------------------------------------------------------------------
# 3. Fibonacci Number Location By Length
# set sum to = 0
# while the value.size < argument (or can do an each_with_index)
# next number in sequence is equal to the sum of the previous two numbers

# def find_fibonacci_index_by_length(num)
#   index = 2
#   first = 1
#   second = 1
#   arr = [1, 1]

#   loop do
#     index += 1
#     fib = first + second
#     arr << fib
    

#     first = second
#     second = arr.last
#     break if arr.last.to_s.size == num
#   end
#   index
# end

# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

#----------------------------------------------------------------------------
# 4. Reversed Arrays (Part 1)
# set the left index at 0
# set the right index at -1
# create a while loop (while left index is less than array size / 2)
# use parrallel vairable assignment to swap the first and last characters
# increase the left index by 1
# subtract the right index by 1
# return the array  

# def reverse!(arr)
#   left_index = 0
#   right_index = -1

#   while left_index < arr.size / 2
#     arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
#     left_index += 1
#     right_index -= 1
#   end
#   arr
# end


# p list = [1,2,3,4]
# p result = reverse!(list)
# p result == [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

# p list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"] # true
# p list == ["c", "d", "e", "b", "a"] # true

# p list = ['abc']
# p reverse!(list) == ["abc"] # true
# p list == ["abc"] # true

# p list = []
# p reverse!(list) == [] # true
# p list == [] # true
#----------------------------------------------------------------------------
# 5. Reversed Arrays (Part 2)
# create an empty array (new_arr)
# iterate over the array passed as the argument
# start at the last index and append the value to new_arr
# return the new_arr

# def reverse(arr)
#   new_arr = []
#   index = - 1
#   loop do
#     break if new_arr.size == arr.size
#     new_arr << arr[index]
#     index -= 1
#   end
#   new_arr
# end

# With #inject
# def reverse(arr)
#   arr.inject([]) { |new_arr, num | new_arr.unshift(num)}
# end

# with each_with_object

# def reverse(arr)
#   arr.each_with_object([]) { |num, new_arr| new_arr.unshift(num) }
# end

# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# p list = [1, 3, 2]                      # => [1, 3, 2]
# p new_list = reverse(list)              # => [2, 3, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 3, 2]                     # => true
# p new_list == [2, 3, 1]                 # => true
#----------------------------------------------------------------------------
# 6. Combining Arrays
# add both array (or use zip method to merge array)
# use the uniq method to eliminate any duplicate values

# using concatination and uniq
# def merge(arr1, arr2)
#   p (arr1 + arr2).uniq
# end

# using Array#|
# def merge(arr1, arr2)
#   p arr1 | arr2
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
#----------------------------------------------------------------------------
# 6. Halvsies
# Brute force approach
# create an empty nested array
# if array size.odd? append arr[0]..arr[((arr.size / 2) +1)] to first nested arr
# remaing numbers to seconds nested arr
# else appedn arr[0]..arr[(arr.size / 2)] to first nest arr
# remaing to second nested arr

# My Solution:
# def halvsies(arr)
#   new_arr = [[],[]]
#   arr.each_with_index do |num, index|
#     if arr.size.odd?
#       if index < ((arr.size / 2) + 1)
#         new_arr[0] << num
#       else
#         new_arr[1] << num
#       end
#     else
#       if index < arr.size / 2
#         new_arr[0] << num
#       else
#         new_arr[1] << num
#       end
#     end
#   end
#   p new_arr
# end

# Given:
# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]
#----------------------------------------------------------------------------
# 7. Find the Duplicate

# iterate over array and return num if num count is greater than 1

# MY SOLUTION:
# def find_dup(arr)
#   p arr.select { |num| return num if arr.count(num) > 1 }#[0] without using return 
# end

# GIVEN:
# def find_dup(array)
#   array.find { |element| array.count(element) == 2 }
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
#----------------------------------------------------------------------------
# 8. Does My List Include This?
# iterate over the array
# return true if value is == to num in array

# def include?(arr, num)
#   number = 0
#   arr.each { |n| number = n if n == num }
#   number == num ? true : false 
# end

# # OR:
# def include?(array, num)
#   array.each { |n| return true if num == n }
#   false
# end

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false
#----------------------------------------------------------------------------
# 9. Right Traingles
# create a spaces variable to equal n - 1
# creat an asteric variable and set it equal to 1
# n times puts ' ' * spaces + '*" * asteric 
# increment spaces -= 1 and asteric +=1

# def triangle(num)
#   spaces = num - 1
#   asteric = 1
#   num.times do |n|
#     puts (' ' * spaces ) + ('*' * asteric  )
#     spaces -= 1
#     asteric += 1
#   end
# end

# triangle(5)
# triangle(9)
#----------------------------------------------------------------------------
# EASY 7
# 1. Combine Two Lists
# use Array#zip method combine and interweave arrays
# flatten arrays

# My solution:
# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

# Given solution:
# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#----------------------------------------------------------------------------
# 2. Lettercase Counter
# create a hash containing 'lowercase', 'uppercase', and 'neither' == 0
# split the string into chars
# iterate over each character
# if character == key, increment key by 1

# LOWERCASE = ('a'..'z').to_a
# UPPERCASE = ('A'..'Z').to_a

# def letter_case_count(string)
#   case_hash = { lowercase: 0,
#               uppercase: 0,
#               neither: 0
#             }

#   string.chars.each do |char|
#       if LOWERCASE.include?(char)
#         case_hash[:lowercase] += 1
#       elsif UPPERCASE.include?(char)
#         case_hash[:uppercase] += 1
#       else 
#         case_hash[:neither] += 1
#       end
#     end 
#   case_hash
# end

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
#----------------------------------------------------------------------------
# 3. Capitalize words
# split string into words
# iterate over the string
# word + word.capitalize!

# def word_cap(string)
#   string.split.map { |word| word.capitalize}.join(' ')
# end

#  OR
# def word_cap(string)
#   string.split.map(&:capitalize).join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
#----------------------------------------------------------------------------
# 4. Swap Case
# split string into characters
# iterate over string 
# if / else statement = if lowecase, then .upcase etc
# join arr

# def swapcase(string)
#   new_arr = string.chars.map do |letter|
#     if letter == letter.downcase # or char =~ /[a-z]/
#       letter.upcase
#     elsif letter == letter.upcase # or char =~ /[A-Z]/
#       letter.downcase
#     else
#       letter
#     end
#   end
#   new_arr.join('')
# end


# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
#----------------------------------------------------------------------------
# 5. Staggered Caps (Part 1)
# convert string to array of chars
# iterate over array
# if index is 0 or even? capitalize, else downcase
# join array

# def staggered_case(string)
#   new_str = string.chars.map.with_index do |char, index|
#     if index == 0 || index.even?
#       char.upcase
#     elsif index.odd?
#       char.downcase
#     else
#       char
#     end
#   end
#   p new_str.join('')
# end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
#----------------------------------------------------------------------------
# 6. Staggered Caps (Part 2)
# modify previous code (given)
# ignore non alphabetic characters

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if char =~ [/a-z/]/i
#       if need_upper
#         result += char.upcase
#       else
#         result += char.downcase
#       end
#       need_upper = !need_upper
#     else
#       result += char
#   end
#   result
# end


# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
#----------------------------------------------------------------------------
# 7. Multiplicative Average
# multiply all elements of array using reduce(&:*).to_f
# divide product by arr.size.to_f
# round the result to 3 decmials

# def show_multiplicative_average(arr)
#   product = arr.reduce(&:*).to_f / arr.size
#   puts "The result is #{format('%.3f', product)}" ##### format ######
# end



# p show_multiplicative_average([3, 5])                # => The result is 7.500
# p show_multiplicative_average([6])                   # => The result is 6.000
# p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

#----------------------------------------------------------------------------
# 8. MUltiply lists
# iterate ove array 1 and and multiply it by the index of array 2

# my solution:
# def multiply_list(arr1, arr2)
#   arr1.map.with_index { |num, index| num * arr2[index] }
# end

# further exploration: use zip and make a one liner

# def multiply_list(arr1, arr2)
#   p arr1.zip(arr2).map { |subarr| subarr.reduce(&:*) }
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
#----------------------------------------------------------------------------
# 9. Multiply All Pairs
# interate over arr1
# multiply arr two by each number in arr1
# sort result

# def multiply_all_pairs(arr1, arr2)
#   p arr1.product(arr2).map { |arr| arr.reduce(&:*) }.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
#----------------------------------------------------------------------------
# 10. The End Is Near But Not Here
# split the string into words
# return array[-2] (second to last word)

# def penultimate(string)
#   string.split[-2]
# end

# further exploration: find the middle word of string. account for edge cases
# def penultimate(string)
#   middle = string.split.size / 2
#   if string.split.size == 0
#     ''
#   elsif (string.split.size).even?
#     string.split[middle - 1] + ' ' + string.split[middle]
#   else 
#     string.split[middle]
#   end
# end

# p penultimate('last word') #== 'last'
# p penultimate('Launch School is great!') #== 'is'
#----------------------------------------------------------------------------
#  EASY 8
# 1. Sum of Sums 
# set a variable 'sum' == 0
# iterate over argument array
# number == sum += num

# def sum_of_sums(arr)
#   sum = 0
#   arr.map { |num| sum += num }.inject(&:+)
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35
#----------------------------------------------------------------------------
# 2. Madlibs
#  prompt user to enter a noun
#  noun = gets.chomp
# prompt user to enter a verd
# verb = gets.chomp
# prompt user to enter and adjective
# adjective = gets.chomp
# prompt user to enter an adverb
# adverb = gets.chomp
# user string interpolation to combine into a sentence

# puts "Enter a noun:"
#   noun = gets.chomp
# puts "Enter a verb:"
#   verb = gets.chomp
# puts "Enter an adjective:"
#   adjective = gets.chomp
# puts "Enter an adverb:"
#   adverb = gets.chomp

# puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

#----------------------------------------------------------------------------
# 3. Leading Substrings
# split string into chars array
# create a new empty array
# create an empty string variable
# iterate over the chars 
# sum += letter and append them to new arr


  # def leading_substrings(string)
  #   substrings = []
  #   sum = ''

  #   string.chars.each do |letter|
  #     substrings << sum += letter 
  #   end

  #   substrings
  # end

# OR same as above but refactored to be more concise

# def leading_substrings(string)
#   sum = ''
#   string.chars.map { |letter| sum += letter }
# end

# p leading_substrings('abc') == ['a', 'ab', 'abc']
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#----------------------------------------------------------------------------
# 4. All Substrings
# same as previous problem
# user previous method to get string array sums
# 0...string.size is the index
# set new string to go from index to the end of string
# run the new string through previous method
# append results to new_arr
# return new_arr
# flatten

# def leading_substrings(string)
#   sum = ''
#   string.chars.map { |letter| sum += letter }
# end

# def substrings(string)
#   new_arr = []
#   (0...string.size).each do |start_index|
#     str = string[start_index..-1]
#     new_arr << leading_substrings(str)
#   end
#   new_arr.flatten
# end


# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]
#----------------------------------------------------------------------------
# 5. Palindromic Substrings
# run the string through substrings method to get all combos
# write palindrom method. string == string.reverse
# iterate through all combos to see which combos are palindromes
# append palindromes to new_arr if combo.size > 1

# def leading_substrings(string)
#   sum = ''
#   string.chars.map { |letter| sum += letter }
# end

# def substrings(string)
#   new_arr = []
#   (0...string.size).each do |start_index|
#     str = string[start_index..-1]
#     new_arr << leading_substrings(str)
#   end
#   new_arr.flatten
# end

# def palindrome?(string)
#   string == string.reverse && string.size > 1
# end

# def palindromes(string)
#   palindromes = []
#   all_combos = substrings(string)

#   all_combos.each do |str|
#     palindromes << str if palindrome?(str)
#   end
#   palindromes
# end

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
#----------------------------------------------------------------------------
# 6. fizzbuzz
# start number upto endinig number do
# map array
# if else statement for divisible by 3 && 5, 3, 5
# print fizzbuzz, fizz or buzz
# else number


# def fizzbuzz(num1, num2)
#   num1.upto(num2).map do |num|
#     if num % 3 == 0 && num % 5 == 0
#       'FizzBuzz'
#     elsif num % 3 == 0
#       'Fizz'
#     elsif num % 5 == 0
#       'Buzz'
#     else
#       num
#     end 
#   end.join(', ')
# end


# p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
#----------------------------------------------------------------------------
# 7. Double Char (part 1)
# split string into chars
# iterate over chars array and do num*2
# join the chars arr

# def repeater(string)
#   string.chars.map { |letter| letter * 2  }.join('')
# end


# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''
#----------------------------------------------------------------------------
# 8. Double Char (part 2)
# create a consonant variable
# split the string into chars
# iterate over chars and double if char is included in conconant variable
# else char
# join chars

# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def double_consonants(string)
#   string.chars.map do |letter|
#     if CONSONANTS.include?(letter.downcase)
#       letter * 2
#     else
#       letter
#     end
#   end.join('')         
# end


# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""
#----------------------------------------------------------------------------
# 9. Reverse the Digits in a Number
# convert number to string
# reverse string
# convert string back to integers

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
# 10. Get the Middle Character
# if string.size.odd? middle_letter = string.size/2
# else middle_letter +1
# return middle_letter

# def center_of(string)
#   middle_letter = string.size / 2
#   if string.size.odd?
#     string[middle_letter]
#   else
#     string[middle_letter - 1] + string[middle_letter] # same as:string[middle_letter -1, 2]
#   end
# end

# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'
#----------------------------------------------------------------------------
# EASY 9
# 1. Welcome Strainger
# puts staement using string interpolation for name title and occupation

# def greetings(arr, hash)
#   puts "=> Hello, #{arr.join(' ')}!" +
#   " Nice to have a #{hash[:title]} #{hash[:occupation]} around."
# end

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
#----------------------------------------------------------------------------
# 2. Double Doubles
# create a method called double_numbers
# convert num to string
# split string into 2 even sizes
# if left side == right side, its a doubled number
# create a second method called twice
# multiply num argument by 2 unless num == doubled number

# def double_numbers?(num)
#   middle_index = (num.to_s.size / 2)
#   num_string = num.to_s.chars
#   right_side = num_string[middle_index..-1].join('').to_i
#   left_side = num_string[0..middle_index-1].join('').to_i

#   left_side == right_side
# end

# def twice(num)
#   double_numbers?(num) && num.to_s.size > 1 ? num : num * 2
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
# 3. Always Return Negative
# if else statement. if num -, num else -num

# def negative(num)
#   num <= 0 ? num : -num # or -number.abs (abs = absolute value)
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby
#----------------------------------------------------------------------------
# 4. Counting up
# (1..num).to_a is one option
# 1.upto(num).to_a is a second option

# def sequence(num)
#   (1..num).to_a # or 1.upto(num).to_a
# end


# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
#----------------------------------------------------------------------------
# 5. Uppercase check
# boolean check string equal to string.upcase

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
# 6. How long are you?
# split the string into words
# create an empty array
# iterate over words array
# append word + ' ' word.size to empty array

# def word_lengths(string)
#   words = []

#   string.split.each { |word| words << word + ' ' + word.size.to_s }
#   words
# end

# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []
#----------------------------------------------------------------------------
# 7. Name Swapping
# split name string
# use string interpolation to return 'last, first'

# MY SOLUTION:
# def swap_name(string)
#   name = string.split 
#   "#{name[1]}, #{name[0]}"  # or string concat = name[1] + ', ' + name[0]
# end

# or given solution
# def swap_name(name)
#   name.split.reverse.join(', ')
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'
#----------------------------------------------------------------------------
# 8. Sequence Count
# create an array from 1 to first number (count)
# create an emtpy array
# iterate over first array and mulitply num * second number (start)
# append the result to the empty array. 
# return emtpy array

# def sequence(count, start)
#   num_arr = (1..count).to_a
#   new_arr = []

#   num_arr.each { |num| new_arr << num * start }
#   new_arr
# end

# or refactor above to 

# def sequence(count, start)
#   (1..count).to_a.map { |num| num * start }
# end


# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []
#----------------------------------------------------------------------------
# 9. Grade book
# score = average of 3 number (sum nums / total nums)
# case statement for score (90 <= score <= 100) == 'A' etc

# def get_grade(num1, num2, num3)
#   score = (num1 + num2 + num3) / 3

#   case score
#   when 90..100 then 'A'
#   when 80..90  then 'B'
#   when 70..80  then 'C'
#   when 60..70  then 'D'
#   else              'F'
#   end
# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"
#----------------------------------------------------------------------------
# 10. Grocery List
# iterate over buy fruit array 
# multiply fruit by num in the subarray )

# def buy_fruit(arr)
#   expanded_list = []
#   arr.each { |fruit, num| num.times { expanded_list << fruit } }
#   p expanded_list
# end

# # or 
# def buy_fruit(list)
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]
#----------------------------------------------------------------------------
# 11. Group Anagrams
# create an empty hash
# create a new _arr
# iterate over the new_arr and sort each word to find anagrams
# set the as key to hash
# iterate over original array if word.sort == key value = word
# return values
# word_hash = {}
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']

# words.each do |word|
#   key = word.chars.sort.join
#   if word_hash.has_key?(key)
#     word_hash[key].push(word)
#   else 
#     word_hash[key] = [word]
#   end 
# end

# # word_hash.each {|_k, v| p v }
# # word_hash.each_value { |v| p v }
#----------------------------------------------------------------------------
# MEDIUM 1
# 1. Rotation (part 1)
# create and empty arr
# iterate over array with index
# unless index == 0 append the numbe to empty array
# append index 0 to new arr

# def rotate_array(arr)
#   new_arr = []
#   arr.each_with_index { |num, index| new_arr << num unless index == 0 }
#   new_arr << arr[0]
# end

# # or 
#  def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end

# further exploration:

# def rotate_string(string)
#   rotate_array(string.chars).join
# end

# def rotate_int(num)
#   rotate_array(num.to_s.chars).join.to_i
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true
#----------------------------------------------------------------------------
# 2.Rotation (Part 2)
# modify above moethod and change the index 0 to num

# def rotate_array(arr)
#   new_arr = []
#   arr.each_with_index { |num, index| new_arr << num unless index == 0 }
#   new_arr << arr[0]
# end

# def rotate_rightmost_digits(num1, num2)
#   num_to_arr = num1.to_s.chars
#   num_to_arr[-num2..-1] = rotate_array(num_to_arr[-num2..-1])
#   num_to_arr.join.to_i
# end


# rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917
#----------------------------------------------------------------------------
# 3. Rotation (Part 3
# use method from above
# loop through and 
# rotate from index 0 to last index

# def rotate_array(arr)
#   new_arr = []
#   arr.each_with_index { |num, index| new_arr << num unless index == 0 }
#   new_arr << arr[0]
# end

# def rotate_rightmost_digits(num1, index)
#   num_to_arr = num1.to_s.chars
#   num_to_arr[index..-1] = rotate_array(num_to_arr[index..-1])
#   num_to_arr.join.to_i
# end

# def max_rotation(num)
#   index = 0
#   new_num = rotate_rightmost_digits(num, index)
#   loop do
#     break if index == (num.to_s.size) - 1
#     index += 1
#     new_num = rotate_rightmost_digits(new_num, index)
    
#   end
#   new_num
# end


# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845
#----------------------------------------------------------------------------
# 4. 1000 Lights
# create an array from 1..num of negative values (lights off)
# iterate over array ever num and convert positive

# def lights(num)
#   round = 1
#   index = 0
#   lights = (0..num).to_a.map { |n| -n }

#   loop do # loop through rounds
#     break if round == num + 1 

#     loop do # loop through index
#       index += round # selecting index to switch 

#       lights.each_with_index { |n, i| i == index ? lights[index] = n * -1 : n }
    
#       break if index >= lights.size
#     end

#     lights # return modified lights array after inner loop
#     round += 1 # increment round by 1
#     index = 0 # reset index to the start of lights array
#   end

#   lights.select { |n| n if n > 0 } # selecting lights on (greater than 0)
# end



# p lights(5) == [1, 4]
# p lights(10) == [1, 4, 9]
# p lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
#----------------------------------------------------------------------------
# 5. Diamonds!
# find the midpoint of num (midpoint will be used for rows and stars)
# set the stars variable to equal the number of stars per row
# 1 upto midpoint rows put stars + 1 index and -1 index (add a star to either side of midpoint)
# After midpoint, remove stars at 0 index and -1 index
# repeat until num of lines == num

## FIRST ATTEMPT ###

# def diamond(num)
#   num_arr = (1..num).to_a
#   mid_index = (num / 2)
#   num_of_stars = 1
#   mid_range = num_arr[mid_index]
#   spaces = (' ' * mid_range)
    
#     num_arr[1..mid_index].each do |num|
#       puts spaces + hollow_center(num_of_stars) + spaces
#       num_of_stars += 2
#       spaces = (' ' * mid_range -= 1 )
#     end

#     num_arr[mid_index..-1].each do |num|
#       puts spaces + hollow_center(num_of_stars) + spaces
#       num_of_stars -= 2
#       spaces = (' ' * mid_range += 1 )
#     end

# end

# ## Second Attempt with Joshua ##

# # def upper_triangle(number)
# #   mid_index = (number / 2) + 1
# #   num_of_stars = 1

# #   1.upto(mid_index).each do |num|
# #     puts hollow_center(num_of_stars).center(number)
# #     num_of_stars += 2
# #   end
# # end

# # def lower_triangle(number)
# #   mid_index = (number / 2)
# #   num_of_stars = number - 2

# #   mid_index.downto(1).each do |num|
# #     puts hollow_center(num_of_stars).center(number)
# #     num_of_stars -= 2
# #   end
# # end

# # def diamond(number)
# #   upper_triangle(number)
# #   lower_triangle(number)
# # end


# def hollow_center(num_of_stars)
#   if num_of_stars >= 3
#     spaces =  ' ' * (num_of_stars - 2)
#     ('*' + spaces + '*')
#   else
#     '*'
#   end
# end

# p diamond(1)
# p diamond(3)
# p diamond(5)
# p diamond(7)
# p diamond(9)


#----------------------------------------------------------------------------
# 6. Stack Machine Interpretation

# def minilang(string)
#   register = 0
#   stack = []

#   string.split.each do |value|
#     case value
#     when 'PUSH'  then stack.push(register)
#     when 'ADD'   then register += stack.pop
#     when 'SUB'   then register -= stack.pop
#     when 'MULT'  then register *= stack.pop
#     when 'DIV'   then register /= stack.pop
#     when 'MOD'   then register %= stack.pop
#     when 'POP'   then register = stack.pop
#     when 'PRINT' then puts register
#     else
#       register = value.to_i
#     end
#   end
# end

# minilang('PRINT')
# minilang('5 PUSH 3 MULT PRINT')
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# minilang('5 PUSH POP PRINT')
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# minilang('-3 PUSH 5 SUB PRINT')
# minilang('6 PUSH')

#----------------------------------------------------------------------------
# 7. Word to Digit
# create a constant vairable for the digitd to words
# iterate over teh keys of the hash
# gsub! on the string 
# sub each word that is the key for the value

# def word_to_digit(string)
#   digit_hash = { 'one'=> '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5',
#                'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9', 'zero' => '0'}

#   digit_hash.keys.each do |word|
#     string.gsub!(word, digit_hash[word])
#   end
#   string
# end

# p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
#----------------------------------------------------------------------------
# 8. Fibonacci NUmbers (Recursion)
# use the equation given and rewrite it into a method

# def fibonacci(num)
#   return 1 if num <= 2
#     fibonacci(num - 1 ) + fibonacci(num - 2)
# end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765
#----------------------------------------------------------------------------
# 9. Fibonacci NUmbers(Procedural)

# def fibonacci(num)
#   fib_arr = [1, 1]
#   loop do
#     fib_arr << fib_arr[-1] + fib_arr[-2]
#     break if fib_arr.size == num
#   end
#   fib_arr.last
# end

# or
# def fibonacci(num)
#   fib_arr = [1,1]
#   while fib_arr.size < num # or until fib_arr.size == num
#     fib_arr << fib_arr[-1] + fib_arr[-2]
#   end
#   fib_arr.last
# end

# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501
#----------------------------------------------------------------------------
# 10. Fibonacci Numbers (Last Digit)
# use the method above to get the fib number
# covert the fib number to string, then into characters
# convert char to int and return int

# def fibonacci(num)
#   fib_arr = [1,1]
#   while fib_arr.size < num % 60 # % 60 is further exploration. last fib num repeats every 60 nums
#     fib_arr << fib_arr[-1] + fib_arr[-2]
#   end
#   fib_arr.last
# end

# def fibonacci_last(num)
#   fibonacci(num).to_s.chars.last.to_i
# end

# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4

#----------------------------------------------------------------------------
# MEDIUM 2
# 1. Long Sentence
# split the string into an array of sentences using provided regex 
# iterate of the string array
# split into words arr (ex:str_arr = [[words_arr], [words_arr], [etc]]
# count words in each sub array
# sort sub array by length and return the longest sub arr
# join longest sub arr and print

# def split_sentence(text)
#   longest_sentence = ''
#   sentences = text.split(/\.|\?|!/)
#   sentence_to_words = sentences.map { |string| string.split }

#   sentence_to_words.each do |words|
#     longest_sentence = words if words.count > longest_sentence.size
#   end

#   # or  longest_sentence = sentence_to_words.max { |a, b| a.length <=> b.length }

#   puts longest_sentence.join(' ')
#   puts puts "containing #{longest_sentence.size} words"
#   end

# split_sentence('Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.')
#----------------------------------------------------------------------------
# 2. Now I Know My ABCs
# create an array that includes the letter pair as an index in the array
# spit the word into charecters
# iterate over charecters and see if the letter_pair_arr includes letter
# if letter is included, remove the block 
# BLOCKS = %w(BO   XK   DQ   CP   NA
# GT   RE   FS   JW   HU
# VI   LY   ZM)

# def block_word?(string)
#   # true_or_not = []
#   letters = string.upcase

#   BLOCKS.none? { |block| letters.count(block) >=2 }
#   # p true_or_not
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true
#----------------------------------------------------------------------------
# 3. Lettercase Percentage Ratio
# create constant arrays representing 'a-z' and 'A-Z'
# create the case hash with lowercase, uppercase, and neither as the keys
# set values of keys to 0
# split the string into chars
# iterate over chars
# if lowecase then count += 1 etc
# take the count divide it by the total string size to get percetnage the multiply by 100
# has value == percentage

# LOWERCASE = ('a'..'z').to_a
# UPPERCASE = ('A'..'Z').to_a


# def letter_percentages(string)
#   case_hash = { lowercase: 0, uppercase: 0, neither: 0 }
#   lower_count = 0
#   upper_count = 0
#   neither_count = 0

#   string.chars.each do |char|
#     if LOWERCASE.include?(char)
#       lower_count += 1
#     elsif UPPERCASE.include?(char)
#       upper_count += 1
#     else
#       neither_count +=1
#     end
#   end

#   case_hash[:lowercase] = (lower_count.to_f / string.size.to_f) * 100
#   case_hash[:uppercase] = (upper_count.to_f / string.size.to_f) * 100
#   case_hash[:neither] = (neither_count.to_f / string.size. to_f) * 100

#   case_hash
# end

# better solution =
# def letter_percentages(string)
#   result = { lowercase: string.count('a-z'),
#              uppercase: string.count('A-Z'),
#              neither: string.count('^a-zA-Z') }
#   result.map { |k, v| [k, ((v / string.size.to_f) * 100).round(1)] }.to_h
# end

# or 
# def letter_percentages(string)
#   case_hash = { lowercase: (string.count('a-z').to_f / string.size) * 100, 
#                 uppercase: (string.count('A-Z').to_f / string.size) * 100, 
#                 neither: (string.count('^a-zA-Z').to_f / string.size) * 100 }
# end

# p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
#----------------------------------------------------------------------------
# 4. Matching Parentheses?
# count the left and right parentheses 
# find a way to see if the left one came first 
# could use an each with index and see if the index
# check to see if the left parentheses are < the right ones
# compair the number at the end

# def balanced?(string)
#   l_count = 0
#   r_count = 0
#   string.each_char do |char|
#     if char == "(" && l_count >= r_count
#       l_count += 1
#     elsif char == ")" && r_count <= l_count
#       r_count += 1
#     else
#       char
#     end
#   end

#   l_count == r_count
# end

# or 

# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false
#----------------------------------------------------------------------------
# 5. Triangle Sides
# check to make sure that all lengths are > 0. invalid triangle if not
# sort the number inputs, sum 1st and 2nd side and make sure its > than 3rd
# then case statement to describe conditions for equalateral

# def triangle(num1, num2, num3)
#   sides = [num1,num2,num3].sort

#   if sides.include?(0) || sides[0..1].sum < sides[2]
#     :invalid
#   elsif (sides[0] == sides[1] && sides[1] != sides[2]) || 
#         (sides[1] == sides[2] && sides[2] != sides[0]) || 
#         (sides[0] == sides[2] && sides[2] != sides[1])
#     :isosceles
#   elsif sides[0] == sides[1] && sides[1] == sides[2]
#     :equilateral
#   else
#     :scalene
#   end  
# end

# or 
# if sides.include?(0) || sides[0..1].sum < sides[2]
#     :invalid
#   elsif sides[0] == sides[1] && sides[1] == sides[2]
#     :equilateral
#   elsif sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2]
#     :isosceles
#   else
#     :scalene
#   end
# end

# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid
#----------------------------------------------------------------------------
# 6. Tri-Angles
# load the angles into an array
# if array.any? == 90 then :right
# if array.sum < 90 the :acute
# if array.any > 90 then :obtuse
# else :invalid

# def triangle(num1, num2, num3)
#   angles = [num1, num2, num3]
  
#   if angles.include?(0) || angles.sum < 180 then :invalid
#   elsif angles.max < 90                     then :acute
#   elsif angles.include?(90)                 then :right
#   elsif angles.any? { |n| n > 90  }         then :obtuse
#   else  
#     :invalid
#   end
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid
#----------------------------------------------------------------------------
# 7. Unlucky Days
# set the year
# iterate over the months for the 13th day
# see if the 13th of the month is a friday
# increment the unlucky day variable by one if the 13ths is a friday

# require 'date' 


# def friday_13th(year)
#   unlucky_count = 0

#   thirteenth = Date.civil(year, 1, 13)
#   12.times do
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end


# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2
#----------------------------------------------------------------------------
# 8. Next Featured Number Higher than a Given Value
# two step method
# is the input number divisible by 7 ( % 7 == 0 )
# if it is divisible by 7, and num odd? convert num to string (.to_s)
# split numbe string and see if they are equal to each other
# if not, join them and convert to integer. (.join.to_i)
# return num

# def featured(num)
#   loop do
#     break if num > 9_876_543_210 # no duplicate numbers
#     num += 1
#     if num % 7 == 0 && num.odd?
#       num_arr = num.to_s.chars
#       return num if num_arr == num_arr.uniq
#     else
#       next
#     end
#   end

#   "Error. No feature number higher than #{num} found"
# end 

# or

# def featured(num)
#   loop do
#     num += 1
#     num += 1 until num % 7 == 0 && num.odd?
#       num_arr = num.to_s.chars
#       return num if num_arr == num_arr.uniq
#       break if num > 9_876_543_210 # no duplicate numbers
#   end
#   "Error. No feature number higher than #{num} found"
# end


# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_900) # -> There is no possible number that fulfills those requirements
#----------------------------------------------------------------------------
# 9. Bubble Sort
# iterate ovet the array
# if a < b then b, a else a, b


def bubble_sort!(arr)
  loop do 
    swapped = false
    1.upto(arr.size) do |index|
      next if arr[index -1] <=  arr[index]
      arr[index -1], arr[index] = arr[index], arr[index -1]
      swapped = true
    end

  break unless swapped
  end
end

p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
#----------------------------------------------------------------------------
# 10. Sum Square - Square Sum
# create two array: first == sum_squared; second == squared_then_sum
# iterate over each array and map the values
# get the sum for each array
# subtract sum_squared from sqaured sum

# def sum_square_difference(num)
#   sum_squared = 1.upto(num).sum**2
#   squared_then_sum = 1.upto(num).map { |n| n ** 2 }.sum
#   sum_squared - squared_then_sum
# end

# or
# def sum_square_difference(num)
#   (1.upto(num).sum**2) - (1.upto(num).map { |n| n ** 2 }.sum)
# end

# p sum_square_difference(3) == 22
# #    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# p sum_square_difference(10) == 2640
# p sum_square_difference(1) == 0
# p sum_square_difference(100) == 25164150
#----------------------------------------------------------------------------
# ADVANCED 1
# 1.MADLIBS REVISITED
# create a txt file containing the text. Include the place holder for verbs etc.
# build a constant array for verbs, nouns etc in the method
# iterate over each like of text and replace words wiith array.sample
# output result of modified text.

# VERBS = %w(jumps lifts bites licks)
# ADJECTIVES = %w(quick lazy sleepy ugly)
# NOUNS = %w(fox dog head leg)
# ADVERBS = %w(easily lazily noisily excitedly)

# File.open('madlibs.txt') do |file|
#   file.each do |line|
#     puts format(line, verb: VERBS.sample,
#                       adjective: ADJECTIVES.sample,
#                       noun: NOUNS.sample,
#                       adverb: ADVERBS.sample)
#   end
# end

#----------------------------------------------------------------------------
# 2. SEEING STARS
# establish the midpoint
# create a method to put stars
# num_spaces is == (num - 3)/ 2
# star = '*'
# go up to midpoint and put star + num_sapces + star + num_spaces + star
# each iteration num_spaces -= 2
# put stars == midpoint at the md point then reverse for lower star

# def star(num)
#   midpoint = num / 2
#   num_spaces = (num - 3) / 2
#   star = '*'
#   spaces = ' '

#   1.upto(midpoint) do |row|
#     puts (star + (spaces * num_spaces) + star + 
#       (spaces * num_spaces) + star).center(num)
#     num_spaces -= 1
#   end

#   puts star * num
#   num_spaces = 0
#   (midpoint + 2).upto(num) do |row|
#     puts (star + (spaces * num_spaces) + star + 
#       (spaces * num_spaces) + star).center(num)
#     num_spaces += 1
#   end

# end

# star(7)
# star(9)
#------------------------------------------------------------------------------
# 3. Transpose 3x3

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# def transpose(arr)
#   new_arr = [[],[],[]]
#   index = 0
#   inner_index = 0

#     arr.each do |sub_arr|
#       sub_arr.each do |num|
#         new_arr[index][inner_index] = num
#         index += 1
#       end
#       index = 0 
#       inner_index += 1
#     end

#   new_arr
# end


# or
# def transpose(matrix)
#   result = []
#   (0..2).each do |column_index|
#     new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]



#------------------------------------------------------------------------------
# 4. Transpose MxN
# def transpose(matrix)
#   rows = matrix.size
#   columns = matrix.first.size
#   new_matrix = []

#   (0...columns).each do |column_index|
#     new_row = (0...rows).map { |row_index| matrix[row_index][column_index] }
#     new_matrix << new_row
#   end

#   new_matrix
# end


# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]

#------------------------------------------------------------------------------
# 5. Rotating Matrices 
# # modify previous method
# # new row == fist column in reverse order etc

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# def rotate90(matrix, rotations=1)
#   rows = matrix.size
#   columns = matrix.first.size
#   new_matrix = []

#   (0...columns).each do |column_index|
#     new_row = (0...rows).map { |row_index| matrix[row_index][column_index] }
#     new_matrix << new_row.reverse
#   end

#   rotations == 1 ? new_matrix : rotate90(new_matrix, rotations - 1)
# end

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2
#------------------------------------------------------------------------------
# 6. Fix the Bug

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size >= 2
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])

#------------------------------------------------------------------------------
# 6. Merge Sorted Lists
# try the | merge method to cobine both arrays and see what the result is. 
# if the result is not sorted, use the bubble sort method to sort the result



#------------------------------------------------------------------------------




#------------------------------------------------------------------------------




#------------------------------------------------------------------------------





#------------------------------------------------------------------------------




#------------------------------------------------------------------------------





#------------------------------------------------------------------------------




#------------------------------------------------------------------------------




#------------------------------------------------------------------------------





#------------------------------------------------------------------------------




#------------------------------------------------------------------------------





#------------------------------------------------------------------------------




#------------------------------------------------------------------------------




#------------------------------------------------------------------------------






#------------------------------------------------------------------------------





