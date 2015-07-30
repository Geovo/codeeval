File.open(ARGV[0]).each_line do |line|
  spl = line.split(',').map! {|y| y.to_i}
  if spl[0] < spl[1] then puts "#{spl[0]}" else puts "#{spl[0] - ((spl[0]/spl[1]).floor * spl[1])}" end
end