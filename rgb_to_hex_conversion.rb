def rgb(r, g, b)
    "#{conversion(r)}#{conversion(g)}#{conversion(b)}"
  end
  
  def conversion(n)
    if n > 255
      n = 255
    end
    
    if n < 0
      n = 0
    end
    remainder1 = n.remainder(16)
    division1 = n/16
    remainder2 = division1.remainder(16)
    hex1 = remainder1.to_s.gsub("10","A").gsub("11","B").gsub("12","C").gsub("13","D").gsub("14","E").gsub("15","F")
    hex2 = remainder2.to_s.gsub("10","A").gsub("11","B").gsub("12","C").gsub("13","D").gsub("14","E").gsub("15","F")
    
    return "#{hex2}#{hex1}"
end