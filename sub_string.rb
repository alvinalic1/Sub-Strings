dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  char_array = string.split("")
  start = 0
  last = string.length
  puts char_array.to_s
  char_array.each do |char|
  current_word = char_array[start..last]
  puts current_word
  start +=1
  puts "-----------------------"
    
  end
  puts last
  puts char_array
  dictionary.include?(string)
end

puts substrings("below", dictionary)