restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# write the each loop here. 
restaurant_menu.each { |item,price| restaurant_menu[item] = price + price * 0.1 
}
puts restaurant_menu 

def artax
  a = [:punch, 0]
  b = [:kick, 72]
  c = [:stops_bullets_with_hands, false]
  key_value_pairs = [a, b, c]
  p key_value_pairs
  Hash[key_value_pairs]
end
p artax