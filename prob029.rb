nums = Array.new

2.upto(100) do |a|
  2.upto(100) do |b|
    nums.push(a**b)
    end
end

puts nums.uniq.length
