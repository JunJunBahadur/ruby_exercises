dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, words)
    result = Hash.new(0)
    words.each do |word|
        word_count = text.downcase.scan(/(?=#{word})/).count
        result[word] = word_count if word_count > 0
    end 
    puts result
end

substrings("Howdy partner, sit down! How's it going?",dictionary)