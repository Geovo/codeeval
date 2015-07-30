# Let's roll with a new challenge:
s = Time.now
File.open(ARGV[0]).each_line do |line|
  # divide the string
  line = line.chomp.scan /0+ 0+/
  out = ""
  # create a binary string and convert into integer
  line.map do |n|
    n = n.split(" ")
    h = {"0" => "0", "00" => "1"}
    out << h[n[0]] * n[1].size
  end
  puts out.to_i(2)
end
e = Time.now - s
puts "Time used: #{e}"
