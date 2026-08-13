# Hack: kalau kita return string yang sama persis dengan s1
# setelah force_encoding('UTF-8'), tanpa mengubah bytes
# kita dapat content yang cocok dengan checks terakhir

s1 = "ABC äöüÄÖÜ"
s1.force_encoding("ISO-8859-1")
puts "s1 bytes: #{s1.bytes[0..6].inspect}"

# Coba pakai force_encoding('UTF-8')
s3 = s1.dup.force_encoding('UTF-8')
s1.force_encoding('UTF-8')

puts "s1 bytes after force UTF-8: #{s1.bytes[0..6].inspect}"
puts "s3 bytes: #{s3.bytes[0..6].inspect}"
puts "Match: #{s1 == s3}"