# require -> carrega arquivos Ruby do diretório da execução.
# require './oop_test.rb'
# require_relative -> carregar arquivos do diretório do programa.
require_relative 'oop_test' # importante manter a ordem de chamada para não ter erros
require_relative 'oop_test_2'

animal = Animal.new
animal.pular
cachorro = Cachorro.new
cachorro.latir
gato = Gato.new
gato.miar