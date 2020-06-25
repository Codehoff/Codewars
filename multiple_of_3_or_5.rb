def solution(number)
    sum = 0
    (1..number - 1).to_a.map {|num|  sum += num if num % 5 == 0 || num % 3 == 0  }
    sum
end