require_relative 'produto'
require_relative 'mercado'

produto = Produto.new
produto.name = "Arroz"
produto.price = 5

mercado = Mercado.new(produto.name, produto.price).comprar