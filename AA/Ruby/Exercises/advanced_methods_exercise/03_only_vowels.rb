# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.

# each, map, select, all, any?, none?, one?, count, sum, mix/max, flatten

require "../helpers"

def only_vowels?(str)
    str.split("").none? {|char| !String.vowels.include?(char) } 
end


p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


