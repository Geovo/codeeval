# Let's roll with a new challenge:

def repet(str)
  uniq = str.split('').uniq
  uniq.delete_if {|x| str.count(x) <= 1}
  h = {}
  uniq.permutation.each {|p| p str.scan p.join}  # h[p.join] = str.count(p.join)}
  return h 
end

File.open(ARGV[0]).each_line do |line|
  puts repet line.chomp
end
