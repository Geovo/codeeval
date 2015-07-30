File.open(ARGV[0]).each_line do |line|
  # split and prepare the line
  line = line.chomp.split(";")
  ar = []
  line.each {|x| a = x.split(','); ar << a[1].to_i}
  # sort it
  ar.sort!
  #here we fill a new array with the distances
  arnu = []
  start = 0
  # starts with 0 and start always changes to the current city
  ar.each {|z| arnu << z-start; start = z} 
  puts arnu.join(",")
end
