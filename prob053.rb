class Integer
  def choose(m)
    return (self.fact / (m.fact * (self - m).fact))
  end

  def fact
    (2..self).inject(1) { |f, n| f * n }
  end
end

sum = 0
(1 .. 100).each do |n|
  (1 ... n).each do |r|
    sum += 1 if n.choose(r) > 1_000_000
  end
end

puts sum
