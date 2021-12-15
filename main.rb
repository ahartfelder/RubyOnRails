require_relative 'mod'

class Person
include Crud
  attr_accessor :first, :last, :email, :user, :pswd
  
  def initialize(f, l, e, u, p)
    @first = f
    @last = l
    @email = e
    @user = u
    @pswd = p
  end

  def to_s
    "
    Name: #{@first} #{@last}
    Email: #{@email}
    Username: #{@user}
    "
  end
end

person1 = Person.new("Andreas", "Hart", "ahart@g.co", "ahart", "hart1")
person2 = Person.new("Monika", "Hegler", "mheg@g.co", "mheg", "hegler1")

person1.pswd = person1.create_pswd(person1.pswd)
person2.pswd = person2.create_pswd(person2.pswd)

puts person1
puts person2

p person1.pswd
p person2.pswd
