def renbuntenkai(a)
	bunsu = Rational(1,a[-1])
	len = a.length
	for i in 1...a.length-1
		bunbo = a[-i-1]+bunsu
		bunsu = Rational(1,bunbo)
	end
	a[0] + bunsu
end
e = [2]
for i in 1..99
	if i%3 != 2
		e[i] = 1
	else
		e[i] = (i/3+1)*2
	end
end
e100 = renbuntenkai(e)
p e100.to_f
bunsinums=e100.numerator.to_s.split("").map(&:to_i)
s = bunsinums.inject(0){|sum,n| sum += n}
p s
	
