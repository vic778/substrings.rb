def substrings(string, array)
    final_hash = Hash.new
    new_string = string.gsub!(/[,@%"']/, '').downcase
    words_array = new_string.split
    
    array.map {|word|
        if words_array.include?(word)
            value = words_array.count(word)
            final_hash[word] = value
            p final_hash
        end
        }
    end
    directory = ["below", "down", "go", "going",
     "horn","how","howdy", "it","i","low", "part","partner", "sit"]
     substrings("Howdy partner, sit down! how's it going?", directory)