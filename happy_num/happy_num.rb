def happy_num(num)
  num
end

File.open(ARGV[0]).each_line do |line|
# starting from new here

  line.to_i

=begin
  bool = nil
  bool = false if line == '1'
  ar = line.split(',').map!(&:to_i)
  sum = 0
  while sum != 1
    ar.map{|x| sum += x**2}
    if sum == 1 then bool = true; break; end
    ar = sum.to_s.split('').map!(&:to_i)
    #p ar
#    if sum == 4 || sum.to_s =~ /40*/|| sum == 85 || sum == 58 then bool = false; break end
    if sum == 4 then bool = false; break end
    sum = 0
  end
  if bool == true then puts 1 else puts 0 end
=end
end

