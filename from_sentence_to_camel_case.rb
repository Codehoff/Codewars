def to_camelcase(s,n)
    res = s.split(" ").each_with_index.map do |word, i|
      case n
      when 1
        i == 0 ? word.downcase : word.capitalize
      when 2 
        i == s.split(" ").length - 1 ? word.downcase : word[0..-2].downcase + word[-1].upcase
      when 3
        if i == 0
          word[0..-2].downcase + word[-1].upcase
        elsif i == s.split(" ").length - 1
          word[0].upcase + word[1..-1].downcase
        else 
          word[0].upcase + word[1..-2].downcase + word[-1].upcase
        end
      end  
    end
    res.join
  end