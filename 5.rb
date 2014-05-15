kazu = 20
a = []
for i in 1..kazu
	a << i
end

def dev(a,num)
	a.each_with_index do |i,ind|
		if i%num == 0
			a[ind] /= num
		end
	end
	a
end
seki = 1
for i in 0..(kazu-1)
	seki *= a[i]
	a = dev(a,a[i])
end
p seki