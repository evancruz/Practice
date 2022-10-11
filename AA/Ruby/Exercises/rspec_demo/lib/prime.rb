require_relative "../../helpers"

def prime?(n)
    if n < 3 
        return false
    end
    (2...n).each do |divisor|
        if divisor.divides?(n)
            return false
        end
    end
    return true
end 