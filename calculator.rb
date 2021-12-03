# Methods
def add(n1, n2) 
    n1 + n2  
end
def sub(n1, n2)  
    n1 - n2  
end
def mul(n1, n2)  
    n1 * n2  
end
def div(n1, n2)  
    n1 / n2  
end
def mod(n1, n2)  
    n1 % n2  
end

# Header
puts "Basic Calculator"
30.times {print "-"}
puts

# Inserting Operands
print "Enter first number: "
num_1 = gets.chomp.to_f
print "Enter second number: "
num_2 = gets.chomp.to_f

# Options
puts "1 - Addiction      | 2 - Subtraction"
puts "3 - Multiplication | 4 - Division"
puts "5 - Modulus"
puts
print "Choose an operation (1-5): "
choice = gets.chomp
puts

# Conditionals and Methods call
if choice == "1"
    operator = "+"
    result = add(num_1, num_2)
elsif choice == "2"
    operator = "-"
    result = sub(num_1, num_2)
elsif choice == "3"
    operator = "*"
    result = mul(num_1, num_2)
elsif choice == "4"
    operator = "/"
    result = div(num_1, num_2)
elsif choice == "5"
    operator = "%"
    result = mod(num_1, num_2)
else
    result = "Invalid Option!"
end

# Answer
if result.instance_of?(Float)
    puts "The result of #{num_1} #{operator} #{num_2} is equal to #{result}."
else
    puts result
end

