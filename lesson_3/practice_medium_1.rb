# Question 1
# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the
# days before computers had video screens).
# For ths practice problem, write a one-line program that creates the following
# output 10 times, with the subsequent line indented 1 space to the right:
# ANSWER:
10.times { |num| puts (" " * num) + "The Flinstones Rock!" }

# Question 2
# The result of the following statement will be an error:
puts "the value of 40 + 2 is " + (40 + 2)
#ANSWER: 
# 1) error is the result of using string concatenation with an integer
#    we can use integer to string to convert like: (40 + 2).to_s
# 2) can use strin interpolation like: puts "the value of 40 + 2 is + #{(40 + 2)}"

# Question 3
# Alan wrote the following method, which was intended to show all of the factors
# of the input number:
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# ANSWER: rewrite code using a while loop
def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# Question 4
# How would you fix the following code so that it doesn't raise and error
limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# ANSWER: current code raises and undefined local variable for limit. I would 
#         define the variable in the method. you can also pass the limit into 
#         the method as a 3rd parameter.


def fib(first_num, second_num)
  limit = 15

  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"  

# Question 6
# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# ANSWER: the answer variabel was not modified in the method so its 42 - 8 = 34

# Question 7
# One day Spot was playing with the Munster family's home computer and he wrote
# a small program to mess with their demographic data:
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end
# After writing this method, he typed the following...and before Grandpa could
# stop him, he hit the Enter key with his tail:
mess_with_demographics(munsters)
# Did the family's data get ransacked? Why or why not?

# ANSWER: Yes it affected that data because the demo_hash isnt reassigned, so 
# the hash being passed to the method is the actually being manipulated.

# Question 8 
# Method calls can take expressions as arguments. Suppose we define a method
# called rps as follows, which follows the classic rules of rock-paper-scissors
# game, but with a slight twist that it declares whatever hand was used in the 
# tie as the result of that tie.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
# What is the result of the following call?
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# ANSWER : 'paper'

# Question 9
# Consider the two simple methods:
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

#What would be the return value of the following method invocation?

bar(foo)


