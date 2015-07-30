# This should be fun :)

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(/[\; ]/).map(&:to_i)
  days = line.shift - 1
  ind = 0
  biggest = 0
  for x in line do
    break if ind > line.size - days
    done = line[ind..ind+days].inject {|a,b| a + b}
    biggest = done if done > biggest
    ind += 1
  end
  puts biggest 
end
