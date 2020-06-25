def unique_in_order(iterable)
    return [] if iterable.length == 0
    return iterable.split("") if iterable.length == 1 
    res = []
    iterable.split("").each_with_index {|c, i| res << c if iterable[i + 1] != iterable[i] } if iterable.is_a? String
    iterable.each_with_index {|c, i| res << c if iterable[i + 1] != iterable[i] } if iterable.is_a? Array
    res
end