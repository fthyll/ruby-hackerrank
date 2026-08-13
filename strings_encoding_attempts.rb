# Masukkan salah satu versi di bawah ini ke HackerRank, lalu submit.

# === VERSI 1: force_encoding (paling umum benar) ===
# def transcode(string)
#     string.force_encoding('UTF-8')
# end

# === VERSI 2: encode dengan options ===
# def transcode(string)
#     string.encode('UTF-8', invalid: :replace, undef: :replace)
# end

# === VERSI 3: encode sederhana ===
# def transcode(string)
#     string.encode('UTF-8')
# end

# === VERSI 4: force_encoding + dup ===
# def transcode(string)
#     string.dup.force_encoding('UTF-8')
# end

# === VERSI 5: rescue encode kalau error ===
# def transcode(string)
#     string.encode('UTF-8')
# rescue Encoding::UndefinedConversionError
#     string.force_encoding('UTF-8')
# end

# Test code di bawah ini sama persis dengan HackerRank
# Encoding: UTF-8

def __check_output
    unless Object.respond_to?(:transcode, true)
        puts 'Please define the appropriate method.'
        exit(0)
    end

    s1, s2 = 'ABC äöüÄÖÜ', 'display on all browsers as Δ, Й, ק, م, ๗'
    s1.force_encoding('ISO-8859-1')
    s2.force_encoding('ISO-8859-1')
    s3 = s1.dup
    s4 = s2.dup

    s3 = transcode(s3)
    s4 = transcode(s4)

    if s3.nil? or s4.nil?
        puts "The function `transcode` must return a string object"
        exit(0)
    end

    ans = [s3, s4].map { |x| x.encoding == Encoding::UTF_8 }

    unless ans.all?
        puts 'Oops! Your output encoding seems to be incorrect. Recheck please?'
        exit(0)
    end

    s1.force_encoding('UTF-8')
    s2.force_encoding('UTF-8')
    ans = (s1 == s3) and (s2 == s4)

    unless ans
        puts 'Oops! Your output strings do not match.'
        exit(0)
    end
end

# Uncomment salah satu versi di atas, lalu test:

# VERSI 1
def transcode(string)
    string.force_encoding('UTF-8')
end

__check_output
puts 'You have successfully completed the encoding challenge.'