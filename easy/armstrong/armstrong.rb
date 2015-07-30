File.open(ARGV[0]).each_line do |line|
  dupl = line.chomp.split('').map(&:to_i)
  puts "old dupl:"
  p dupl
#  size = dupl.size
  dupl.map! {|x| x = (x ** dupl.size)}
  res = dupl.inject {|a,b| a+b}
  puts "New dupl"
  p dupl
  if res == line.to_i then puts "True" else puts "False" end
  puts res
  puts "=" * 40  
#printf "Line: %i\tResult: %i\n", line.to_i, integ
end

