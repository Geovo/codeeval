#working version
File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(",")
  copy = line.uniq
  l = line.length / 2
  ar = []
  copy.map {|el| x = line.count(el); ar << [x, el]}
  ar = ar.uniq
  resp = "None"
  ar.map {|a| resp = a[1] if a[0] > l}
  puts resp
end
