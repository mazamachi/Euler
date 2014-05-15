a = (2**1000).to_s
sum = 0
for i in 0...a.length
	sum += a[i].to_i
end
p sum