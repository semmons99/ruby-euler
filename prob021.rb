class Integer
  def divisors
    n = self.abs()
    divisors = Array.new
 
    1.upto(Math.sqrt(n)) { |i| divisors.push(i, n/i) if n % i == 0 }
    divisors.uniq
  end
end
 
nums = Hash.new
sum  = 0
 
1.upto(9999) do |num|
  nums[num] = num.divisors.inject(0) { |sum, n| sum + n } - num
  sum += num + nums[num] if nums[nums[num]] == num and nums[num] != num
end
 
puts sum
