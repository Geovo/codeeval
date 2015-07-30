File.open(ARGV[0]).each_line { |line|
    a = ''
	line = line.split(' ').map!{|a| a.to_i}
	line.each {|x| a << "#{x} " if line.count(x) > 2}
	print "#{a.split(' ').uniq.join(' ')} \n"
}
