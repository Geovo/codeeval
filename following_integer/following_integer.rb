# Let's solve my first hard-level challenge
# WOOHOOO! My first hard-level challenge solved!!! Rock on!
t = Time.now
File.open(ARGV[0]).each_line do |line|
  nuline = line.chomp + "0"
  comb = line.chomp.split('').permutation(line.chomp.size).select{|x| x.join.to_i > line.chomp.to_i}
  comb = comb.map(&:join) #.sort #.uniq
  if comb[-1].join("") != line.chomp
    comb += nuline.split('').permutation(line.chomp.size + 1).to_a.map(&:join) #.uniq
  end
  comb = comb.map{|ar| ar.to_i}.uniq.sort
  ind = comb.index(line.to_i)
  p comb[comb.index(line.to_i) + 1]
end
e = Time.now - t
puts "It took #{e} seconds!"
