def root2(n)
	if n == 1
		return Rational(3,2)
	else
		return 1 + Rational(1,1+root2(n-1))
	end
end
ans = 0
for i in 1..1000
	root2i = root2(i)
	if root2i.denominator.to_s.length < root2i.numerator.to_s.length
#		p [i,root2i]
		ans += 1
	end
end
p ans