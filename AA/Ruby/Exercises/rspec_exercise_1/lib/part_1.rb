def average(x, y)
    (x + y) / 2.0
end

# yell("hello")).to eq("HELLO!")
# expect(alternating_case("code never lies, comments sometimes do.")).
    # to eq("CODE never LIES, comments SOMETIMES do.")

def average_array(arr)
    arr.sum/Float(arr.length)
end

def repeat(str, amount)
    str * amount
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    str.split.map.with_index do |word, i| 
        if i%2 == 0 
            word.upcase 
        else 
            word.downcase
        end
    end.join(" ")
end