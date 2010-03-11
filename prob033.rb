require "nio"

def curious?(x, y)
  x1, x2 = (x.to_i%10).to_f, (x.to_i/10).to_f
  y1, y2 = (y.to_i/10).to_f, (y.to_i%10).to_f

  return false if x1 == x2 and y1 == y2
  return false unless x1 == y1 or x2 == y2
  return true if y1 > 0 and x/y == x1/y1
  return true if y2 > 0 and x/y == x2/y2
  false
end

fractions = Array.new

10.upto(99) { |numerator| (numerator+1).upto(99) { |denominator| fractions.push([numerator.to_f, denominator.to_f]) } }

fraction = fractions.inject(1) { |product, fraction| product * (curious?(fraction[0], fraction[1]) ? fraction[0]/fraction[1] : 1) }

puts Rational.nio_read(fraction.to_s).to_s.split("/")[1]
