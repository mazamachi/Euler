t0 = Time.now
NUM = 1000000

def junkai(n)
	a = []
	str = n.to_s
	for i in 0...str.length
		a << (str[i..-1] << str[0...i])
	end
	a.map(&:to_i)
end
def sosu?(n)
	if n == 1
		return false
	end
	max = Math.sqrt(n)
	for i in 2..max
		if n%i == 0
			return false
		end
	end
	return true
end

def ar_sosu?(ar)
	ar.each do |n|
		unless sosu?(n)
			return false
		end
	end
	true
end
a = []
for i in 1...NUM
	if ar_sosu?(junkai(i))
		a << i
	end
end
p a
p a.length
t1 = Time.now
p "#{t1-t0}s"


