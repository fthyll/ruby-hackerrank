def single_quote
    # single quote string here
    'Hello World and others!'
end

def double_quote
    # Double quote string here
    "Hello World and others!"
end

def here_doc
    # Here doc string here
    <<-HERE
Hello World and others!
HERE
end

def __check_output
    puts single_quote
    puts double_quote
    puts here_doc
end

__check_output