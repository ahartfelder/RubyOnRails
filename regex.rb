# Regular Expressions
puts /a/.class
puts %r{a}.class
puts Regexp.new('a').class

puts /by/ =~ 'ruby' # position = 2
puts /by/ =~ 'ruuuuby'

phrase = "Hello, how are you?"
match_data = /how/.match(phrase)
puts match_data
puts match_data.pre_match
puts match_data.post_match


