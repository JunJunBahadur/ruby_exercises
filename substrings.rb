dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, words)
    result = {}
    text = text.split(" ")
    text.map! {|textword| textword.downcase}
    text.each {|textword| textword.gsub!(/[^0-9A-Za-z]/, '')}

    text = text.join(" ")

    words.each do |word|
        word_count = text.scan(/(?=#{word})/).count
        if word_count > 0
            result[word] = word_count
        end
    end 
    puts result
end

substrings("Howdy partner, sit down! How's it going?",dictionary)