def ipsBetween(start, ending)
    start_array = start.split(".")
    end_array = ending.split(".")
    
    diff_array = []
    
    end_array.each_with_index do |num, i|
      diff_array << (num.to_i - start_array[i].to_i)
    end
    
   
   diff = diff_array[0]*256**3 + diff_array[1]*256**2 + diff_array[2]*256**1 + diff_array[3]
    
    
end