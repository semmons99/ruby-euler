Entry = Struct.new(:triangle, :pentagonal, :hexagonal)

nums = Hash.new { |hash, key| hash[key] = Entry.new(nil, nil, nil) }

1.upto(100000) do |n|
  triangle   = (n * (n + 1)) / 2
  pentagonal = (n * (3 * n - 1)) / 2
  hexagonal  = n * (2 * n - 1)

  nums[triangle].triangle     = n
  nums[pentagonal].pentagonal = n
  nums[hexagonal].hexagonal   = n
end

nums.each do |key, entry|
  next if entry.triangle.nil? or entry.pentagonal.nil? or entry.hexagonal.nil?
  puts "#{entry.triangle}, #{entry.pentagonal}, #{entry.hexagonal} - #{key}"
end
