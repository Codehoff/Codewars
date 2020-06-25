def format_duration(seconds)
    timespans = [["year", 31536000],["day", 86400],["hour", 3600],["minute", 60],["second", 1]]
    res = []
    if seconds == 0
      return "now"
    else 
      timespans.each do |timespan|
        amount = (seconds)/(timespan[1])
        if amount >= 1
          amount == 1 ? res << "#{amount} #{timespan[0]}" : res << "#{amount} #{timespan[0]}s"    
          seconds -= amount * timespan[1]
        end
      end
    end
    
    if res.length >= 3
      res[0..-2].join(", ") + " and " + res[-1]
    elsif res.length == 2
      res.join(" and ")
    else
      res.join
    end
  
  end