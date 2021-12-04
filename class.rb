class User
  attr_accessor :first_name, :last_name, :email, :user_name, :password
  def initialize(first, last, email, username, password)
    @first_name = first
    @last_name = last
    @email = email
    @user_name = username
    @password = password
  end
  def info
    print "Name: #{@first_name} #{@last_name}\nE-mail: #{@email}\nUsername: #{@user_name}\n\n"
  end
end

name1 = User.new("Andreas", "Hart", "ex@mple.com", "ahart", "felder1")
name2 = User.new("Mônika", "Hegler", "templ@te.com", "mhegler", "hegler1")
name1.info
name2.info
name3 = name1
name3.first_name = "Paulo"
name3.user_name = "phart"
name3.info
name1.info
name3 = "Paulo"
p name3
name1.info
