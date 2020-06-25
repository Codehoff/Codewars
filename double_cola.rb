def who_is_next(names, r)
    namess = names.length
    multiplications = 1
    while r > namess 
     r -= namess     
     multiplications *= 2     
     namess *= 2 
     end  
     names[(((r-1)/multiplications)%namess)]
 end