require "mathn"

primes = Prime.new
arr    = Array.new

arr.push(primes.next) until arr[-1] > 1_000_000
puts (arr.inject(0) { |sum, n| sum + n } - arr[-1])
