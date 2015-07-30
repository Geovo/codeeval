=begin
$sum = 0
File.open(ARGV[0]).each_line do |line|
    $sum += line.to_i
 end
 puts $sum
=end

def modul(first, second)
	res = first.to_f / second.to_f  
	 p first.to_f - (second.to_f * res).floor
end
 
modul(20,6)

=begin
File.open(ARGV[0]).each_line do |line|
	n = line.split(',').each{|a| a.to_i}
	puts modul(*n)
 end
=end