def prime_n(n)
	prime =[2]
	i = 3
	while prime.length < n
		judge = 0
		prime.each do |p|
			if i%p == 0
				judge = 1
				break
			end
		end
		if judge == 0
			prime << i
		end
		i += 1
	end
	prime
end

p prime_n(10001)[-1]
