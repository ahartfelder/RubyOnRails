# Integer
int = 10
puts int.class
puts int

# Float
float = 10.0
puts float.class
puts float

# Boolean
bool = true
puts bool.class
puts bool
bool = false
puts bool.class
puts bool

# String
str = "Hello World"
puts str.class
puts str

# Array
arr_1 = []
puts arr_1.class
arr_2 = ["pos1", "pos2", "pos3"]
p arr_2

# Hash
hash_1 = {}
puts hash_1.class
hash_2 = {key_1: "value_1", key_2: "value_2"}
puts hash_2

# Symbol -> Always points to the same memory address
symbol_1 = :example
puts symbol_1.class
puts symbol_1
symbol_2 = :example
puts symbol_1.object_id
puts symbol_2.object_id
