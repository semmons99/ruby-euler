def one_pence(n)
  1
end

def two_pence(n)
  n >= 0 ? two_pence(n-2) + one_pence(n) : 0
end

def five_pence(n)
  n >= 0 ? five_pence(n-5) + two_pence(n) : 0
end

def ten_pence(n)
  n >= 0 ? ten_pence(n-10) + five_pence(n) : 0
end

def twenty_pence(n)
  n >= 0 ? twenty_pence(n-20) + ten_pence(n) : 0
end

def fifty_pence(n)
  n >= 0 ? fifty_pence(n-50) + twenty_pence(n) : 0
end

def one_pound(n)
  n >= 0 ? one_pound(n-100) + fifty_pence(n) : 0
end

def two_pounds(n)
  n >= 0 ? two_pounds(n-200) + one_pound(n) : 0
end

puts two_pounds(200)
