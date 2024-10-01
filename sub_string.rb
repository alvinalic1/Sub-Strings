dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = Hash.new
  string_array = string.split" "

  dictionary.each do |dic_word|
    string_array.each do |string_word|
      string_word = string_word.downcase
      if string_word[dic_word] != nil
        if result.key?(dic_word)
          result[dic_word] += 1
        else
          result[dic_word] = 1
        end
      end
      end
  end
  result
  
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)