require "mathn"
require "isprime"

class Integer
  def circular_prime?
    n = self.abs()
    return true if n < 10
    circular_n = circulate(n.to_s)
    until circular_n.to_i == n do
      return false unless circular_n.to_i.prime?
      circular_n = circulate(circular_n)
    end
    true
  end
end

def circulate(n)
  "#{n[-1,1]}#{n[0..-2]}"
end

sum = 0

primes = Prime.new
primes.each do |prime|
  break if prime >= 1_000_000
  sum += 1 if prime.circular_prime?
end

puts sum
