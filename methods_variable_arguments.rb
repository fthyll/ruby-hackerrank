# Your code here
def full_name(first, *middle, last)
    [first, *middle, last].join(' ')
end

# Versi lebih fleksibel (sesuai soal: first, variable middle, last)
# Tapi soal asli sepertinya expects first, *rest dengan first & last
# Mari pakai versi yang sesuai test case

unless Object.respond_to?(:full_name, true)
    puts 'You must define the correct method!'
    exit(0)
end

a1 = full_name('Fizz', 'Buzz') == 'Fizz Buzz'
a2 = full_name('Senorita', 'Senora', 'Sa.') == 'Senorita Senora Sa.'
a3 = full_name('Vishnu') rescue true
a4 = full_name('some', 'big', 'random', 'name') == 'some big random name'

unless [a1, a2, a3, a4].all?
    puts 'Whoops! Are you sure everything is all right?'
    exit(0)
end

puts 'You have successfully completed the challenge!'