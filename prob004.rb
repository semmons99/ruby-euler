products = Array.new
100.upto(999) do |a|
  a.upto(999) do |b|
    products.push a*b 
  end
end

products.sort.reverse.each do |product|
  if product.to_s.eql?(product.to_s.reverse)
    puts product
    break
  end
end
