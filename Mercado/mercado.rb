class Mercado
  def initialize(product, price)
    @product = product
    @price = price
  end
  def comprar
    puts "Você comprou o produto #{@product} no valor de #{@price}"
  end
end