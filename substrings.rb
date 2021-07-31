dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, words)
    result = {}
    text = text.split(" ")
    text.map! {|textword| textword.downcase}
    text.each {|textword| textword.gsub!(/[^0-9A-Za-z]/, '')}

    text = text.join(" ")

    words.each do |word|
        puts text.scan(/(?=#{word})/).count
    end 
end

substrings("Howdy partner, sit down! How's it going?",dictionary)