ar = [', yeah!', ', this is crazy, I tell ya.', ', can U believe this?', ', eh?', ', aw yea.', ', yo.', '? No way!', '. Awesome!']

contr = 1
ar_num = 0
File.open(ARGV[0]).each_line do |line|
  nu = []
  line = line.chomp.gsub(/[\.\!\?]/){|m| "#{m}||"}.split("||")
  line.map! do |s| 
    if contr.even? 
      nu << s[0..-2] + ar[ar_num % 8]
      ar_num += 1
    else
      nu << s
    end
    contr += 1
  end
  puts nu.join('')
end
