def pan(ar) #配列を渡すと、残りの文字で数を作る関数。
	a = []
	if ar.length == 1
		return ar
	end
	for i in 0...ar.length
		copy = ar.dup
		ar.delete_at(i)
		b = ar
		ar = copy
		pan(b).each do |c|
			a[i]
			a << (ar[i].to_s<<c.to_s).to_i
		end
	end
	return a
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
max = 0
ar = []
for n in 1..9
	a = (1..n).to_a
	ar += pan(a)
end
#p ar

ar.each do |i|
	if sosu?(i) && i>max
		max = i
#		p i 
	end
end
p max
