class Student
  attr_accessor :first_name, :last_name, :email, :username

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(first, last, user, email, pswd)
    @first_name = first
    @last_name = last
    @username = user
    @email = email
    @password = pswd
  end

#   def first_name=(name)
#     @first_name = name
#   end

#   def first_name
#     @first_name
#   end

  def set_username
    @username = "ahart"
  end

  def to_s
      "
      First name: #{@first_name}
      Last name: #{@last_name}
      Username: #{@username}
      Email: #{@email}
      "
  end


end

my_name = Student.new("Andreas", "Hart", "ahart", "ex@mp.le", "pswd1")
puts my_name
my_name.username = "andreash"
puts my_name
