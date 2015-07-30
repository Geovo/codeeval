File.open(ARGV[0]).each_line do |line|
  seq = line.split(' ').map!{|x| x.to_i}
  new = seq.map{|x, y| y = seq.count(x); x = "#{y} #{x}"}.uniq
  puts new.join(' ')
end 