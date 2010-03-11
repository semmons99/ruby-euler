class Integer
  def prime?
    n = self.abs()
    return true if n == 2
    return false if n == 1 || n & 1 == 0
    d = n - 1
    d >>= 1 while d & 1 == 0

    20.times do
      a = rand(n-2) + 1
      t = d
      y = ModMath.pow(a, t, n)
      while t != n-1 and y != 1 and y != n-1
        y = (y * y) % n
        t <<= 1
      end
      return false if y != n-1 and t & 1 == 0
    end
    return true
  end
end

module ModMath
  def ModMath.pow(base, power, mod)
    result = 1
    while power > 0
      result = (result * base) % mod if power & 1 == 1
      base = (base * base) % mod
      power >>= 1
    end
    result
  end
end

max_ab = [0,0]
max_primes = 0

-999.upto(999) do |a|
  -999.upto(999) do |b|
    primes = 0
    n = 0
    while (n**2 + a * n + b).prime?
      primes += 1
      n += 1
    end
    if primes > max_primes
      max_ab = [a,b]
      max_primes = primes
    end
  end
end

puts max_ab[0] * max_ab[1]
