# encoding: ISO-8859-1
# Simulasi: file ini di-save ISO-8859-1, string literal jadi ISO-8859-1 bytes

s1 = "ABC äöüÄÖÜ"
puts "s1 encoding: #{s1.encoding.name}"
puts "s1 bytes (first 8): #{s1.bytes[0..7].inspect}"
puts "s1 size: #{s1.size}, bytesize: #{s1.bytesize}"

s1_orig_bytes = s1.bytes.dup

s1.force_encoding("ISO-8859-1")
puts "\ns1 after force ISO: encoding=#{s1.encoding.name}, bytes=#{s1.bytes[0..7].inspect}"

# Apply transcode with force_encoding('UTF-8')
s3 = s1.dup
s3 = s3.force_encoding('UTF-8')
puts "s3 force UTF-8: bytes=#{s3.bytes[0..7].inspect}"

# Final check
s1.force_encoding('UTF-8')
puts "\ns1 final UTF-8: bytes=#{s1.bytes[0..7].inspect}"
puts "Match? #{s1 == s3}"
puts "s1 valid_encoding? #{s1.valid_encoding?}"
puts "s3 valid_encoding? #{s3.valid_encoding?}"