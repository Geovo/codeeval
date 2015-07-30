=begin
s1 = Time.now
File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(" ")
  size = Math.sqrt(line.size).to_i
  lines = []
  until line.size == 0 do
    temp = []
    size.times {temp << line.shift}
    lines << temp
  end
  rows = []
  size.times do |t|
    temp = []
    lines.map {|x| temp << x[t]}
    rows << temp.reverse
  end
  puts rows.flatten.join(" ")
end
ender1 = Time.now - s1
=end
# Trying refactoring
# Something messed up below. Upper version works
#s2 = Time.now
File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(" ")
  size = Math.sqrt(line.size).to_i
  lines = []
  temp = []; temp2 = []
  size.times {|x, i| i = x * size; temp << line[i]}
  size.times {|x, i| i = (x * size) + 1; temp2 << line[i]}
  lines << temp.reverse
  lines << temp2.reverse
  p lines
  #puts lines.flatten.join(" ")
end
#ender2 = Time.now - s2

#puts "First pattern -->  #{ender1} || Second pattern -->  #{ender2}"
