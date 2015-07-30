require 'colorize'

# This will be simple:
# First part scans through all the folders for an .rb and a DONE or UNDONE file
# Here it goes:

# This has meaning only on my computer
directories = Dir.entries(".") - [".DS_Store", ".", '..', '.status.rb.swp', 'update', '.status.rb']

# First, let's create two arrays that will hold the done and undone challenges:
DONE = []
NOT_DONE = []

# Now let's scan through the folders:
directories.map do |d|
  if File.exist?("#{d}/DONE")
    DONE << d
  elsif File.exist?("#{d}/NOT_DONE")
    NOT_DONE << d
  else
    print "Sorry, no Status-file found in the folder".red, "'#{d}'".blue
  end
end

# Then print them out:

puts "You have finished these challenges:"
DONE.map {|done| puts done.green }

puts "\n", "=" * 40, "\n"
puts "On these you still need to work:"
NOT_DONE.map {|ndone| puts ndone.red}
puts "\n\t\tROCK ON!!! :)\n".yellow
