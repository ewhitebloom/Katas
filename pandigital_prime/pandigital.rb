def pandigital
  i = 999999999
  primes = []
  while primes.empty?
    prime = true
    (2...i/2).to_a.each do |num|
      if i % num == 0
        prime = false
        break
      end
    end  
    if prime == true && i.to_s.split('').uniq.size == 9
      primes << i
    end
    i -= 1
  end
  primes[0]
end

puts pandigital
