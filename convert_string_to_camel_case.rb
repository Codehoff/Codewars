def to_camel_case(str)
    str.split(/[-_]/).each_with_index.map {|c,i| i == 0 ? c : c[0].upcase + c[1..-1]}.join("")
  end