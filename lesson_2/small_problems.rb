# REPEAT YOURSELF
# Write a method that takes two arguments, a string and a positive integer, and
# prints the string as many times as the integer indicates.

def repeat(str, num)
  num.times { puts str }
end

# ODD
# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method returns true if the number's absolute value is
# odd. You may assume that the argument is a valid integer value.

def is_odd?(num)
  num % 2 != 0
end

# LIST OF DIGITS
# Write a method that takes one argument, a positive integer, and returns a list
# of the digits in the number.

def digit_list(num)
  num_array = num.to_s.chars
  num_array.map! { |num| num.to_i }
  num_array
end

# HOW MANY?
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  occurrences = Hash.new(0)
  vehicles.each { |auto| occurrences[auto] += 1 }
  occurrences.each { |k,v| puts "#{k} => #{v}"}
end

count_occurrences(vehicles)

# REVERSE IT (Part 1)
# Write a method that takes one argument, a string, and returns a new string 
# with the words in reverse order.

def reverse_sentence(str)
  str.split.reverse!.join(' ')
end

# REVERSE IT (Part 2)
def reverse_words(str)
  words = []

  str.split.each do |word| 
    word.reverse! if word.size >= 5 
    words << word
  end

  words.join(" ")
end

# Stringy Strings

def stringy(size)
  num = []

  size.times do |index| 
    number = index.even? ? 1 : 0 
    num << number
  end

  num.join
end

# ARRAY AVERAGE
def average(numbers)
  (numbers.sum)/numbers.size
end

# SUM OF DIGITS
def sum(number)
  num_arr = number.to_s.chars
  num_arr.map! { |n| n.to_i }.sum
end

# WHAT'S MY BONUS?
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
puts extend_greeting(greeting)






