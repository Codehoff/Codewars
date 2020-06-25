def kebabize(str)
    str.gsub(/[0-9]/,"").split(/(?=[A-Z])/).join("-").downcase
end