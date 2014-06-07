N = 1000000
require 'prime'
class Integer
	def get_answer
		soinsus=self.soinsubunkai
		ans = 1.0
		soinsus.each do |p|
			ans /= (1-1.0/p)
		end
		ans
	end
	def soinsubunkai
		a = []
		Prime.prime_division(self).each do |kumi|
			a << kumi[0]
		end
		a
	end
end

max = [0,0]
for i in 2..N
 	p i
	ans = i.get_answer
	if (ans)>max[0]
		max[0] = ans
		max[1] = i
	end
end

p max