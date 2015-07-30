File.open(ARGV[0]).each_line do |line|
  line.split(' ').map{|b| b.to_f}.sort.map{|a| printf "%.3f ", a}
  print "\n"
end