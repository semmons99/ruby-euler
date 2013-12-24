def fib(n)
  @fib ||= {}
  @fib[n] ||= -> {
    if n == 0
      1
    elsif n == 1
      1
    else
      fib(n-1) + fib(n-2)
    end
  }.call
end

result = (1..Float::INFINITY)
  .lazy
  .map { |n| fib(n) }
  .take_while { |n| n < 4_000_000 }
  .select(&:even?)
  .inject(&:+)

puts result
