def anagrams(word, words)
    res = []
    
    words.each do |w|
      w.chars.sort == word.chars.sort ? res << w : "nothing"
    end
    
    res
    
end