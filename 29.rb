NUM = 100
kazu = {}
for a in 2..NUM
	for b in 2..NUM
		kazu[a**b] = 1
	end
end
 p kazu.length