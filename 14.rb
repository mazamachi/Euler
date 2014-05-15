NUM = 1000000
a = Array.new(NUM/2)
max = 0
suu = 0
for i in NUM/2..(NUM-1)
	count = 0
	m = i
#	print "#{i} " 
	if a[i-NUM/2]!= false
		while i != 1
			if i%2 == 0
				i /=2
				count += 1
				if i>=NUM/2 && i<NUM
					a[i-NUM/2] = false
				end
			else 
				i = 3*i + 1
				count += 1
				if i>=NUM/2 && i<NUM
					a[i-NUM/2] = false
				end
			end
		end
	end

	if count > max
		max = count
		suu = m
	end
#	p count
=begin
	n = 3*i
	count = 0
	m = n
	print "#{n} "
	if a[n-NUM/2]!= false
		while n != 1
			if n%2 == 0
				n /=2
				count += 1
				if n>=NUM/2 && n<NUM
					a[n-NUM/2] = false
				end
			else 
				n = 3*n + 1
				count += 1
				if n>=NUM/2 && n<NUM
					a[n-NUM/2] = false
				end
			end
		end
	end
	p count
	if count > max
		max = count
		suu = m
	end
=end
end
p suu