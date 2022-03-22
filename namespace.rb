module ReverseWorld
  def self.imprimir text
    print text.reverse.to_s
  end
  class Message
    def call text
      print text
      print "\s--Imprimir--"
    end
  end
end
module NormalWorld
  def self.imprimir text
    print text.to_s
  end
end

ReverseWorld::imprimir('O resultado é')
NormalWorld::imprimir 'O resultado é'
puts

imprimir = ReverseWorld::Message.new
imprimir.call 'O resultado é'
