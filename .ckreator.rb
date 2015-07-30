require 'colorize'
 

flags = {'-e' => 'easy', '-m' => 'moderate', '-h' => 'hard'} 
# Now we'll create a new folder for a new challenge:
difficulty = flags[ARGV[0]]
nu = ARGV[1]
# Exit if file exists
def stop_it
  puts "Sorry, this file already exists. Check for typos!"
  exit
end
public :stop_it
puts "#{difficulty}/#{nu}"
stop_it if File.exist?("#{difficulty}/#{nu}")
print "Creating folder:  ".green
`mkdir #{difficulty}/#{nu}`
20.times {print "=="; sleep 0.001}
puts
ruby = File.expand_path "#{difficulty}/#{nu}/#{nu}.rb"
txt = File.expand_path "#{difficulty}/#{nu}/#{nu}.txt"
print "Uploading files:  ".green
`cp .template/solution.rb #{ruby}`
`cp .template/test.txt #{txt} && touch #{difficulty}/#{nu}/NOT_DONE`
#`touch ./#{nu}/run`
`echo "ruby #{ruby} #{txt}" > #{difficulty}/#{nu}/run`  
`chmod +x #{difficulty}/#{nu}/run`
20.times {print "=="; sleep 0.001}
puts
puts "DONE!".red
