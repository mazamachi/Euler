N = 10000
class Integer
	def kaibun?
		s = self.to_s
		if s == s.reverse
			return true
		else
			return false
		end
	end
	def plus_rev
		n = self
		m = self.to_s.reverse.to_i
		n + m
	end
end
kosu = 0
for i in 1...N
	judge = true
	n = i
	49.times do 
		n = n.plus_rev
		if n.kaibun?
			judge = false
			break
		end
	end
	if judge
		p i
		kosu += 1
	end
end
p kosu