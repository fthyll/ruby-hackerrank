# Versi alternatif jika versi 1 gagal
# Enter your code here.
def transcode(string)
    string.encode('UTF-8', invalid: :replace, undef: :replace)
end