puts Time.class
time = Time.now
puts time
puts "#{time.day}/#{time.month}/#{time.year} - #{time.hour} horas"
puts time.strftime('%d/%m/%y')