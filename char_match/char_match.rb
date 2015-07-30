File.open(ARGV[0]).each_line do |line|
  a = line.chomp.split(',')
  if a[0].match(a[1])
    puts a[0].rindex(a[1]) 
  else
    puts -1
  end  
end
