def sankaku(n)
	n*(n+1)/2
end

def soinsubunkai(n)
	i = 2
	max = Math.sqrt(n)
	insu = {}
	while i <= max
		if n%i == 0
			insu[i] = 0
		end
		while n%i == 0
			n /= i
			insu[i] += 1
		end
		i += 1
	end
	if n != 1
		insu[n] = 1
	end
	insu
end

def insukosu(n)
	insu = soinsubunkai(n)
	kazu = 1
	insu.each do |beki|
		kazu *= beki[1]+1
	end
	kazu
end

n = 1
while insukosu(sankaku(n)) < 500
	p n
	n += 1
end

p sankaku(n)