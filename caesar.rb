require 'pry-byebug'

def letter?(char)
    true if char =~ /[A-Za-z]/
end

def upper?(char)
    true if char =~ /[A-Z]/
end

def lower?(char)
    true if char =~ /[a-z]/
end

def caesar_cipher(text, shift_value)
    text_array = text.split("")

    text_array.map! do |char|
        ord_value = char.ord+shift_value
        if letter?(char)
            ord_value -= 26 if upper?(char) && ord_value > "Z".ord
            ord_value -= 26 if lower?(char) && ord_value > "z".ord
            ord_value.chr
        else
            char
        end
    end

    text_array.join("")
end

puts caesar_cipher("What a string!", 5)