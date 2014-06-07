#57.rbの再帰を配列にした方法 57.rbより高速
#57.rbはO(n^2)にたいし、これはO(n)
def root2(n)
	a = [Rational(3,2)]
	for i in 1...n
			a[i] = (1+Rational(1,1+a[i-1]))
	end
	a
end
ans = 0
ar = root2(1000)
for i in 1..1000
	root2i = ar[i-1]
	if root2i.denominator.to_s.length < root2i.numerator.to_s.length
#		p [i,root2i]
		ans += 1
	end
end
p ans