puts (1 ... 1000).inject(0) { |s, n| (s + n if n % 3 == 0 or n % 5 == 0) or s }
