class Car
   def initialize(color, make, model, year) 
       @color = color
       @make = make
       @model = model
       @year = year
   end
   
   def drive
       puts "We are driving!"
   end
   
   def describe_car
       puts "We are driving in a #{@color} #{@make} #{@model} from year #{@year}"
   end
end

myCar = Car.new("Red", "Honda", "Civil", 2004)

myCar.drive
myCar.describe_car