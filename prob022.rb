class Array
  def inject_with_index(injected)
    each_with_index { |obj, index| injected = yield(injected, obj, index) }
    injected
  end
end

class String
  def value
    self.split("").inject(0) { |sum, char| sum + char[0] - 64 }
  end
end

names = File.open("prob022.txt").read.chomp.gsub(/"/, "").split(",").sort

puts names.inject_with_index(0) { |sum, name, index| sum + (name.value * (index+1)) }
