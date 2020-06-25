def increment_string(input)
    if input == ""
      return "1"
    else
      cut = input.index(/\d+\Z/)
      if cut.nil?
        return "#{input}1"
      else
        letters = input[0, cut]
        digits = input[cut..input.length]
        return "#{letters}#{digits.succ}"
      end
    end
end