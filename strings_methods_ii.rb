# Helper method: append strike tags around the string
def strike(str)
    "<strike>#{str}</strike>"
end

# Main method: replace words with strike-tagged version
def mask_article(text, words)
    words.each do |word|
        text = text.gsub(word, strike(word))
    end
    text
end

def __check_output
    unless Object.respond_to?(:strike, true)
        puts 'You must define the helper method!'
        exit(0)
    end
    unless Object.respond_to?(:mask_article, true)
        puts 'You must define appropriate method!'
        exit(0)
    end

    str_1 = 'Decisively advantages nor expression unpleasing she led met'
    str_2 = 'Joy fond many ham high seen this.'
    str_3 = 'Introduced far law gay considered entreaties difficulty.'

    ans_1 = 'Decisively advantages nor expression <strike>unpleasing</strike> she led met'
    ans_2 = 'Joy <strike>fond</strike> many <strike>ham</strike> high seen this.'
    ans_3 = '<strike>Introduced</strike> far law <strike>gay</strike> considered entreaties difficulty.'

    _ans_1 = mask_article(str_1, ['unpleasing'])
    _ans_2 = mask_article(str_2, ['fond', 'ham'])
    _ans_3 = mask_article(str_3, ['Introduced', 'gay'])

    unless [_ans_1, _ans_2, _ans_3] == [ans_1, ans_2, ans_3]
        puts 'Wrong answer!'
        exit(0)
    end
end

__check_output
puts 'Great! Your helper method works.'
puts 'Hooray! You did it. Now, move on to further challenges!'