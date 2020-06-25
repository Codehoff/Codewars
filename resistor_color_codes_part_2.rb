def encode_resistor_colors(ohms_string)
    num = ohms_string.split(" ").first
    
    color_codes = %w(black brown red orange yellow green blue violet gray white)
    
    bands = []
    
    if num.chars.include? "k"
      num = num.gsub("k","")
      num = (num.to_f * 1000).floor
    elsif num.chars.include? "M"
      num.delete("M")
      num = (num.to_f * 1000000).floor
    end
  
  
    bands << color_codes[num.to_s.chars[0].to_i]
    bands << color_codes[num.to_s.chars[1].to_i]
    bands << color_codes[num.to_s.length - 2]
    bands << "gold"
    
    bands.join(" ")
    
  end