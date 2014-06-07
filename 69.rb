N = 1000000
require 'prime'
class Integer
	def baisu?(array)
		array.each do |num|
			if self%num == 0
				return true
			end
		end
		return false
	end
	def get_soinsus
		a = []
		num = self
		root = (num**0.5).to_i
		Prime.each(root).each do |p|
			if num%p == 0
				a << p
				while num%p==0
					num = num/p
				end
			end
		end
		if num != 1
			a << num
		end
		a
	end
end
max = [0,0]
for i in 2..N
	p i
	soinsus = i.get_soinsus
	kazu = 0
	(1..i-1).each do |j|
		unless j.baisu?(soinsus)
			kazu += 1
#			p [i,j]
		end
	end

	if (i/kazu.to_f)>max[0]
		max[0] = i/kazu.to_f
		max[1] = i
	end
end
p max