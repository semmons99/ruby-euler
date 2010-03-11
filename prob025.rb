def next_fib(num1, num2, term_num)
  return num2, num1 + num2, term_num += 1
end

num1, num2, term_num = 1, 1, 2
num1, num2, term_num = next_fib(num1, num2, term_num) while num2.to_s.length < 1_000
puts term_num
