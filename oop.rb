# Object-Oriented Programming

# Pilares: Abstração, Encapsulamento, Herança e Polimorfismo.

# Classe -> é a estrutura do objeto.
# Objeto -> é um item criado através de uma classe.

class Computer
  def turn_on
    'turn on the computer.'
  end
  def shutdown
    'shutdown the computer.'
  end
end

computer = Computer.new
puts computer.shutdown
puts computer.turn_on
