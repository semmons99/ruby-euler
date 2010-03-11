triangle = Array.new
File.open("prob067.txt").each do |line|
  triangle.push(line.split.map { |n| n.to_i })
end

(triangle.length-2).downto(0) do |row|
  triangle[row].each_with_index do |val, i|
    triangle[row][i] += [triangle[row+1][i], triangle[row+1][i+1]].max
  end
end

puts triangle[0][0]
