def domain_name(url)
    url.gsub("http://","").gsub("https://","").gsub("www.","").split(".").first
end