def lcm?(num, factors)
  factors.each do |factor|
    return false unless num % factor == 0
  end
  true
end

factors = (1 .. 20).to_a
incr    = factors[-1] * factors[-2]
num     = incr

num += incr until lcm?(num, factors)
puts num
