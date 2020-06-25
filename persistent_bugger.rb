def persistence(n)
    times = 0
    
    n_arr = n.to_s.split("")
    
    until n_arr.length == 1
      n_arr = n_arr.map(&:to_i).inject(:*).to_s.split("")
      times += 1
    end
    
    times
    
end