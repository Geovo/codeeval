#!/usr/bin/ruby

ar = []
File.open(ARGV[0]).each_line do |line|
  ar << line.chomp
end
puts num = ar.shift.to_i
maxl = 1
p ar.sort! {|x,y| x.length <=> y.length}
#filter = []
#ar.each {|el| maxl = el.length if el.length > maxl; filter << el }
puts ar.reverse[0..num-1]
