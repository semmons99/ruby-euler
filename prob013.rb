puts (File.open("prob013.txt").readlines.inject(0) { |sum, n| sum + n.to_i }).to_s[0,10]
