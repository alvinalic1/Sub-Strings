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
  
  # char_array = string.split("")
  # start = 0
  # last = string.length
  # result = Hash.new
  # char_array.each do |char|
  # current_word = char_array[start..last].join("")
  # start +=1
  
  # if(dictionary.include?(current_word))
  #   if(result.key?(current_word))
  #     result[current_word] += 1
  #   else
  #   result[current_word] = 1
  #   end
  # end
  
  # end

  # dictionary.include?(string)
  # result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)