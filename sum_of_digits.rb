def digital_root(n)
    numbers_array = n.to_s.split("")
    sum = 0
  
    while numbers_array.length > 1
      numbers_array.each do |num|
        sum += num.to_i
      end
      numbers_array = sum.to_s.split("")
      sum = 0
    end 
    
    numbers_array.join.to_i
end