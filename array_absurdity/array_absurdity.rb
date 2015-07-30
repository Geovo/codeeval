File.open(ARGV[0]).each_line do |line|
  line = line.split(/[\;\,]/).map {|n| n = n.to_i}
  size = line.shift
  x = 0
  line.map {|el| x = el if line.count(el) > 1 }
  puts x 
end
