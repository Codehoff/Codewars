def josephus(items,k)
    res = []  
    circle = items   
    until circle.length == 0
      circle.rotate!(k-1)
      res << circle[0]
      circle.delete_at(0)
    end
    res
end