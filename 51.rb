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

def kumi(sam,basho)
	if sam == 0
		return [Array.new(basho,0)]
	elsif basho == 1
		return [[sam]]
	end

	ans = []

	a = Array.new(basho)
	for n in 1..sam
		kumi(sam-n,basho-1).each do |a|
			ans << a.unshift(n)
		end
	end
	kumi(sam,basho-1).each do |a|
		ans << a.unshift(0)
	end
	ans
end

def gen(n,len)
	ret = []#返す配列
	keta = n.to_s.length
	ar = n.to_s.split("").map(&:to_i)
	a = kumi(len,keta+1)
	a.each do |p|
		ans = []
		for m in 0..9
			s = ""
			for i in 0..keta-1
				p[i].times do
					s << m.to_s
				end
				s << ar[i].to_s
			end
			p[-1].times do 
				s << m.to_s
			end
			ans << s
		end
		ret << ans
	end
#	p ret
	ret
end

def how_sosu(a)
	n = 0
	a.each do |k|
		if k.sosu?
			n += 1
		end
	end
	n
end


def answer(goal)
	keta = 1
	while true
		for k in 3..keta-1
			for a in 10**(keta-k-1)...10**(keta-k)
				ar = gen(a,k)
				p [a,k]
				ar.each do |p|
					p = p.map(&:to_i)
					if how_sosu(p) == goal
						p p
						ans = []
						p.each do |yoso|
							if yoso.sosu?
								ans << yoso
							end
						end
						if ans[0].to_s.length == keta
							return ans
						end
					end
				end
			end
		end
		keta += 1
	end
end