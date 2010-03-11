def split_n_sort(n)
  n.to_s.split("").sort
end

i = 0
loop do
  i += 1
  if split_n_sort(2*i).eql?(split_n_sort(3*i)) and
     split_n_sort(2*i).eql?(split_n_sort(4*i)) and
     split_n_sort(2*i).eql?(split_n_sort(5*i)) and
     split_n_sort(2*i).eql?(split_n_sort(6*i))
     puts i
     exit
  end
end
