NUM = 10000
def samyaku(n)
	m = n
	max = Math.sqrt(n)
	i = 2
	insu = {}
	while n > max
		if n%i == 0
			insu[i] = 0
			while n%i == 0
				insu[i] += 1
				n /= i
			end
		end
		i += 1
	end
	if n != 1
		insu[n] = 1
	end

	sam = 1
	insu.each do |soinsu|
		sam = sam*(soinsu[0]**(soinsu[1]+1)-1)/(soinsu[0]-1)
	end
	sam-m
end

a = []
wa = 0
for i in 2..(NUM-1)
	if a[i-1] != true
		sam1 = samyaku(i)
		if i == samyaku(sam1) && i != sam1 
			wa = wa + i + sam1
		end
		a[sam1-1] = true
	end
end
p wa