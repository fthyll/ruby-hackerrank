# encoding: UTF-8
s1 = "ABC äöüÄÖÜ"
puts "Before: encoding=#{s1.encoding.name}, bytes[0..3]=#{s1.bytes[0..3].inspect}"

s1.force_encoding("ISO-8859-1")
puts "After ISO: encoding=#{s1.encoding.name}, bytes[0..3]=#{s1.bytes[0..3].inspect}"

s3 = s1.dup
s3 = s3.force_encoding("UTF-8")
puts "After force UTF: encoding=#{s3.encoding.name}, bytes[0..3]=#{s3.bytes[0..3].inspect}"

s1.force_encoding("UTF-8")
puts "s1 back UTF: encoding=#{s1.encoding.name}, bytes[0..3]=#{s1.bytes[0..3].inspect}"

puts "Match: #{s1 == s3}"
puts "Encoding equal: #{s1.encoding == s3.encoding}"