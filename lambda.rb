# Similar a blocks, mas podem ser salvas em variáveis.
lambda_1 = lambda { puts "my first lambda"}
lambda_1.call

# = ->
lambda_2 = -> { puts "my second lambda" }
lambda_2.call

lambda_3 = -> (names) { names.each { |name| puts name } }
names = ["Andreas", "Mônika", "Carlos"]
lambda_3.call(names)

lambda_4 = lambda do |numbers|
  index = 0
  puts 'Número atual + Próximo número'
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]

lambda_4.call(numbers)

numbers = [5, 6, 7, 8]

lambda_4.call(numbers)

def lamb(lamb_1, lamb_2)
  lamb_1.call
  lamb_2.call
end

lamb_1 = -> { puts 'Lamb_1' }
lamb_2 = lambda { puts 'Lamb_2' }

lamb(lamb_1, lamb_2)

# Lambda x Proc https://imasters.com.br/back-end/entendendo-blocks-procs-e-lambdas-no-ruby