nums = Array.new

1_000_000.times do |num|
  nums.push(num) if num == (0 .. num.to_s.length - 1).inject(0) { |sum, n| sum + num.to_s[n].to_i**5 }
end

puts nums.inject(0) { |sum, n| sum + n } - 1
