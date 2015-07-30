File.open(ARGV[0]).each_line do |line|  
    string = []
    matches = line.chomp.match(";")
    a = matches.pre_match.split(',')
    b = matches.post_match.split(',')
    a.map{|x| string << x if b.include?(x)}
    puts string.join(',')
end
#	l = (string.length * (-1))
 #   p string
#puts string
