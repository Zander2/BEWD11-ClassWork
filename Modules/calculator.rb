class Calculator
    def self.initialize
        puts "Enter your first number:"
        @num_one = gets.chomp.to_i
        puts "Enter a second number:"
        @num_two = gets.chomp.to_i
        puts "Enter a calculation method (multiply, add, subtract, divide, exponent)"
        @method = gets.chomp
    end

    def self.run_calulator
        if @method == "multiply"
            !multiply
        elsif @method == "add"
            !add
        elsif @method == "subtract"
            !subtract
        elsif @method == "divide"
            !divide
        elsif @method == "exponent"    
            !exponent
        else
            puts "method unknown!"
        end
    end
    
    def self.multiply
        puts @num_one * @num_two
    end
    
    def self.add
        puts @num_one + @num_two
    end
    
    def self.divide
        puts @num_one / @num_two
    end
    
    def self.subtract
        puts @num_one - @num_two
    end
    
    def self.exponent
        puts @num_one ** @num_two
    end
end
