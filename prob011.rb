lines = Array.new

File.open("prob011.txt").each do |line|
  lines.push(line.split)
end

max_product = 0

3.upto(22) do |row|
  3.upto(22) do |col|
    product = lines[row][col].to_i * lines[row][col+1].to_i * lines[row][col+2].to_i * lines[row][col+3].to_i
    max_product = product if max_product < product

    product = lines[row][col].to_i * lines[row+1][col].to_i * lines[row+2][col].to_i * lines[row+3][col].to_i
    max_product = product if max_product < product

    product = lines[row][col].to_i * lines[row+1][col+1].to_i * lines[row+2][col+2].to_i * lines[row+3][col+3].to_i
    max_product = product if max_product < product

    product = lines[row][col].to_i * lines[row+1][col-1].to_i * lines[row+2][col-2].to_i * lines[row+3][col-3].to_i
    max_product = product if max_product < product
  end
end

puts max_product
