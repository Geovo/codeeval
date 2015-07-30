def multiplication_table(uptonum)
	n = 1
	file = File.open("table.txt", "r+")
	leng = (uptonum ** 2).to_s.length + 1
	while n < uptonum + 1
		(1..uptonum).each.to_a.map {|x| file.printf "%#{leng}d |", x * n}
		file.print "\n"
		n += 1
	end
end
puts multiplication_table(12)