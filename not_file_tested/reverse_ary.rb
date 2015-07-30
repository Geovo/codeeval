line = "1,2,3,4,5;2"
out = []
ary = line.split(/[,;]/)
t = ary.pop.to_i
puts "This is #{ ary}"
unless ary.size % t== 0
  until ary.size < 1
    a = []
    2.times {a << ary.shift}
    out << a.reverse
    puts "THE A: #{a}"
  end
  p (out.flatten - [nil]).join(',')
else
  puts line
end
