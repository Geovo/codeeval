trans = {"M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "V"=>5, "I"=>1}
File.open(ARGV[0]).each_line do |line|
  line = line.chomp.to_i
  trans.each do |k,v|
  out = ""
    res = line / v
    p res
    if res >= 1
      if res == 4
        out << "IV"
      elsif res == 9
        out << "IX"
      elsif res == 40
        out << "XL"
      elsif res == 90
        out << "XC"
      else
        out << k * res.floor
      end
        line -= (v * res.floor)
    end
  #out = out.gsub("LXXXX", "XL").gsub("XXXX", "XL").gsub("VIIII", "IX").gsub("IIII", "IV")
#  print out
  end 
puts
end
