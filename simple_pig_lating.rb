def pig_it text
    words = text.scan(/[a-zA-Z]*/)
    punctuation_marks = text.match(/[!?]/)
    pig_latin = words.map do |word|
      if word == ""
        word = " "
      else
        word = "#{word[1..-1]}#{word[0]}ay"
      end
    end
    string = "#{pig_latin.join.strip} #{punctuation_marks}"
    string.strip
end