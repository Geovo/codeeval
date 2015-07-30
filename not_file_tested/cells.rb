dots = []
count = 0
File.open(ARGV[0]).each_line do |line|
    #n = line.split(',')
    if line =~ /XY|YX/
    puts "true"
    elsif line =~ /X\.Y|Y\.X/
    end
 end