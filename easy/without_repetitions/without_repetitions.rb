# Let's roll with a new challenge:

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(' ')
  line.map! do |w|
    w = w.split('')
    i = 0; ch = 0 
    sort = []
    w.map! {|c| sort << i if c == ch; ch = c ; i += 1}
    sort.map {|n| w.delete_at(n)}
    p w.join('')
  end
  puts line.join(" ")
end
