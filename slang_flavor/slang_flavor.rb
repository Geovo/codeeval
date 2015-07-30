ar = ['placeholder', ', yeah!', ', this is crazy, I tell ya.', ', can U believe this?', ', eh?', ', aw yea.', ', yo.', '? No way!', '. Awesome!']

times_changed = -1

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.gsub(/[\.\!\?]/){|m| "#{m}||"}.split("||")
  nu = []
  other = false
#  line.map {|x| p x}
  line.map! do |s|
    times_changed += 1
    if times_changed % 2 == 0
      other = false
      puts t = (times_changed % 8) 
      nu << s[0..-2] + ar[t + 1]
    else
      other = true
      nu << s
    end
    puts times_changed
#    times_changed += 1
  end
  p nu
end
