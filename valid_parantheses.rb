def valid_parentheses(string)
    arr = string.split("")
    
    50.times do
     close = arr.index(")")
     open = arr.index("(")
     if open != nil && close != nil
      if open < close
        arr.delete_at(close)  
        arr.delete_at(open)    
      end 
     end 
    end 
    
    if arr.index("(") == nil && arr.index(")") == nil
      return true
    else 
      return false
    end    
end