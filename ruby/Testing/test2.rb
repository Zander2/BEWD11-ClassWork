user_names = ["Cindy Smith", "Bob Jones", "Kelsey Scott"]

user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]


p user_names
p user_emails
puts "Let's put them together"
matrix = Hash[user_names.to_a.zip(user_emails.to_a)]
#puts matrix
#hash = Hash[user_names.zip(user_emails)]
array = user_names.to_a.sort.zip(user_emails.to_a.sort)
p array
p matrix