require 'colorize'
 
# Now we'll create a new folder for a new challenge:
nu = ARGV[0]
# Exit if file exists
def stop_it
  puts "Sorry, this file already exists. Check for typos!"
  exit
end
public :stop_it
stop_it if File.exist?(nu)
print "Creating folder:  ".green
`mkdir #{nu}`
20.times {print "=="; sleep 0.001}
puts
ruby = File.expand_path "./#{nu}/#{nu}.rb"
txt = File.expand_path "./#{nu}/#{nu}.txt"
print "Uploading files:  ".green
`cp .template/solution.rb #{ruby}`
`cp .template/test.txt #{txt} && touch ./#{nu}/NOT_DONE`
`touch ./#{nu}/run`
` echo "ruby #{ruby} #{txt}" > ./#{nu}/run`  
`chmod +x ./#{nu}/run`
20.times {print "=="; sleep 0.001}
puts
puts "DONE!".red
