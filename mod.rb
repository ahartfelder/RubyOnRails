require 'bcrypt'

module Crud
  puts "CRUD Activated"
  
  def create_pswd(pswd)
    BCrypt::Password.create(pswd)
  end

  def verify_pswd(pswd)
    BCrypt::Password.new(pswd)
  end

  def create_secure_users(list)
    list.each do |data|
      data[:pswd] = create_pswd(data[:pswd])
    end
  end

  def auth_user(user, pswd, list)
    list.each do |data|
      if data[:user] == user && verify_pswd(data[:pswd]) == pswd
        return data
      end
    end
    "Invalid Credentials"
  end

end
