File.open(ARGV[0]).each_line do |line|
  line = line.chomp.to_f
  deg = line.floor 
  rest = (line - deg).round(8)
  min = (rest * 60).floor 
  rest = ((rest * 60) - (rest * 60).floor).round(8)
  sec = (rest * 60).floor
  min = "0" + min.to_s if min.to_s.length == 1
  sec = "0" + sec.to_s if sec.to_s.length == 1
  puts "#{deg}.#{min}'#{sec}\""
end

