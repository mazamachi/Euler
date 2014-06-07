class Integer
	def san?
		if Math.sqrt(1+8*self)%2 == 1
			return true
		else
			return false
		end
	end
	def si?
		if Math.sqrt(self).to_i == self**0.5
			return true
		else
			return false
		end
	end
	def go?
		if Math.sqrt(1+24*self)%6 == 5
			return true
		else
			return false
		end
	end
	def roku?
		if Math.sqrt(1+8*self)%4 == 3
			return true
		else
			return false
		end
	end
	def nana?
		if Math.sqrt(9+40*self)%10 == 7
			return true
		else
			return false
		end
	end
	def hachi?
		if Math.sqrt(1+3*self)%3 == 2
			return true
		else
			return false
		end
	end
end
class Array
	def kami2(str)
		anss = []
		self.each do |s|
			if s[0..1] == str[-2..-1]
				anss << s
			end
		end
		anss
	end
end
#class Euler
def search_queue(shoki,check)
	a = [[shoki]]
	check.each do |ch| #ex. check == [3,4,5,6,7]
		b = []
		a.each do |ar| #ex. ar == ["1234","3467"]
			anss = $kakus[ch].kami2(ar[-1])
			if anss != []
				anss.each do |ans|
					b << (ar+[ans])
				end
			end
		end
		a = b
		if a == []
			return []
		end
	end
	a.each do |a_yoso|
		if a_yoso[0][0..1]==a_yoso[-1][-2..-1]
			return a[0]
		end
	end
	return []
end

$kakus = {3=>[],4=>[],5=>[],6=>[],7=>[],8=>[],}
for n in 1000 .. 9999
	if n.san?
		$kakus[3] << n.to_s
	end
	if n.si?
		$kakus[4] << n.to_s
	end
	if n.go?
		$kakus[5] << n.to_s
	end
	if n.roku?
		$kakus[6] << n.to_s
	end
	if n.nana?
		$kakus[7] << n.to_s
	end
	if n.hachi?
		$kakus[8] << n.to_s
	end
end
a = [3,4,5,6,7]
$checks = a.permutation.to_a
$kakus[8].each do |shoki|
	$checks.each do |check|
		answer = search_queue(shoki,check)
		if answer != []
			p [check,answer]
			p answer.inject(0){|sum,n| sum += n.to_i}
		end
	end
end

#end
