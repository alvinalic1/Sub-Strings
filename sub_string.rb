dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  char_array = string.split("")
  start = 0
  last = string.length
  result = Hash.new
  char_array.each do |char|
  current_word = char_array[start..last].join("")
  start +=1
  
  if(dictionary.include?(current_word))
    if(result.key?(current_word))
      result[current_word] += 1
    else
    result[current_word] = 1
    end
  end
  
  end

  dictionary.include?(string)
  result
end

puts substrings("below", dictionary)