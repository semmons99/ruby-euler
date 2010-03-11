require "date"

sundays = 0

1901.upto(2000) do |year|
  1.upto(12) do |month|
    sundays += 1 if Date.new(year,month,1).wday == 0
  end
end

puts sundays
