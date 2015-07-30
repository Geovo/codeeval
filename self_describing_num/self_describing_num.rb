# Let's roll with a new challenge:

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split('')
  i = 0
  line.map! {|x| x unless line.count(i.to_s) != x.to_i; i+=1}
  p line.join('')

end
