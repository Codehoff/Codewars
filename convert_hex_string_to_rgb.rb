def hex_to_rgb(str)

    red = str.split("")[1 , 2]
    green1 = str.split("")[ 3 ]
    green2 = str.split("")[ 4 ]
    blue = str.split("")[5 , 6]
  
    green_array = []
    green_array[0] = green1
    green_array[1] = green2
    
    red_convert = conversion([red[0]+red[1]])
    green_convert = conversion([green_array[0]+green_array[1]])
    blue_convert = conversion([blue[0]+blue[1]])
    
    return {r: red_convert, g: green_convert, b: blue_convert}
    
  end
  
  def conversion(color)
    color.pack("H*").unpack1("C*")
end