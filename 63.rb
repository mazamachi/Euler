include Math
ans = 0
for a in 1..9
	n = 1
	while true

		log10a = log10(a)
		if (n*log10a).to_i < n-1
			break
		elsif (n*log10a).to_i == n-1
			p [a,n,a**n]
			ans += 1
		end
		n += 1
	end

end
p ans
