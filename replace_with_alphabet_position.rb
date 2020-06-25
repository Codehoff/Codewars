def alphabet_position(text)
    arr = ("a".."z").to_a
    text.downcase.gsub(/[^a-zA-Z]/, "").split("").map { |c| c = (arr.index(c)).to_i + 1}.join(" ")
end