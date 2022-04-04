# Regular Expressions
puts /a/.class
puts %r{a}.class
puts Regexp.new('a').class

puts /by/ =~ 'ruby' # position = 2
puts /by/ =~ 'ruuuuby'

# Match -> first match is returned
phrase = "Hello, how are you?"
match_data = /how/.match(phrase)
puts match_data
puts match_data.pre_match
puts match_data.post_match

# Metacharacters - () [] {} . ? + *
# Use escape \ to avoid metacharacter
puts /\?/.match('Tudo bem?') 
puts /d\+/.match('d+')

# Character Classes
puts /[t]exto/.match('texto começando com t')
puts /[1-5]/.match('654')
puts /[1-3]/.match('654')
puts /[A-Z][a-z]/.match('Oi')
puts /A\d/.match('A4')

# Repetition {} - {X,} -> min of X and on
puts /\d{2}-\d{8,}/.match('11-987654321')