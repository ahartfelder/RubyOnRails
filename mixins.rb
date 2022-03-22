module ImpressaoDecorada
  def imprimir text
    decoração = '#' * 40
    puts decoração
    puts text
    puts decoração
  end
end

module Pernas
  include ImpressaoDecorada
  def chute_frontal
    imprimir 'Chute Frontal'
  end
  def chute_lateral
    imprimir 'Chute Lateral'
  end
end

module Braços
  include ImpressaoDecorada
  def jab_dir
    imprimir 'Jab de direita'
  end
  def jab_esq
    imprimir 'Jab de esquerda'
  end
  def gancho
    imprimir 'Gancho'
  end
end

class LutadorX
  include Pernas
  include Braços
end

class LutadorY
include Pernas
end

lutadorx = LutadorX.new
lutadorx.chute_frontal
lutadorx.jab_dir
lutadorx.gancho

lutadory = LutadorY.new
lutadory.chute_lateral
lutadory.chute_frontal
