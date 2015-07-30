def splitter(inp)
  inp.split(/\;|\,/)
end
t = Time.now
File.open(ARGV[0]).each_line do |line|
  ar = splitter(line)
  len = ar.size
  num = ar.pop.to_i
  nu = []
  while nu.size <= len do
    temp = []
    num.times {|x| temp[x] = ar.shift} 
    temp.reverse! unless temp.include?(nil)
    nu += temp
  end
  nu = (nu - [nil]).join(",")
  puts nu
end
diff = Time.now - t
puts "Time ==> #{diff}"
