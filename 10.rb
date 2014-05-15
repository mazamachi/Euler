NUM = 2000000
a = []

for i in 2..NUM
	a << i
end
#アリストテレスの篩	
sum = 0 
while a.length > 0
	if a[0] != nil
		p = a[0]
		sum += p
		for i in 0...a.length
			if a[i]%p == 0 
				a[i] = nil
			end
		end
		a.delete(nil)
	end
	if a[0] > Math.sqrt(NUM)
		break
	end
end
=begin
i = 3
sum = 0
while i < NUM
	judge = 0
	prime.each do |p|
		if p <= Math.sqrt(i)
			if i%p == 0
				judge += 1
				break
			end
		end
	end
	prime << i if judge == 0
	i += 2
	p prime
end
=end
a.each do |p|
	sum += p
end
p sum