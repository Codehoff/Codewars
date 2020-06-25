def find_outlier(integers)
    even_array = integers.select{|num| num.even?}
    odd_array = integers.select{|num| num.odd?}
    even_array.length > odd_array.length ? odd_array[0] : even_array[0]
end