# DATA STRUCTURES 

# ARRAY: MANIPULATION
## add/remove element(s) to the end using push/pop
people = ["Tommy", "Bex"]
p people << "Oscar"                   # prints ["Tommy", "Bex", "Oscar"]
p people.push("Maurice", "Abby")      # prints ["Tommy", "Bex", "Oscar","Maurice", "Abby"]
p people.pop()                        # prints "Abby"

## add/remove elements(s) to the front using shift/unshift
people = ["Tommy", "Bex"]
p people.unshift("Oscar", "Matthias") # prints ["Oscar", "Matthias", "Tommy", "Bex"]
p people.shift()                      # prints "Oscar"
p people                              # prints ["Matthias", "Tommy", "Bex"]

# ARRAY: EXISTENCE
## check if an element exists in an array using include?
people = ["Tommy", "Bex", "Abby", "Maurice"]
p people.include?("Abby")   # true
p people.index("Abby")      # prints 2
p people.index("Oscar")     # prints nil

# ARRAY AND STRINGS: SPLIT/JOIN
## convert a string into an array using split
sentence = "Hey Programmers! What's up."
p sentence.split(" ")      # prints ["Hey", "Programmers!", "What's", "up."]
p sentence.split("a")      # prints ["Hey Progr", "mmers! Wh", "t's up."]

## convert an array into a string using join
words = ["Rubies", "are", "red"]
p words.join(" ")          # prints "Rubies are red"
p words.join("-")          # prints "Rubies-are-red"
p words.join("HI")         # prints "RubiesHIareHIred"
p words                    # prints ["Rubies", "are", "red"]

### use both
sentence = "Hey Programmers!"
p sentence.split("e").join("a")      # prints "Hay Programmars!"

#STRINGS
str.upcase/downcase

# HASHES
## Definition
plain =  plain_hash = { }

hash = { "name" => "App Academy", "color" => "red" }
# When initializing a hash with symbol keys, we can lose rocket
my_bootcamp = {name:"App Academy", color:"red", locations:["NY", "SF", "ONLINE"] }
hash_with_default = Hash.new("???")

## K & V 
hash.has_key?("x"), .has_value?("y")
## enumerables
hash.each, .each_key/value

## modification
my_bootcamp[:color] # red
my_bootcamp[color: "blue"]
plain_hash["city"] = "SF"



# Symbols - they are immutable
sym = :hello 
sym[0] = "x"
p sym   # => :hello




#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#

#ENUMURABLES (select = filter, inject = reduce)
each, map, select, all, any?, none?, one?, count, sum, mix/max, flatten
p [1, 4, 5].one? { |el| el.even? }  # => true

p [1, 2, 3, 4, 5, 6].count { |el| el.even? }    # => 3
p [1, -3, 5].sum   # => 3
p [1, -3, 5].min    # => -3
p [1, -3, 5].max    # => 5
p [].max            # => nil

multi_d = [
    [["a", "b"], "c"],
    [["d"], ["e"]],
    "f"
].flatten   # => ["a", "b", "c", "d", "e", "f"]


## ARRAY: EACH
people = ["Candace", "Jon", "Jose"]
people.each { |person| puts person }
people.each do |person|
  person.run()
end

string.each_char.with_index {|char, i| return}


## ARRAY: EACH WITH INDEX
people.each_with_index do |person, i|
  puts person
  puts i
  puts "-----"
end

## STRING: EACH CHAR
greeting = "hello"
greeting.each_char { |char| puts char }

## STRING: EACH CHAR WITH INDEX
greeting.each_char.with_index do |char, i|
  puts char
  puts i
  puts "---"
end

## BLOCKS
# repeat a block using times
3.times do
    puts "hi"
end


## RANGE(start..end) - inclusive or (start...end) - non inclusive
(2..6).each {|n| puts n}
(2...6).each {|n| puts n}


## Inject
[11, 7, 2, 4].inject { |acc, el| acc * el }
### finding the minimum value
#### # do ... end blocks have a lower precedence than method invocation
#### Ruby will interpret the command as p ([11, 7, 2, 4].inject) and then try 
#### to attach the do ... end block to the result of the p command. 
#### This will cause a no block given error when it tries to execute p ([11, 7, 2, 4].inject).
p ([11, 7, 2, 4].inject do |acc, el|
  if el < acc
    el
  else
    acc
  end
end) # => 2

### Inject with a default accumulator
#### sum up all even numbers
[11, 7, 2, 4].inject(0) do |acc, el|
  if el.even?
    acc + el
  else
    acc
  end
end # => 6


#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
# BLOCKS + RANGE

# inclusive, exclusive
(2..6).each, (2...6).each 

3.times do
  puts "hi"
end # prints




#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#

# Rubyist with Style

def say_buzz
  "buzz" # no return
end

say_buzz # no parathesis 

# single line conditionals
puts "don't forget an umbrella!" if raining

#Use built-in methods
p num.even?
p people[-1]
p people.last

# Less preferred
def all_numbers_even?(nums)
  nums.each do |num|
    return false if num % 2 != 0
  end
  true
end

# Preferred by a Rubyist
def all_numbers_even?(nums)
  nums.all? { |num| num.even? }
end

def method(hash)
  p hash  # {"location"=>"SF", "color"=>"red", "size"=>100}
end

# method({"location"=>"SF", "color"=>"red", "size"=>100})
method("location"=>"SF", "color"=>"red", "size"=>100)

#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#
#------------------------------------------------------------------------------------#

# Operators
## Splat Operator
### Using splat to accept additional arguments
def method(arg_1, arg_2, *other_args) 
  p other_args    # [] if not passed in
end

### Using splat to decompose an array
def greet(first_name, last_name)
  p "Hey " + first_name + ", your last name is " + last_name
end

names = ["Grace", "Hopper"]
greet(*names)    # => "Hey Grace, your last name is Hopper"
arr_3 = [ *arr_1, "c", *arr_2 ]
p arr_3 # => ["a", "b", "c", "d", "e"]

### Using splat to decompose a hash
#### only works with symbols
old_hash = { a: 1, b: 2 }
new_hash = { **old_hash, c: 3 }
p new_hash # => {:a=>1, :b=>2, :c=>3}

