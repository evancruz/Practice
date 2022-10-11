
class String
    @@vowels = "aeiou"
    def self.vowels
    @@vowels
  end
end

# dividend is the one being divided
# divisor is the one doing the dividing
class Integer
  def divides?(dividend)
    dividend % self == 0
  end
end

def isEven?(x)
  x % 2 == 0
end