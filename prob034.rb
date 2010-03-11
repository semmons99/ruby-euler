def factorial(n)
  (n == 1 or n == 0) ? 1 : n * factorial(n - 1)
end

def curious?(num)
  num == num.to_s.split("").inject(0) { |sum, n| sum + factorial(n.to_i) }
end

puts (3 .. 100000).inject(0) { |sum, n| sum + (curious?(n) ? n : 0) }
