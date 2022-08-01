# Question 1
# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# Answer: 
1
2
2
3

# Question 2

# Describe the difference between ! and ? in Ruby. And explain what would happen
# in the following scenarios:

# ANSWER: bang operator (!) will permenantly a variable in certain condition.
# ? is used to indicate a boolean method or boolean

what is != and where should you use it? 
# not equal to. used to show that two objects or values are not equal 
put ! before something, like !user_name 
# turns any value into the opposite of their boolean values
put ! after something, like words.uniq! # used to permanently alter a value
put ? before something 

put ? after something 
# ternary operator for if... else (ex boolean ? true : false)
put !! before something, like !!user_name 
# used to turn any objedct into boolean value (everything == true except nil and false)

# Question 3
# Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as important as house training your pet dinosaur."

advice['important'] = 'urgent'

 # Question 4
# The Ruby Array class has several methods for removing items from the array. 
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original
# array between method calls)?
numbers.delete_at(1)
# ANSWER = deletes integer at index 1 ('2' in this case) and returns the array
#          [1, 3, 4, 5].
numbers.delete(1)
# ANSWER = deletes the integer '1' from the array and returns [2, 3, 4, 5]

# Question 5
# Programmatically determine if 42 lies between 10 and 100.
# ANSWER = 
(10..100).include?(42) # => true
# or
(10..100).cover?(42) # => true

# Question 6
# Start with the string:
famous_words = "seven years ago..."
# show two different ways to put the expected 'Four scire and' in front of it.
# Answer: 
famous_words.prepend("Four score and ") # using string method #prepend
#or
"Four score and " + famous_words # String literal + string concatenation
#or
"Four score and " << famous_words # append the variable famouse words to the string

# Question 7 
# If we build an array like this:
flinstones = ["Fred", "Wilma"]
flinstones << ["Barney", "Betty"]
flinstones << ["BamBam", "Pebbles"]
# we will end up with a nested array. Make this into an un-nested array.
# ANSWER:
flinstones.flatten!

# Question 8
# Given the hash below:
flinstones = { 
              "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, 
              "BamBam" => 4, "Pebbles" => 5
              }
# Turn this into an array containing only two elements: Barney's name and number
# ANSWER:
flinstones.assoc('Barney') # => ["Barney", 2] 
# assoc method returns key-value pair (two - element array) or nil if no match
