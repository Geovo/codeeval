# Let's roll with a new challenge:

=begin
File.open(ARGV[0]).each_line do |line|
  if line.chomp =~ /[a-zA-Z0-9\.\-\_]{2,}@\w{2,}\.\w{2,}/
    puts "true"
  else
    puts "false"
  end
end
=end

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  ans = ''
  print line.count('@'), "   "
  if line =~ /[a-zA-Z0-9\.\-\_]+@\w+\.\w+/
    ans = 'true'
  end
  if line.scan(/[\"\\\! \*\+\<\>\;\(\[\]\,]/).size > 0 
    ans = 'false'
  #else
   # ans = 'false'
  end
  ans = 'false' if line.count('@') > 1 || line.count('@') == 0
  puts "#{ans} ==> #{line}"
end
