# Array
estados = []
estados.push("ES")
estados.push "RJ", "PR", "RS", "RJ" 
estados.insert 0, 'AC', 'SP', 'BA'
estados[4] = "CE"

print estados
puts
print estados[2..4]
puts
puts estados.count
puts estados.empty?
puts estados.any?
puts estados.include?"SP"
puts estados.include?"MG"
estados.delete_at(2)
estados.shift # delete first
estados.pop # delete last
print estados
puts "\n\n"

# Hash
hash = {} # Hash.new
hash = { acre: 'AC', goias: 'GO'}
hash[:bahia] = 'BA'

print hash
puts
print hash.keys
print hash.values
hash.delete(:acre)
puts hash
puts hash.size
