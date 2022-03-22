class Animal
  def animal
    animal = self.class.name
  end
  def pular
    puts "O #{animal} pulou"
  end
  def dormir
    puts "O #{animal} dormiu"
  end
end

class Gato < Animal
  def miar
    puts "O #{animal} miou"
  end
end

# cachorro = Cachorro.new
# cachorro.pular
# cachorro.dormir
# cachorro.latir

# gato = Gato.new
# gato.pular
# gato.dormir
# gato.miar
