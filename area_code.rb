book = {
  "Sao Paulo" => "11",
  "Rio de Janeiro" => "21",
  "Belo Horizonte" => "31",
  "Curitiba" => "41",
  "Florianopolis" => "47",
  "Porto Alegre" => "51",
  "Brasilia" => "61",
  "Salvador" => "71",
  "Recife" => "81",
  "Belem" => "91"
}

def print_list(list)
  list.keys
end

puts "Area Code Search Dictionary"
30.times { print "-" }
puts

loop do
  print "Do you want to lookup area code based on city name? (Y/N) "
  prompt = gets.chomp.downcase
  if prompt != "y"
    puts "Program Terminated."
  end
  puts print_list(book)
  print "Choose a city: "
  prompt = gets.chomp.downcase
  code = ""
  city = ""
  book.each do |key,value|
    if key.downcase == prompt
      city = key
      code = value
    end
  end
  if code.empty?
    puts "City not found. Try a valid city." 
  else
    puts "The area code from #{city} is #{code}."
    break
  end
end
