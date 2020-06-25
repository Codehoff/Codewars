def towerBuilder(n_floors)
    n = 1
    s = 1
    x = 0
    max_width = 2 * (n_floors) - 1
    res = []
    until n == n_floors + 1
      res << " " * ((max_width - s)/2) + "*" + "**" * x + " " * ((max_width - s)/2)
      n += 1
      s += 2
      x += 1
    end  
    res
  end