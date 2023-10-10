dictionary =    ["below","down","go","going","horn","how","howdy","it","i","low","own",
                "part","partner","sit"]

def substrings(string, dictionary)
    string = string.split(" ")
    result_list = Hash.new(0)
    string.each do |word|
        word = word.downcase
        dictionary.each do |dict_word|
            if word.include?(dict_word)
                result_list[dict_word] += 1
            end
        end
    end
    p result_list
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
