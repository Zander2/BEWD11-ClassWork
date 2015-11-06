  array_copy = [1, 2, 3, 4, 5]
  # your code
  destination = array_copy.select {|i| i < 4 }
  puts destination