# Question 3
# Let's call a method, and pass both a string and an array as arguments and see
# how even though they are treated in the same way by Ruby, the results can be 
# different.

# Study the following code and state what will be displayed...and why:
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # => "pumpkins"
puts "My array looke like this nowL #{my_array}" # => ["pumkins, rutabaga"]

# Question 6
# How could the following method be simplified without changing its return
# value?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# ANSWER:
def color_valid(color)
  color == "blue" || color == "green"
end
# both do the same

# HARD 1
# Question 3
# What will be printed by each of these code groups?
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => "one"
puts "two is: #{two}" # => "two"
puts "three is: #{three}" # => "three"
# variables within the method are actually seperate variables local to the
# method and not available outside of the method. 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4 

    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
 
  true
end


