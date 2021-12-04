# Array of Hashes
users = [
  {username: "andreas", password: "ahart"},  {username: "monika", password: "mhegler"},
  {username: "carlos", password: "chart"},
  {username: "paulo", password: "phart"},
  {username: "lidia", password: "lhart"}
]

# Method to check and verify usarname/password
def auth_user(username, password, list_of_users)
  list_of_users.each do |user|
      if user[:username] == username && user[:password] == password
          return user
      end
  end
  "Username and/or Password incorrect!"
end

# Program
puts "Welcome to the Authenticator"
30.times { print "-" }
puts
p "Please, Insert your Username and Password to proceed."

attempts = 1
loop do 
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  answer = auth_user(username, password, users)
  attempts += 1

  # Feedback Positive or Negative
  if answer != "Username and/or Password incorrect!"
    puts "Hello, #{answer[:username].capitalize}! Access Granted!"
    break
  else
    puts answer
end

# If Attempts Exceeded
if attempts == 4
  puts "Attempts Exceeded! Access Denied."
  break
end
print "Do you want to try again? (Y/N) "
answer = gets.chomp.downcase
break if answer == "n"
end