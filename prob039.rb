as = (1 .. 999).to_a
bs = (1 .. 999).to_a
cs = (1 .. 999).to_a

values = Hash.new { |hash, key| hash[key] = Array.new }

as.each do |a|
  bs.each do |b|
    cs.each do |c|
      if (a + b + c) < 1000 and (a**2 + b**2) == c**2
        values[(a + b + c)] << [a, b, c]
      end
    end
  end
end

puts values.keys.sort[-1]
