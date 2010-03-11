require "nio"

def recurring_length(num)
  Rational(1, num).nio_write(Nio::Fmt.rep(:nreps=>0)).gsub(/^.*<(.*)>.*$/, '\1').length
end

puts (1 .. 999).max { |num1, num2| recurring_length(num1) <=> recurring_length(num2) }
