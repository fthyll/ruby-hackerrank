# Saya butuh template lengkap. Ini tebakan:
# Template biasanya:
#
# def factorial
#     # _______  (yield dengan parameter)
# end
#
# n = gets.to_i
# factorial do |num|
#     # ______  (isi block)
# end

# Tebakan 1: factorial ngebahas iterate dari 1 ke n
def factorial
    (1..10).each { |i| yield i }
end

# Atau mungkin yield di dalam loop
def factorial2
    result = 1
    [1, 2, 3, 4, 5].each do |i|
        result *= i
        yield result
    end
end

# Karena template kamu kurang jelas, mohon paste full code-nya