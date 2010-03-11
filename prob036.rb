def palindromic(n)
  n.to_s.eql?(n.to_s.reverse) and n.to_s(2).eql?(n.to_s(2).reverse)
end

puts (1 .. 999_999).inject(0) { |sum, n| sum + (palindromic(n) ? n : 0) }
