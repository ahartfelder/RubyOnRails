# works only with TERMINAL
# OUTPUT

# p = print with quotes and add new line
p "p: Hello World!"
p "p: Hey Earth!"

# print = simple print
print "print: Hello World!"
print "print: Hey Earth!\n"

#puts = print and add new line
puts "puts: Hello World!"
puts "puts: Hey Earth!"

# INPUT

# gets
print "gets - Press ENTER "
name = gets # -> adds "\n"
p name

# gets.chomp
print "gets.chomp - Press ENTER "
name = gets.chomp # -> adds ""
p name
