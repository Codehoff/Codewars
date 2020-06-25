def iq_test(numbers)
    odd = []
    even = []
    numbers.split(" ").each_with_index {|x,i| x.to_i.odd? ? odd << i+1 : even << i+1}
    odd.length == 1 ? odd[0] : even[0]
end