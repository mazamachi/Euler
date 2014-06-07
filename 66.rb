class Integer
	def nijo?
		if self==((self**0.5).to_i)**2
			return true
		else
			return false
		end
	end
end

def solve_dio(d)
	if d.nijo?
		return nil
	end
	y = 1
	while true
		nijo = 1+d*(y**2)
		if nijo.nijo?
			return [(nijo**0.5).to_i,y]
		end
		y += 1
	end
end
max = 0
d = 0
for i in 1..1000
	p i
	x = solve_dio(i)
	p x
	if x!=nil
		if x[0]>max
			max = x[0]
			d = i
		end
	end
end
p [max,d]