def bunkai(n)
	i = 100
	while i < 1000
		if n%i == 0 && (n/i >= 100 && n/i <1000)
			return true
		end
		i += 1
	end
end


for i in 0..9
	a = 9-i
	for j in 0..9
		b = 9-j
		for k in 0..9
			c = 9-k
			kaibun = 100001*a + 10010*b + 1100*c
			if bunkai(kaibun)
				p kaibun
				
			end
		end
	end
end