def multiples(x, n)
	m = 0
	while m < x
  	m += n  
  	end
  	puts m
 end 	
 

 
 File.open(ARGV[0]).each_line do |line|
 	x, n = line.split(',').map { |x| x.to_i }
 	puts multiples(x, n)
 end

