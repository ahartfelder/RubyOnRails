class Carro
  def ligar
    "#{self.class} Ligou"
  end
  def acelerar
    "#{self.class} Acelerou"
  end
  def freiar
    "#{self.class} Freiou"
  end
  def desligar
    info_desligar
  end
  private
  def info_desligar
    "#{self.class} Desligou "
  end
end

class Bike < Carro
  def empinar
    "#{self.class} Empinou"
  end
  def saltou
    "#{self.class} Saltou"
  end
end

carro = Carro.new
bike = Bike.new

puts carro.ligar
puts bike.ligar
puts bike.empinar
puts bike.desligar
puts carro.desligar
