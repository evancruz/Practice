arr = [3,1,2,3]
arr2 = [1]

p arr2.inject {|acc, el| acc + el}

require_relative 'Ruby/Exercises/helpers'
def hipsterfy(str)
    i = str.length - 1
    
    while i > 0
        if String.vowels.include?(str[i])
            beginning = str[0...i]
            last = [i+1..-1]
        end
        i -= 1
    end
    return str
end

print hipsterfy("tonic")