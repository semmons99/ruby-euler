def fib_upto(n)
  fib_upto_iter(n, 1, 0) { |x| yield x }
end

def fib_upto_iter(n, i, j)
  return n if i >= n
  yield i
  fib_upto_iter(n, i+j, i) { |x| yield x }
end

nums = Array.new
fib_upto(1000000) { |n| nums << n }

puts nums.inject(0) { |s, n| (s + n if n % 2 == 0) or s }
