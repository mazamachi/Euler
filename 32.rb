def pan?(a,b)
	seki = a*b
	s = a.to_s<<b.to_s<<seki.to_s
	if s.length != 9
		return false
	end
	hash = {}
	s.split(//).each do |i|
		if hash[i] == nil
			hash[i] = 1
		else
			hash[i] += 1
		end
	end
	ans = true
	for i in 1..9
		if hash[i.to_s] != 1
			ans = false
		end
	end
	ans
end
ans = {}
for niketa in 1..100
	for sanketa in niketa..10**(6-niketa.to_s.length)
		if pan?(niketa,sanketa)
			ans[niketa*sanketa] = 1
			p [niketa,sanketa,niketa*sanketa]
		end
	end
end
p ans
sam = 0
ans.each do |a|
	sam += a[0]
end
p sam