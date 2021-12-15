require_relative 'crud'
include Crud
users = [
  {username: "andreas", password: "ahart"}, 
  {username: "monika", password: "mhegler"},
  {username: "carlos", password: "chart"},
  {username: "paulo", password: "phart"},
  {username: "lidia", password: "lhart"}
]

hashed_users = create_secure_users(users)
puts hashed_users
puts users