#big = 1
File.open(ARGV[0]).each_line do |line|
    	rescuer = line.split
    line = line.split

    big = line[0].length
    line.map! do |x| 
		if x.length > big  
		  line[0] = x
		  big = x.length
		  
		end
    end
    line.compact!
    if line.empty? then puts rescuer[0] else puts line[0] end
end
