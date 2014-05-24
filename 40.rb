def d(n)
	keta = 1
	while n-keta*9*10**(keta-1) > 0
		n = n-keta*9*10**(keta-1)
		keta += 1
	end
	i = n/keta
	j = n%keta
	if j != 0
		kazu = 10**(keta-1) + i
		return kazu.to_s[j-1].to_i
	else
		kazu = 10**(keta-1) + i-1
		return kazu.to_s[-1].to_i
	end
end
seki = 1
for i in 0..6
	seki *= d(10**i)
end
p seki