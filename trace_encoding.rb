# encoding: UTF-8
s1 = 'ABC äöüÄÖÜ'
s1_orig = s1.dup
puts "Original encoding: #{s1.encoding.name}"
puts "Original content: #{s1.inspect}"
puts "Original bytes: #{s1.bytes.inspect}"

s1.force_encoding('ISO-8859-1')
puts "\nAfter force_encoding ISO-8859-1:"
puts "  encoding: #{s1.encoding.name}"
puts "  bytes: #{s1.bytes.inspect}"
puts "  bytesize: #{s1.bytesize}, size: #{s1.size}"

s1_encoded = s1.encode('UTF-8')
puts "\nAfter encode UTF-8:"
puts "  encoding: #{s1_encoded.encoding.name}"
puts "  bytes: #{s1_encoded.bytes.inspect}"
puts "  content: #{s1_encoded.inspect}"

s1_orig.force_encoding('UTF-8')
puts "\nOriginal force UTF-8:"
puts "  content: #{s1_orig.inspect}"
puts "  bytes: #{s1_orig.bytes.inspect}"

puts "\nMatch? #{s1_orig == s1_encoded}"