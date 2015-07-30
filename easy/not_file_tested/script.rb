ary = Dir.entries(".") - [".DS_Store", '.', '..', 'script.rb', '.script.rb.swp']
#ary.map! {|x| ary.delete(x) if x[0] == "."}
hasho = {}
text = ary.map {|f| f if f =~ /\.txt/} - [nil]
ruby = ary.map {|f| f if f =~ /\.rb/} - [nil]
ruby.map do |f| 
  s = f.split(".")[0]
  hasho[f] =  text.select {|t| t.include? s}[0]
end
hasho.each {|k,v| hasho.delete(k) if v == nil}
hasho.each {|k,v| puts "#{k} => #{v}"}
hasho.each do |k,v|
  p fold = k.split(".")[0]
  `mkdir #{fold} && mv #{k} #{v} #{fold}/`
end
