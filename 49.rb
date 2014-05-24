class String
	def delete_at(i)
		if i == 0
			return self[1..-1]
		elsif i == self.length-1
			return self[0..-2]
		else
			return self[0...i]<<self[i+1..-1]
		end
	end
end
class Integer
	def sosu?
		if self == 1
			return false
		end
		max = Math.sqrt(self)
		for i in 2..max
			if self%i == 0
				return false
			end
		end
		true
	end
end

def chikan(ns)
	a = []
	len = ns.length
	if len == 1
		return [ns]
	else
		for i in 0...len
			s = ns[i]
			chikan(ns.delete_at(i)).each do |t|
				a << (s+t)
			end
		end
	end
	a
end

def sort_chikan(n)
	chikan(n.to_s).map(&:to_i).uniq.sort
end

for n in 1000..9999
	a = sort_chikan(n)
	for first in 0..a.length-3
		if a[first].sosu? && a[first].to_s.length == 4
			for second in first+1 ..a.length-2
				last = 2*a[second]- a[first]
				if a[second].sosu? && a.include?(last)
					if last.sosu?
						p [a[first],a[second],last]
						p a[first].to_s<<a[second].to_s<<last.to_s
					end
				end
			end
		end
	end
end


