N = 1000
max = 0
ans = 0
for p in 3..N
	kazu = 0
	for a in 1..p/3
		for b in a..(2*p/3-a)
			c = p-a-b
			if a**2+b**2==c**2
				kazu += 1
			end
		end
	end
	if max < kazu
		ans = p
		max = kazu
		print "#{[p,kazu]}\n"
	end
end
p ans