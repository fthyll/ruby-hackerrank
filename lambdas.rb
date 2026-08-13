# Write a lambda which takes an integer and square it
square = ->(x) { x * x }

# Write a lambda which takes an integer and increment it by 1
plus_one = ->(x) { x + 1 }

# Write a lambda which takes an integer and multiply it by 2
into_2 = ->(x) { x * 2 }

# Write a lambda which takes two integers and adds them
adder = ->(a, b) { a + b }

# Write a lambda which takes a hash and returns an array of hash values
values_only = ->(hash) { hash.values }

input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)