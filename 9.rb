a = 1
while a < 333
	b = 1
	while 1000-a-b > b
		if a**2 + b**2 == (1000-a-b)**2
			p a*b*(1000-a-b)
		end
		b += 1
	end
	a += 1
end
