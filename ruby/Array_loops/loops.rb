puts "This is the 'each' iterator:"

alex = ["alex","menuet","student","alex.menuet@taulia.com"]

alex.each do |info|
   puts info.capitalize
end

puts "This is the for loop:"
for i in 0...alex.length
    puts alex[i].upcase
end


puts "This is the each with index iterator:"
alex.each_with_index do |info, index|
    puts info + " at index " + index.to_s
end

alpha_array = ["amigo","balada","camaron","divergent"]
puts "This is a sum of array:"
array_sum = alpha_array.reduce { |sum,el| sum + el}
puts array_sum

puts "This is the map iterator:"
puts alpha_array.map { |word| word.capitalize.reverse }
p alpha_array #p = puts/print: same thing as print but shows you the variable type (Here array)
puts "This is the map! (mutator) iterator:"
puts alpha_array.map! { |word| word.capitalize.reverse }
p alpha_array #p = puts/print: same thing as print but shows you the variable type (Here array)




