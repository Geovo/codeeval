File.open(ARGV[0]).each_line do |line|
    p lines = line.split(",").map!{|x| x.chomp}
    a = lines[1].match(/*/) 
    pre = a.pre_match
    pre = pre + ".*"
    p a = Regexp.new(lines[1].gsub("*", ".*"))
      if lines[0].match(a)
        puts true
      else
        puts false 
      end
    end
#end
=begin
    if lines[1].include?("*")
    str = lines[1]
#    lines[1].gsub!("*", "\*")
	puts a = Regexp.new(str)
      #puts "true" if !lines[0].match(lines[1])nil?
      puts "false" if lines[0] =~ /#{lines[1]}/
    else
      if line.include?(lines[1]) 
        print "true\n" 
      else 
        print "false\n" 
      end 
    end
     
=end    

