def count_words(string)
  words = Hash.new()
  string.scan(/\w+/).each do |word|
      unique_word = word.downcase
      if words.has_key?(unique_word)
        words[unique_word] += 1
      else
        words[unique_word] = 1
      end
    end
  puts words
end

def palindrome?(string)
        string = string.dup.downcase
        if string.scan(/[\w-]+/).size > 1
        string.gsub!(/[^A-Za-z]/,"") == string.reverse
        else
        string.gsub(/[^A-Za-z]/,"")== string.reverse
        end        
end
