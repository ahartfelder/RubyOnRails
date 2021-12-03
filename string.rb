puts "Enter your first name"
first = gets.chomp
puts "Enter your last name"
last = gets.chomp
full = "#{first} #{last}"
puts "Your name is #{full}."
puts "Your name reversed is #{full.reverse}."
puts "Your name has #{full.length - 1} characters in it."