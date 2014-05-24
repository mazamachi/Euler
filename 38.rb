def pan?(str) #9文字のもののみ
	a = Array.new(10,0)
	str.split(//).each do |s|
		i = s.to_i
		a[i] += 1
	end
	for index in 1..9
		if a[index] != 1
			return false
		end
	end
	return true
end
max = 0
for i in 1...10000
	str = ""
	n = 1
	while str.length < 9
		str << (i*n).to_s
		n += 1
	end
	if str.length == 9
		if pan?(str)
			p [i,n-1]
			if max < str.to_i
				max = str.to_i
			end
		end
	end
end
p max
