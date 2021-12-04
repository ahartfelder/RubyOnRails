puts "Enter your first name"
first = gets.chomp
puts "Enter your last name"
last = gets.chomp
full = "#{first} #{last}"
puts "Your name is #{full}."
puts "Your name reversed is #{full.reverse}."
puts "Your name has #{full.length - 1} characters in it."

# snake_case (for Files, Directories, Symbols, Methods and Variables)

# SCREAMING_SNAKE_CASE (for Constants)

# don't separate number (my_num1, my_num2)

# Capital_Case / UpperCamelCase (for Class and Modules)

# Method

# def method_name
#   some_code
# end