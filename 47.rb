def bunkai(n)
	if n == 1
		return {1=>1}
	end
	insu = Hash.new(0)
	max = Math.sqrt(n)
	for i in 2..max
		if n%i == 0
			insu[i] = 0
			while n%i == 0
				insu[i] += 1
				n /= i
			end
		end
	end
	if n != 1
		insu[n] += 1
	end
	insu
end

def kotonaru?(n,kazu)
	bun = []
	while bun.length<kazu
		bun << bunkai(n+bun.length)
		if bun[-1].length != kazu
			return false
		end
	end
	true
end

NUM = 4
n = 1
while !kotonaru?(n,NUM)
	n += 1
end
(n..n+NUM-1).each do |i|
	p [i,bunkai(i)]
end
p n