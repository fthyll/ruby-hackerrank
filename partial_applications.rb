combination = ->(n) do
    # Hitung faktorial
    fact = ->(x) do
        (1..x).reduce(1, :*)
    end

    # Partial application: lambda yang return lambda
    nCr = ->(r) do
        fact.(n) / (fact.(r) * fact.(n - r))
    end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)