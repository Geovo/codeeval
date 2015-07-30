new = File.open('input_lowercase.txt', "r")
new.each_line('  ') do |line|
puts line.downcase
#nu.each_char {|x| print x.downcase}
end

