# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

# each, map, select, all, any?, none?, one?, count, sum, mix/max, flatten
# require File.expand_path("./helpers.rb")
require "../helpers"

def coprime?(x1, x2)
    (2..x1).none? {|factor| factor.divides?(x1) && factor.divides?(x2)}
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false



# dividend is the one being divided
# divisor is the one doing the dividing

def coprime2?(x1, x2)
    divisorsOfX1 = divisorsFor(x1)
    divisorsOfX2 = divisorsFor(x2)

    divisorsOfX1.each do |divisor|
        divisorsOfX2.each do |dividend|
            if divisor != 1 && divisor.divides?(dividend)
                return false
            end
        end
    end
    return true
end

def divisorsFor(x) 
    divisors = []
    (1...x).each do |divisor|
        if divisor.divides?(x)
            divisors << divisor
        end
    end
    return divisors
end

p coprime2?(25, 12)    # => true
p coprime2?(7, 11)     # => true
p coprime2?(30, 9)     # => false
p coprime2?(6, 24)     # => false