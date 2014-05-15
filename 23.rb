NUM = 28123 
def samyaku(n)
	m = n
	max = Math.sqrt(n)
	i = 2
	insu = {}
	while n > 1
		if n%i == 0
			insu[i] = 0
			while n%i == 0
				insu[i] += 1
				n /= i
			end
		end
		i += 1
	end
	sam = 1
	insu.each do |soinsu|
		sam = sam*(soinsu[0]**(soinsu[1]+1)-1)/(soinsu[0]-1)
	end
	sam-m
end
a = []
for i in 1..NUM
	if i < samyaku(i)
		a << i
	end
end
p a.length
#b = a.product(a)
huno = (1..NUM).to_a
=begin
b.each do |ar|
	wa = ar[0]+ar[1]
	if wa < NUM
		huno[wa-1]=1
	end
end
=end
b = Array.new a
a.each do |kajo1|
	b.each do |kajo2|
		wa = kajo1+kajo2
		if wa > NUM
			break
		end
		huno[wa-1]=0
	end
end
p huno
sam = 0
for i in 0...huno.length
	if huno[i] != 0
#		print (i+1),","
		sam += (i+1)
	end
end
p sam