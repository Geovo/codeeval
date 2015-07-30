# Let's roll with a new challenge:

def check_it(ar)
  ar.each_with_index {|x, i| if ar.count(i.to_s) != x.to_i then return 0 end }
  return 1
end

File.open(ARGV[0]).each_line do |line|
  puts check_it line.chomp.split('')
end
