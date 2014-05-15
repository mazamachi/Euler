def soin(n)
	i = 2
	insu = []
	while i <= Math.sqrt(n)
		if n%i == 0
			insu << i
			while n%i == 0
				n /= i
			end
		end
		i += 1
	end	
	insu << n if n!= 1
	return insu
end

p soin(600851475143)[-1]