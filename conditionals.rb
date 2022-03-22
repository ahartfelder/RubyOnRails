# if expression
day = "Sunday"
if day == "Sunday"
  lunch = "special"
end
# lunch = 'special' if day == "Sunday"
# if day == "Sunday" then lunch = "special" end
puts "if: Lunch is #{lunch} today!"

# if-else expression
day = "Saturday"
# if day == "Sunday"
#   lunch = "special"
# else
#   lunch = "normal"
# end
day == "Sunday" ? lunch = "special" : lunch = "normal"
puts "if-else: Lunch is #{lunch} today!"

# if-elsif-else expression
day = "Holiday"
if day == "Sunday"
  lunch = "special"
elsif day == "Holiday"
  lunch = "later"
else
  lunch = "normal"
end
puts "if-elsif-else: Lunch is #{lunch} today!"

# unless expression
num = 1
unless num == 0 # or if not
  num = 2
end
# alternative -> num = 2 unless num == 0
puts num

# case expression - then is optional
month = 9
case month
when 1..3 then
  puts "Primeiro Trimestre"
when 4..6 then
  puts "Segundo Trimestre"
when 7..9 then
  puts "Terceiro Trimestre"
when 10..12 then
  puts "Quarto Trimestre"
else
  puts "Mês inválido"
end
