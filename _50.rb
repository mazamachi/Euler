class Integer
	def _sosu?
		if self == 1
			return false
		end
		max = Math.sqrt(self).to_i
		a = max.primes
		for i in 0...a.length
			if self % a[i] == 0
				return false
			end
		end
		true
	end

	def _primes
		a = [2]
		for i in 3..self
			judge = 0
			max = Math.sqrt(i)
			a.each do |p|
				if p > max
					break
				end
				if i%p==0
					judge = 1
				end
			end
			if judge == 0
				a << i
			end
		end
		a
	end
end