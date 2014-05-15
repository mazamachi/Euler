NUM = 1000
def sosu?(n)
	return false if n<=1 
	max = (n**0.5).to_i
	for i in 2..max
		if n%i == 0
			return false
		end
	end
	return true
end
def nijisiki(a,b,n)
	n**2 + a*n + b
end
max = -1

for a in -(NUM-1)..(NUM-1)
	for b in -(NUM-1)..(NUM-1)
		n = 0
		while sosu?(nijisiki(a,b,n))
			 n += 1
		end
		if n > max
			max = n
			ar = [a,b]
		end
	end
end
p ar[0]*ar[1]