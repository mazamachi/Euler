#for n in 1..10
#	p n if 10**(n-1)<=n*9**5 && n*9**5<10**n
#end 6桁
Keta = 6
Jo = 5
ans = 0
for i in 2..10**Keta-1
	kazu = i
	sam = 0
	i = i.to_s
	for j in 0...i.length
		sam += (i[j].to_i)**Jo
	end
	if kazu == sam
		p kazu
		ans += kazu
	end
end
p ans