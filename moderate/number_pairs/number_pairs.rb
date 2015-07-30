# Let's roll with a new challenge:

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(';')
  num = line.pop.to_i
  line = line[0].split(',').map(&:to_i)
  sel = []
  line.permutation(2).select {|a| if a[0] + a[1] == num && !sel.include?(a.reverse) then sel << a end}
  sel
  sel.map! {|x| x = x.join(',')}
  if sel.size > 0 then puts sel.join(';') else puts "NULL" end
end
