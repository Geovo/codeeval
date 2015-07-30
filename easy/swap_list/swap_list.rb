File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(" : ")
  list = line[0].split(" ")
  swapper = line[1].split(", ")
  swapper.map! {|x| x = x.split("-").map(&:to_i)}
  swapper.map! do |pair|
    temp = list[pair[0]]
    list[pair[0]] = list[pair[1]]
    list[pair[1]] = temp
  end
  puts list.join(" ")
end


