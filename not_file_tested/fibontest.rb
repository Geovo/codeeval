time = Time.now
def fib(n)
    if n == 0
        return 0
    elsif n <= 2
    	return 1    
    end    
    k = n/2
    a = fib(k + 1)
    b = fib(k)
    if n % 2 == 1
        return a*a + b*b
    else
        return b*(2*a - b)
    end
end

=begin
File.open(ARGV[0]).each_line do |line|
    n = line.to_i
    puts fib(n)
 end
=end
fib(5000000)
#puts new.to_s.length
puts Time.now - time 