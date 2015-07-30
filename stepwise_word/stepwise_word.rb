File.open(ARGV[0]).each_line do |line|
  line = line.split(" ")
  line.sort! {|a,b| a.length <=> b.length }
  size = line[-1].length
  newar = []
  iter = 0
  line.map {|a| newar << a if a.length == size }
  p newar
  if newar.size == 1
    newar[0].each_char {|c, i| i = "*" * iter; print "#{i}#{c} "; iter += 1}
  else
    line[0].each_char {|c, i| i = "*" * iter; print "#{i}#{c} "; iter += 1}
  end
  
  print "\n"
end
