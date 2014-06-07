class Integer 
	def sosu?
		if self <= 1
			return false
		else
			m = Math.sqrt(self)
			for i in 2..m
				if self%i == 0
					return false
				end
			end
			return true
		end
	end
end

class Array
	def array_sosu?
		self.each do |n|
			unless n.sosu?
				return false
			end
		end
		return true
	end
end

def kumiawase(ar)#ar中の2つのIntegerを任意に選んで組み合わせる。
	ans = []
	ar.each do |first|
		s = first.to_s
		(ar-[first]).each do |second|
			s << second.to_s
			ans << s.to_i
		end
	end
	ans.sort
end

a = [[3],[7,13,19,31],[5,11,17,23]]
i = 33
judge = true
while judge
	if i.sosu?
		if i%3==1
			a[1]<<i
		else
			a[2]<<i
		end
		#3を含むとき
		ar=[3,i]
		amari = i%3
		for hitotume in 0...a[amari].length-3
			for hutatume in hitotume+1...a[amari].length-2
				for mittume in hutatume+1...a[amari].length-1
					array = ar + [a[amari][hitotume]] + [a[amari][hutatume]] + [a[amari][mittume]]
#					p array.sort
					if kumiawase(array).array_sosu?
						judge = false
						ans = array
					end
				end
			end
		end
		ar = [i]
		for hitotume in 0...a[amari].length-4
			for hutatume in hitotume+1...a[amari].length-3
				for mittume in hutatume+1...a[amari].length-2
					for yottume in mittume+1...a[amari].length-1
						array = ar + [a[amari][hitotume]] + [a[amari][hutatume]] + [a[amari][mittume]] + [a[amari][yottume]]
#						p array.sort
						if kumiawase(array).array_sosu?
							judge = false
							ans = array
						end
					end
				end
			end
		end
	end
	i += 1
	p i
end
p ans