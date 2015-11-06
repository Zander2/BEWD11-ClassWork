module ConvertString

    def self.initialize
        puts "enter your string here:"
        @string = gets.chomp
    end
    
    def self.upper
        puts " - Uppercase: #{@string.upcase}"
    end
    
    def self.lower
        puts " - Lowercase: #{@string.downcase}"
    end
    
    def self.reverse
        puts " - Reverse: #{@string.reverse}"
    end
    
    def self.caps
        puts " - Capitalize: #{@string.capitalize}"
    end
    
    def self.swap_case
        puts " - Swap Case: #{@string.swapcase}"
    end
end