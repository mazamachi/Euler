N = 1000000
require 'prime'
class Integer
=begin
	def baisu?(array)
		array.each do |num|
			if self%num == 0
				return true
			end
		end
		return false
	end
=end
	def get_answer
		soinsus = self.soinsubunkai
		kumis = []
		for i in 1..soinsus.length
			kumis += soinsus.combination(i).to_a
		end
		kazu_no = 0
		kumis.each do |kumi|
			seki = kumi.inject(1) { |mem, var| mem *= var}
			kazu_no += (-1)**(kumi.length-1)*((self-1)/seki)
		end
		kazu_so = self-kazu_no-1
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
	kazu = i.get_answer
	if (i/kazu.to_f)>max[0]
		max[0] = i/kazu.to_f
		max[1] = i
	end
end

p max