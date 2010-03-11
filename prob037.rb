require "mathn"
require "isprime"

class Integer
  def truncatable_prime?
    n = self.abs
    return false unless n.to_s[0].to_i.prime? and n.to_s[-1].to_i.prime?
    return false if n < 10

    n = n.truncate while n.prime? and n > 10
    return false unless n.prime?

    n = self.abs
    n = n.truncate(:right) while n.prime? and n > 10
    return false unless n.prime?

    true
  end

  def truncate(direction = :left)
    n = self.abs
    return n if n < 10

    if direction.eql?(:right)
      return n.to_s[0 .. n.to_s.length-2].to_i
    else direction.eql?(:left)
      return n.to_s[1 .. n.to_s.length-1].to_i
    end
  end
end

primes = Prime.new
truncatable_primes = Array.new

primes.each do |prime|
  truncatable_primes.push(prime) if prime.truncatable_prime?
  break if truncatable_primes.length == 11
end

puts truncatable_primes.inject(0) { |sum, n| sum + n }
