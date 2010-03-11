def factorial(n)
  n == 1 ? 1 : n * factorial(n-1)
end

puts factorial(100).to_s.split("").inject(0) { |sum, n| sum + n.to_i }
