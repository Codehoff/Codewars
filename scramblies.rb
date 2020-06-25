def scramble(s1,s2)
    res = s2.split("")
    
    true_false_arr = []
    
    res.each do |char|
      if s2.count(char) <= s1.count(char)
        true_false_arr << "true"
      else
        true_false_arr << "false"
      end
    end
    
    if true_false_arr.include? "false" 
      return false
    else
      return true
    end
    
end