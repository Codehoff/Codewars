def  first_non_repeating_letter(s) 
    return "" if s == ""
    
    arr = []
    
    s.split("").each do |c|
    if c.match? /,/
      arr << c
    else
        if (s.count(c.downcase) + s.count(c.upcase)) == 1 
          arr << c.to_s 
        else
          arr << ""
        end 
      end
    end
  
    arr.join.strip[0].nil? ? "" : arr.join.strip[0]
  
    
end