# Simulasi HackerRank dengan file ISO-8859-1
# String literal "ABC äöüÄÖÜ" di file ISO-8859-1 → bytes ISO-8859-1

s1 = "ABC äöüÄÖÜ".force_encoding("ISO-8859-1")
puts "s1 bytes (ISO-8859-1 source): #{s1.bytes[0..6].inspect}"
puts "s1 encoding: #{s1.encoding.name}"

# Apply transcode
s3 = s1.dup
s3 = s3.encode('UTF-8')

puts "\ns3 after encode('UTF-8'):"
puts "  encoding: #{s3.encoding.name}"
puts "  bytes: #{s3.bytes[0..8].inspect}"

# HackerRank comparison
s1.force_encoding('UTF-8')
puts "\ns1 force UTF-8:"
puts "  bytes: #{s1.bytes[0..8].inspect}"
puts "  encoding: #{s1.encoding.name}"

puts "\nMatch (s1 == s3)? #{s1 == s3}"