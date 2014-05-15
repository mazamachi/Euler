NUM = 100
def kaijo(n)
	seki = 1
	for i in 1..n
		seki *= i
	end
	seki
end
sum = 0
k = kaijo(NUM).to_s
p k
for i in 0...k.length
	sum += k[i].to_i
end
p sum