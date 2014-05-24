def pan(ar) #配列を渡すと、残りの文字で数を作る関数。
	a = []
	if ar.length == 1
		return [ar[0].to_s]
	end
	for i in 0...ar.length
		copy = ar.dup
		ar.delete_at(i)
		b = ar
		ar = copy
		pan(b).each do |c|
			a[i]
			a << (ar[i].to_s<<c.to_s)
		end
	end
	return a
end
a = pan((0..9).to_a).map(&:to_i)
p a
def bubun(p)
	sosu = [2,3,5,7,11,13,17]
	for i in 1..7
		if (p.to_s[i..i+2]).to_i % sosu[i-1] != 0
			return false
		end
	end
	true
end

sam = 0
a.each do |p|
	if bubun(p)
		sam += p
		p p
	end
end
p sam
