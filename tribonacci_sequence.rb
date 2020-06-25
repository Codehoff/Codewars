def tribonacci(signature,n)
    while signature.length < n
      signature << signature[-1] + signature[-2] + signature[-3]
    end
    
    signature.first(n)
end