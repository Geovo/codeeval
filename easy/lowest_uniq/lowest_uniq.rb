File.open(ARGV[0]).each_line do |line|
  ar = []
  myarr = line.split(' ')
  myarr.map {|x| ar << x if line.count(x) == 1 }
  ar.sort!
  if ar.length == 0
    puts 0 
  else
    puts myarr.find_index(ar[0]) + 1
  end
end