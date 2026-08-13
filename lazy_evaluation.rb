# Enter your code here. Read input from STDIN. Print output to STDOUT
require 'prime'

n = gets.to_i

# Definisi: palindrome = string == reverse string
is_palindrome = ->(x) { x.to_s == x.to_s.reverse }

# Lazy enumeration: ambil infinite palindromic primes, first n
palindromic_primes = 1.upto(Float::INFINITY).lazy
    .select { |x| Prime.prime?(x) }
    .select { |x| is_palindrome.call(x) }
    .first(n)

puts palindromic_primes.inspect