# Let's roll with a new challenge:

def count_arrows(arrows)
  ars = 0
  arrows.split('').each_with_index do |c, i| 
    if c == '<'
      ars += 1 if arrows[i+1] == '-' && arrows[i+2] == '-' && arrows[i+3] == '<' && arrows[i+4] == '<'
    elsif c == '>'
      ars += 1 if arrows[i+1] == '>' && arrows[i+2] == '-' && arrows[i+3] == '-' && arrows[i+4] == '>'
    end
  end 
  return ars
end

File.open(ARGV[0]).each_line do |line|
  puts count_arrows line.chomp
end
