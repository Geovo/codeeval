=begin

This is just the code of summing up all the 'neighbors' in an array

  ary = line.split(',').map! {|x| x = x.to_i}
  ary = ary.permutation().to_a
  ary.each {|subary| subary[0] += subary[1]; subary.pop}
  ary.flatten!
  ary.sort!
  puts ary.pop
  
=end


=begin

-> THIS ACTUALLY WORKED!!! HOORRAAYYY

File.open(ARGV[0]).each_line do |line|
  an = line.chomp.split(',')
  value = "#{an[1]}\\z"
  me = Regexp.new("#{value}")
  if an[0] =~ me then puts 1 else puts 0 end
end


=end