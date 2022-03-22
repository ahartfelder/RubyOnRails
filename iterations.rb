# for
fruits = ["apple", "grape", "strawberry"]
for fruit in fruits
  puts fruit
end

# while
x = 1
while x < 10
  print "#{x} "
  x += 1
end
puts ""

# until
x = 1
until x == 10
  print "#{x} "
  x += 1
end
puts ""

# loop (do-while)
x = 1
loop do
  break if x == 10
  print "#{x} "
  x += 1
end
puts

# ITERATIONS WITH COLLECTIONS

# each - array
names = ['Carlos', 'Lidia', 'Paulo']
name = 'Andreas'

names.each do |name|
  print "#{name} "
end
puts
puts name

# each - hash
states = {"São Paulo" => "SP", "Curitiba" => "PR"}
states.each do |key, value|
  puts "#{key}-#{value}"
end

# map
arr = [1,2,3,4]
new_arr = arr.map do |a|
  a * 2
end
print arr
puts
print new_arr
puts

arr = [1,2,3,4]
arr.map! do |a|
  a * 4
end
print arr
puts

# select - array
arr = [1,2,3,4,5,6]
sel = arr.select do |a|
  a >= 4
end
print sel
puts

# select - hash
hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'três'}
sel_key = hash.select do |key, value|
  key > 1
end
puts sel_key