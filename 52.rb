def inc(n,i)
	n1 = n.to_s.split("").uniq
	ni = (n*i).to_s.split("").uniq
	if n1.length != ni.length
		return false
	end
	n1.each do |k|
		unless ni.include?(k)
			return false
		end
	end
	return true
end

n = 1
judge = true
while judge
	for i in 2..6
		unless inc(n,i)
			break
		end
		if i == 6
			judge = false
		end
	end
	n += 1
end
n -= 1
a = []
for i in 1..6
	a << n*i
end
p a
p n