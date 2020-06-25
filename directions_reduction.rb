def dirReduc(arr)
    i = 0
    15.times do
      arr.each_with_index.map do |ele, i|
        if arr[i] == "NORTH" && arr[i + 1] == "SOUTH"
          arr.delete_at(i)
          arr.delete_at(i)
        elsif arr[i] == "SOUTH" && arr[i + 1] == "NORTH"
          arr.delete_at(i)
          arr.delete_at(i)
        elsif arr[i] == "WEST" && arr[i + 1] == "EAST"
          arr.delete_at(i)
          arr.delete_at(i)
        elsif arr[i] == "EAST" && arr[i + 1] == "WEST"
          arr.delete_at(i)
          arr.delete_at(i)
        end
      end
    end
    arr
end