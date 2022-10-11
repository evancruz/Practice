require_relative '../../helpers'

def partition(arr, target)
    [arr.filter {|x| x < target}] + [arr.filter {|x| x >= target}]
end

def merge(hash1, hash2)
    (hash1.map {|k, v| [k,v]} + hash2.map {|k, v| [k,v]}).to_h
end

def censor(str, curseWords)
    str.split.map do |word|
        if curseWords.include?(word.downcase)
            star_vowels(word)
        else
            word
        end
    end.join(" ")
end

def star_vowels(word)
    word.split("").map do |char| 
        if String.vowels.include?(char.downcase)
            "*"
        else 
            char
        end
    end.join("")
end

def power_of_two?(x) 
    while x > 1 
        x /= 2.0
    end
    return x == 1
end