def is_prime?(n)
	prime = true if n == 2 || n == 3 || n == 5 || n == 7
  if (n % 2 == 0) && (n % 3 == 0) && (n % 5 == 0) && (n % 7 == 0)
#	 puts "#{n} is a prime"
	prime = false
	else 
#	  "#{n} is a prime"
	for num in 11..n/2 
	if n % num == 0 
	  prime = false
	 else
	  prime = true
	 end
	end
  end
	  prime == true ? "#{n} is a prime" : "#{n} is not a prime"
end
puts is_prime?(5)
#is_prime?(9)
#is_prime?(23) 
puts is_prime?(13)
puts is_prime?(12)

#	  puts "#{n} is a prime"

=begin
sum = 0
count = 0
for i in 1..1000
#we say i is a prime
  prime = true
  #now we test it
  for j in 2..i/2
    if i % j == 0
    #then not a prime
    prime = false
    #break the loop
    break
   end 
  end  
#print if prime
#sum = i 
count += 1 if prime
end  
puts count
=end