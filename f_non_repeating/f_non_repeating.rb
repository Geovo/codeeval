File.open(ARGV[0]).each_line do |line|
  copy = line.split("").uniq
  s = ""
  copy.map do |c| 
    if line.count(c) == 1
      if s.length < 1 then s << c end
    end
  end
  puts s
end
