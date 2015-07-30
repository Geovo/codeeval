# do some

File.open(ARGV[0]).each_line do |line|
  if line.size <= 55 
    puts line.chomp
  else
    line = line[0..39]
    count = 0; x = 0
    line.each_char {|c| x = count if c == " "; count += 1}
    line = line[0..x-1] if x > 0
    line = line[0..-2] if line[-1] = " "
    print line, "... <Read More>\n"
  end
end


=begin
File.open(ARGV[0]).each_line do |line|
  if line.size <= 55
    puts line.chomp
  else
    line = line[0..39]
    count = 0; x = []
    line.split("").reverse.map {|c| if c == " " then x << count end; count += 1}
    line = line[0..-2-x[0]]
    #line = line[0..38] if line[-1] == " "
    print line, "... <Read More>\n"
  end
end
=end
