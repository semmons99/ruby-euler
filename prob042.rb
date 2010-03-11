@triangles = Array.new

1.upto(100) do |n|
  @triangles << (0.5 * n * (n + 1))
end

ct = 0
File.open("prob042.txt").read.split(",").each do |word|
  ct += 1 if @triangles.include? word.gsub(/"/, "").upcase.split("").inject(0) { |sum, n| sum + (n[0] - 64) }
end

puts ct
