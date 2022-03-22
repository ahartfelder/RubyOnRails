class Instrumento
  def item
    self.class.name.downcase
  end
  def escrever
    puts "Escrevendo com #{item}"
  end
  def escolher
    puts "Escolhendo o instrumento"
  end
end

class Teclado < Instrumento
  def escolher
    puts "Escolhendo o #{item}"
  end
end

class Lapis < Instrumento
  def escolher
    puts "Escolhendo o #{item}"
  end
end

class Caneta < Instrumento
  def escolher
    super
    # puts "Escolhendo o #{item}"
  end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

puts 'Lápis:'
lapis.escolher
lapis.escrever
puts 'Caneta:'
caneta.escolher
caneta.escrever
puts 'Teclado:'
teclado.escolher
teclado.escrever
