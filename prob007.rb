require "mathn"

primes = Prime.new
num    = primes.next

10000.times { num = primes.next }
puts num
