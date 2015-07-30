File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(";")
  p words = line[0].split(" ")
  index = line[1].split(" ").map(&:to_i)
  s = words.size
  missing = 0
  (1..s).each {|num| missing = num unless index.include?(num)}
  h = []
  t = 0
  words.map {|w, i| i = words.index(w); index[i] = missing if index[i].nil?; h[index[i]] = words[i]}
  p h = h - [nil]
  h.map {|a| print "missed: #{a}" unless words.include?(a)}
  p words - h
  puts "Words: #{s}\tNew: #{h.size}"
#  puts h.join(" ")
end
