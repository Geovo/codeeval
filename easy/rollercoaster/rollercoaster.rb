File.open(ARGV[0]).each_line do |line|
  newstr = ""
  i = 1
  line.each_char do |c|
    if i % 2 != 0 then newstr << c.upcase else newstr << c end
    i += 1 unless c =~ /[\s\.\:\,\;\']/
  end
  puts newstr
end
