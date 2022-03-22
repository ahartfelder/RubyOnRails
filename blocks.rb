3.times { puts "Execute the block" }

sum = 0
numbers = [5, 10, 5]
numbers.each { |num| sum += num }
puts sum

foo = {2 => 3, 4 => 5}
foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '...'
end

# yield -> call a single block
def try
  if block_given? # evaluates if there's a block
    yield
  else
    puts "no block"
  end
end

try
try { puts "hello" }
try do puts "hello" end

# & -> Calls a block from a parameter
def foo(name, &block)
  @name = name
  block.call
  puts block.class
end

foo("Andreas") { puts "Hello, #{@name}"}

def bar(numbers, &block)
  if block_given?
    numbers.each do |k, v|
      block.call(k, v)
    end
  end
end

numbers = {2 => 2, 3 => 3, 4 => 4}

bar(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}" 
  puts "#{key} + #{value} = #{key + value}"
  puts "..."
end
