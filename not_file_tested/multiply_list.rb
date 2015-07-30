File.open(ARGV[0]).each_line do |line|
  pipe = Regexp.new(/\|/)
  m = line.match(pipe)
  a = m.pre_match.split(' ').map!{|x| x.to_i}
  b = m.post_match.split(' ').map!{|y| y.to_i}
  i = 0
  str = ''
    while i < a.length
     str << "#{a[i] * b[i]} "
    i += 1
  end
  puts str
end