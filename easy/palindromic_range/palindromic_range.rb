# Another HARD challenge
# Ok, didn't get the challenge that well

def is_even_palindrome?(nums)
  counter = 0
  nums.map {|num| counter += 1 if num == num.to_s.reverse.to_i}
  if counter % 2 == 0 then return counter else return 0 end
end


File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(' ').map(&:to_i)
  p ar = (line[0]..line[1]).to_a.permutation(2).to_a
  interesting = 0
  ar.map {|a| interesting += is_even_palindrome?(a)}
  puts interesting
end
