# HTTP
require 'net/http'
# get
example = Net::HTTP.get('www.google.com', '/')

File.open('google.html', 'w') do |line|
  line.puts(example)
end
