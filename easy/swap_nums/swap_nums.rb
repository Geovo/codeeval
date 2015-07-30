# Let's roll with a new challenge:

def swap_em(str)
  str.split(' ').map! {|w| temp = w[0]; word = w[1..-2]; w = w[-1] + word + temp}.join(' ')
end

File.open(ARGV[0]).each_line do |line|
  puts swap_em line.chomp
end
