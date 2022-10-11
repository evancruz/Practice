# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    hash = Hash.new(0)
    str.each_char {|char| hash[char] += 1}

    new_str = ""
    counter = 1
    (0...str.length).each do |i|
        if str[i] == str[i+1]
            counter += 1
        else
            if counter > 1 
                new_str += counter.to_s + str[i-counter+1...i] 
            else
                 new_str += str[i]
            end
           
            counter = 1

            
        end
    end

    return new_str
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
