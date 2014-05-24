N = 100
class Integer
	def sujiwa
		s = self.to_s
		sam = 0
		s.split("").each do |i|
			sam += i.to_i
		end
		sam
	end
end

max = 0
for a in 1...N
	for b in 1...N
		if (a**b).sujiwa > max
			p [a,b]
			max = (a**b).sujiwa
		end
	end
end
p max