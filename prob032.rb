def pandigital_product?(a, b)
  combination = (a.to_s + b.to_s + (a*b).to_s).split("").sort.join
  return false unless combination.eql?("123456789")
  true
end

pandigital_products = Array.new

2.upto(5000) do |a|
  a.upto(9999 / a) do |b|
    pandigital_products.push(a*b) if pandigital_product?(a, b)
  end
end

puts pandigital_products.uniq.inject(0) { |sum, n| sum + n }
