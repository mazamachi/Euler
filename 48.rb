def jo10(n)
	seki = "1"
	for i in 1..n
		k = seki[[-10,-(seki.length)].max..-1].to_i
		seki = (k*n).to_s
		seki = seki[[-10,-(seki.length)].max..-1]
	end
	seki.to_i
end

def sam10(n)
	sam = 0
	for i in 1..n
		sam += jo10(i)
	end
	sam.to_s[-10..-1].to_i
end

def sam(n) #おまけ こっちのほうが早かった…
	wa = 0
	for i in 1..n
		wa += i**i
	end
	wa.to_s[-10..-1].to_i
end
p sam10(1000)