def generateHashtag(str)
    hashtag = str.split(" ").map{|word| word = word.capitalize }.unshift("#").join
    
    if str.strip == ""
      false
    else
      hashtag.length <=140 ? hashtag : false
    end
end