NUM = 1000000
num = NUM-1
def kaijo(n)
	seki = 1
	for i in 1..n
		seki *= i
	end
	seki
end

a = (0..9).to_a
s = ""
for i in 0..9 #桁
	for j in 0...a.length
		if (j+1)*kaijo(9-i) > num
			s << a[j].to_s
			a.delete(a[j])
			p num
			p j*kaijo(9-i)
			num -= j*kaijo(9-i)
			break
		end
	end
end
p s