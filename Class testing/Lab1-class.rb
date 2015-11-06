class ConvertString
#    def initialize(string) 
#       @string = string
#    end
 
# Better 2.0 version

    def initialize
        puts "enter your string here:"
        @string = gets.chomp
    end
    
    def upper
        puts " - Uppercase: #{@string.upcase}"
    end
    
    def lower
        puts " - Lowercase: #{@string.downcase}"
    end
    
    def reverse
        puts " - Reverse: #{@string.reverse}"
    end
    
    def caps
        puts " - Capitalize: #{@string.capitalize}"
    end
    
    def swap_case
        puts " - Swap Case: #{@string.swapcase}"
    end
end

#print "Write a sentence:"
#myString = ConvertString.new(gets.chomp)
myString = ConvertString.new
myString.upper
myString.lower
myString.reverse
myString.caps
myString.swap_case