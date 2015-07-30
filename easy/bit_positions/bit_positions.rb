File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(',')
  line[0]
  bin = line[0].to_i.to_s(2).reverse
  f = line[1].to_i - 1
  s = line[2].to_i - 1
  if bin[f] == bin[s]
    puts "true"
  else
    puts "false"
  end
end
