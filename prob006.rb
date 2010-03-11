sum_of_squares = (1 .. 100).inject(0) { |sum, n| sum + n**2 }
square_of_sums = ((1 .. 100).inject(0) { |sum, n| sum + n })**2

puts square_of_sums - sum_of_squares
