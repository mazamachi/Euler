def kiritsume(n)
	a = []
	str = n.to_s
	if str.length == 1
		return []
	end
	for i in 0...str.length
		a << str[0..i].to_i
		a << str[-i-1..-1].to_i
	end
	a.uniq
end

def sosu?(n)
	if n == 1
		return false
	end
	max = Math.sqrt(n)
	for i in 2..max
		if n%i == 0
			return false
		end
	end
	return true
end

def ar_sosu?(ar)
	ar.each do |n|
		unless sosu?(n)
			return false
		end
	end
	true
end

sosu = [2,3,5,7]
keta = 2
kazu = 0
sam = 0
while kazu < 11
	sosu.each do |top|
		sosu.each do |last|
			for i in 0...10**(keta-2)
				n = top*10**(keta-1) + i*10 + last
				if ar_sosu?(kiritsume(n))
					p n
					kazu += 1
					sam += n
				end
			end
		end
	end
	keta += 1
end
puts "sam:#{sam}"
