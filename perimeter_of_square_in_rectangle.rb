def perimeter(n)
    squares = [1,1]
    until squares.length == n + 1
      squares << (squares[-1] + squares[-2])
    end
    
    squares.inject(0) { |sum, squares| sum += (4 * squares) }
end