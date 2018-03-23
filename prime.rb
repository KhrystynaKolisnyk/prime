require 'prime'

def max_length(primes, limit)
  max = 1
  sum = primes.first
  primes.count.times do |i|
    (primes.count - i).times do |j|
      next if j < max
      part = primes[i..(i + j)]
      break if part.sum > limit
      if primes.include?(part.sum)
        sum = part.sum
        max = part.count
      end
    end
  end
  "Number #{sum} is the longest(#{max}) sum of consecutive primes"
end

def max_prime(num)
  return nil if num < 3
  primes = Prime.take_while { |p| p < num }
  max_length(primes, num)
end
