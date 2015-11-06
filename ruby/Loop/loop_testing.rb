for i in 0...5
    puts "Value of local variable is #{i}"
end

a = 20
while a < 40
    a += 4
    puts "We are currently in #{a} using while loop"
end

3.times do |number|
    puts "We are #{number} on a branch"
end

1.upto(5) do |number|
    puts "this is my number #{number}"
end