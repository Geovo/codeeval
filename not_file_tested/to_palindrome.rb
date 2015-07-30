require 'benchmark'

def to_palindrome(line, times=0)
  until line.palindrome?
    line += line.to_s.reverse.to_i
    times += 1
  end
  "#{times} #{line}"
end

def palindrome?
  return "false value" unless self.is_a? Numeric
  self == self.to_s.reverse.to_i
end

public :palindrome?, :to_palindrome

if ARGV[0]
File.open(ARGV[0]).each_line do |line|
  line = line.chomp.to_i
  printf to_palindrome(line)  
end
end

#puts Benchmark.measure { puts "hello" }
puts Benchmark.measure { 2.times { printf "#{to_palindrome(1245)}\n"} }
