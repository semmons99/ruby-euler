corners = [1]

3.step(1001, 2) do |n|
  corners.push(n**2)
  3.times { corners.push(corners[-1] - n + 1) }
end

puts corners.inject(0) { |sum, n| sum + n }
