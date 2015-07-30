def splitter(inp)
  inp.split(/\;|\,/)
end
t = Time.now
File.open(ARGV[0]).each_line do |line|
  len = line.split(/\;|\,/).size
  ar = splitter(line)
  num = ar.pop.to_i
  # create a new array
  nu = []
  # while nu is smaller than ar
  while nu.size <= len do
    temp = []
    num.times {|x| temp[x] = ar.shift}#unless ar[0] == nil} 
    temp.reverse! unless temp.include?(nil)
    nu += temp
  end
  puts (nu - [nil]).join(",")
end
diff = Time.now - t
puts "Time ==> #{diff}"
