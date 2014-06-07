def yosumi(n)
	if n== 1
		return [1]
	else
		a = (n-1)**2+1
		b = (n-2)**2
		c = n**2
		return[(a+b)/2,a,(a+c)/2]		
	end
end

class Integer 
	def sosu?
		if self == 1
			return false
		end
		m = Math.sqrt(self)
		for i in 2..m
			if self%i == 0
				return false
			end
		end
		return true
	end
end
def array_how_p(a)
	kazu = 0
	a.each do |n|
		if n.sosu?
			kazu += 1
		end
	end
	return kazu
end

m = 0
kazu = 0
taikaku = 1
while true
	m += 1
	taikaku = 1+4*m
	kazu += array_how_p(yosumi(2*m+1))
	wari = kazu/taikaku.to_f
	if wari < 0.1
		break
	end	
end
p 2*m+1