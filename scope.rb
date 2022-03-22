# Local
def foo
  local = "Local é acessada apenas neste método"
  puts local
end

foo
# puts local # Erro por ser uma variável local

# Global - $
class Bar
  def foo
    $global = 0
    puts $global
  end
end

class Bas
  def fuu
    $global += 1
    puts $global
  end
end

bar = Bar.new
bas = Bas.new
bar.foo
bas.fuu
puts $global += 100
bas.fuu
puts $global

# Class - @@
class User
  @@user_count = 0
  def add(name)
    puts "User #{name} adicionado"
    @@user_count += 1
    puts @@user_count
  end
end

user_1 = User.new
user_1.add("Andreas")

user_2 = User.new
user_2.add("Mônika")

# Instance - @
class Person
  # @@name
  def add(name)
    @name = name
    # @@name = name
    puts "Pessoa adicionada"
  end
  def hello
    puts "Seja bem vindo, #{@name}!"
    # puts "Seja bem vindo, #{@@name}!"
  end
end

person_1 = Person.new
person_1.add("Carlos")

person_2 = Person.new
person_2.add("Lidia")

person_1.hello
person_2.hello

# Attributes -> Sempre privados e iniciados em @
class Dog
  # attr_accessor :name
  def name
    @name
  end
  def name=(name)
    @name = name
  end
end

dog = Dog.new
dog.name = 'Bill'
puts dog.name

# Constructors
class People
  def initialize(name, age)
    @name = name
    @age = age
  end
  def check
    puts "Instância da classe iniciada com os valores:"
    puts "Nome = #{@name}"
    puts "Idade = #{@age}"
  end
end

people = People.new("Ivone", 55)
people.check