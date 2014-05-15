N = 1000
max = 0
for i in 2..(N-1)
	yo = 1
	a = {1=>1}
	keta = 0

	loop do
		while yo < i
			yo *= 10
		end
		yo %= i
		if yo == 0
			break
		end
		if a[yo] == nil
			a[yo] = 1
		elsif a[yo] == 1
			a[yo] = 2
			keta += 1
		else
			break	
		end
	end

#	p [i,keta]
	if max < keta
		max = keta
		d = i
	end
end
p d