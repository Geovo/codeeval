# Let's roll with a new challenge:

def beautiful(line)
  h = {}
  num = 26
  line = line.chomp.downcase.delete(" ,.!/:)1234567890")
  line.reverse.split("").map {|c| if !h.has_key?(c) then h[c] = num; num -= 1 end}
  sum = 0
  c = {}
  h.each {|k,v| c[k] = line.count(k) unless c.has_key?(k)}
  h.each {|k,v| sum += (v * c[k])}
  p h, c
  puts sum
end

  
File.open(ARGV[0]).each_line do |line|
=begin
  # First, remove the non-letters and make them downcase
  line = line.chomp.downcase #.delete(".!,")  #.split("").map{|x| x if x =~ /[a-z]/} - [nil]
  #line = line.join
  # Then count each char
  h = {}
  line.split("").uniq.map {|c| h[c] = line.count(c)}
  num = 26
  r = {}
  # Then, give each char a value
  h.sort.reverse.map do |ar|
    unless r.has_key?(ar[0])
    r[ar[0]] = num
    num -= 1
    end
  end

# This is another variant

  h = {}
  num = 26 
  p line = line.chomp.downcase.delete(" ,.!/:)1234567890")
  line.reverse.split("").map {|c| if !h.has_key?(c) then h[c] = num; num -= 1 end}
  sum = 0
  c = {}
  h.each {|k,v| c[k] = line.count(k)}
  h.each {|k,v| sum += (v * c[k])}
  p h, c
  puts sum
=end
  beautiful(line)
end
