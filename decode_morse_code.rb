def decodeMorse(morseCode)
    words_morse = morseCode.split(/  /)
    words = []
    words_morse.each do |word_morse|
      words << word_morse.split
    end
    words_real = []
    words.each do |part|  
      array = []
      part.each do |smaller_part|
        array << MORSE_CODE[smaller_part]
      end
      words_real << array.join
    end
    words_real.join(" ").strip
end