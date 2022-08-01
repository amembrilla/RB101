# Question 1
# In this has of people and their age
ages = { "Hermon" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# see if "Spot" is present
ages.include?("Spot") # => false
ages["Spot"] # => nil
ages.key?("Spot") # => false
ages.has_key?("Spot") # => false

# Question 2
# Starting with this string:
munsters_description = "The Munsters are creepy in a good way."
# Convert the string in the following ways (code will be executed on original above)
"tHE mUNSTERS ARE CREEPY IN A GOOD WAY." # munsters_description.swapcase!
"The munsters are creepy in a good way." # munsters_description.capitalize!
"the munsters are creepy in a good way." # munsters_description.downcase!
"THE MUNSTERS ARE CREEPY IN A GOOD WAY." # munsters_description.upcase!

#Question 3
# We have most of the Miunster family in our age hash:
ages = {"Hermon" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# add ages for Marilyn and Sport to existing hash
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# Answer
ages.merge!(additional_ages) # => {"Hermon"=>32, "Lily"=>30, "Grandpa"=>5843, 
                             #     "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}

# Questioin 4
# See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet 
          dinosour."
# ANSWER          
advice.include?("Dino") # => false
# or
advice.match?("Dino") # => false

# Question 5
# Show an easier way to write this array:
flinstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# ANSWER:
flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6
# How can we add the family pet "Dino" to our usual array:
flinstones = %w(Fred Brney Wilma Betty BamBam Pebbles)
flinstones << "Dino"

# Question 7
# In the previoius practice problem we added Dino to our array like this:
# flinstones = %w(Fred Brney Wilma Betty BamBam Pebbles)
# flinstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.
# How can we add multiple items to our array? (Dino and Hoppy)
flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
flinstones << "Dino" << "Hoppy" # same as above but different format
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
flinstones.concat(["Dino", "Hoppy"]) # same as above but different format

# Question 8
# Shorten the following sentence:
advice = "Few things in life are as important as house training your pet dinosaur."
# Review the String#slice! documentation, and use that method to make the return 
# value "Few things in life are as important as ". But leave the advice variable
# as "house training your pet dinosaur.".
advice.slice!(0..25) # => "Few thinngs in life are as important as "
# As a bonus, what happens if you use the String#slice method instead?
# Answer: Returns the same as slice! but doesn't alter the advice string.

# Question 9 
# Write a one_liner to count the number of lower-case 't' characters ini the
# following strng:
statement = "The Flintstones Rock!"
statement.count('t')

# Queston 10
# Back in the stone age (before CSS) we used spaces to align things on the screen
# If we had a table of Flintstone family members that was forty characters in width
# how could we easily center that title above the table with spaces?
title = "Flinistone Family Members"
title.center(40)







