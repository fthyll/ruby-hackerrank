def sum_terms(n)
    1.upto(n).reduce(0) { |m, x| m + fn(x) }
end

def fn(x)
    x*x + 1
end

# Cara kerja: 1.upto(n) menghasilkan range integer
# .reduce(0) accumulator mulai dari 0
# block menjumlahkan fn(x) = x²+1

# Test cases
[0, 3, 10, 25, 1890].each do |n|
    result = sum_terms(n)
    expected = (1..n).sum { |x| x*x + 1 }
    status = result == expected ? "✓" : "✗"
    puts "#{status} sum_terms(#{n}) = #{result} (expected: #{expected})"
end