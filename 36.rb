N = 1000000
sum = 0
for i in 1..N
	if i.to_s == i.to_s.reverse
		if i.to_s(2) == i.to_s(2).reverse
			p i
			sum += i
		end
	end
end
puts "sum:#{sum}"