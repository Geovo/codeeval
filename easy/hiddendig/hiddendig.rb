hash = Hash.new
iter = 0
("a".."j").each {|elem| hash[elem] = iter.to_s; iter += 1}
File.open(ARGV[0]).each_line do |line|
  out = ""
  line.chomp.each_char do |c|
    if c =~ /[a-j]/
      out << hash[c]
    elsif c =~ /\d/
      out << c.to_s
    end
  end
  if out.size == 0 then puts "NONE" else puts out end
end
