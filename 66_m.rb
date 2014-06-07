require 'prime'
class Integer
	def nijo?
		if self==((self**0.5).to_i)**2
			return true
		else
			return false
		end
	end
end

def solve_dio_m(d)
	if d.nijo?
		return nil
	end
	m = 1
	while true
		koho_p = m*(d*m+2)
		if koho_p.nijo?
			return [d*m+1,koho_p**0.5]
		end
		koho_m = m*(d*m-2)
		if koho_m.nijo?
			return [d*m-1,koho_m**0.5]
		end
		m += 1
	end
end
max = 0
d = 0
Prime.each(1000) do |i|		
	p i
	x = solve_dio_m(i)
	p x
	if x!=nil
		if x[0]>max
			max = x[0]
			d = i
		end
	end
end
p [max,d]