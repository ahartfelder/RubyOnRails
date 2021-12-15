require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first, last, email, user, pass)
    @first_name = first
    @last_name = last
    @email = email
    @username = user
    @password = pass
  end

  def to_s
    "
    Name: #{@first_name} #{@last_name}
    Email: #{@email}
    Username: #{@username}
    "
  end
end

eu = Student.new("Andreas","Hart","ex@mp.le","ahart","pass1")
p eu
hashed_password = eu.create_hash_digest(eu.password)
puts hashed_password