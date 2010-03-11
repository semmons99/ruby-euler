class Integer
  def factors
    n = self.abs()
    factors = Array.new

    1.upto(Math.sqrt(n).ceil) { |i| factors.push(i, n/i) if n % i == 0 }
    factors
  end
end

class TriangleNumber
  def initialize
    @counter, @number = 0, 0
  end

  def next
    @number += @counter += 1
  end
end

num  = 0
trig = TriangleNumber.new

num = trig.next until num.factors.length > 500
puts num
