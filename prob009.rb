def triplet?(a, b, c)
  a**2 + b**2 == c**2
end

def find_triplet(limit)
  1.upto(limit) do |a|
    2.upto(limit - a - 1) do |b|
      c = limit - a - b
      break if a > c or b > c
      return a, b, c if triplet?(a, b, c)
    end
  end
end

a, b, c = find_triplet(1000)
puts a*b*c
