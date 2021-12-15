require 'bcrypt'

my_password1 = BCrypt::Password.create("my password")
my_password2 = BCrypt::Password.create("my password")
my_password3 = BCrypt::Password.create("my password")

puts my_password1
puts my_password2
puts my_password3

puts my_password1 == "my password"
puts my_password2 == "my password"
puts my_password3 == "my password"

# my_password = BCrypt::Password.new("$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey")
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false
