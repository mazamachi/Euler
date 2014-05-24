def kaijo(n)
	(1..n).inject(:*)
end

def combination(n,r)
	kaijo(n)/kaijo(r)/kaijo(n-r)
end

ans = 0
for n in 23..100
	for r in 1..(n/2+1)
		p [n,r]
		if combination(n,r) > 1000000
			ans += n-2*r +1
			break
		end
	end
end
p ans