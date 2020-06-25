def snail(array)
    if array == []
      return array
    else
      array.shift + snail(array.transpose.reverse)      
    end
end