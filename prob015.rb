# solve using pascal's triangle n choose r, thanks to mike

def factorial(n)
  n == 1 ? 1 : n * factorial(n - 1)
end

require "HighLine"
prompter = HighLine.new
n = prompter.ask("n? ", Integer)
r = prompter.ask("r? ", Integer)

puts factorial(n) / (factorial(r)**2)
