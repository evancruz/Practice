 
 
#  it "should return the word with it's last vowel (a, e, i, o, u) removed" do
#       expect(hipsterfy("tonic")).to eq("tonc")
#       expect(hipsterfy("panther")).to eq("panthr")
#       expect(hipsterfy("swimming")).to eq("swimmng")
#     end

#     it "should return the original word if it contains no vowels" do
#       expect(hipsterfy("rhythm")).to eq("rhythm")
#       expect(hipsterfy("my")).to eq("my")
#     end

require_relative '../../helpers'

def hipsterfy(str)
    i = str.length - 1
    arr = str.split("")
    while i > 0
        if String.vowels.include?(arr[i])
            return str[0...i] + str[i+1..-1]
        end
        i -= 1
    end
    return str
end