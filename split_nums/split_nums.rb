File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(" ")
#  format = line[1]
  oper = (line[1].scan /[-\+]/)
  oper = oper[0]
  ind = line[1].index(oper)
#  nums = line[0]
  f = line[0][0...ind].to_i
  sec = line[0][ind..-1].to_i
  if oper == "-"
    puts f - sec
  elsif oper == "+"
    puts f + sec
  end
end
