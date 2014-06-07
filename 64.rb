class Murisu

	def initialize(kei,muri,yuri)
		@muri,@yuri,@kei = muri,yuri,kei
	end

	def muri_bunbo
		@kei.denominator
	end
	def p_muri
		p "(#{@kei})(√#{@muri}"+sprintf("%+d",@yuri) +")"
	end
	def gyaku_yurika
		bunbo = @muri-@yuri**2
		yuri = Murisu.new(Rational(1,@kei)/bunbo,@muri,-@yuri)
	end
	def integerize
		a = (@muri**0.5+@yuri).to_i
		a/@kei.denominator
	end
	def -(n)
		Murisu.new(@kei,@muri,@yuri-n)
	end
end

def renbun(n)
	i = Murisu.new(Rational(1,1),n,0)
#	i.p_muri
	first = i.integerize
	bunbo = 1
	i = i-first
#	i.p_muri
	a = []
	while true
		i = i.gyaku_yurika
#		i.p_muri
		seisu = i.integerize
		a << seisu
		bunbo = i.muri_bunbo
		if bunbo == 1
			break
		end
		i -= seisu*bunbo
#		i.p_muri
	end
	return [first,a]
end
class Integer
	def heihou?
		if self**0.5 == (self**0.5).to_i
			return true
		else
			return false
		end
	end
end
ans = 0
for i in 1..10000
	unless i.heihou?
		r = renbun(i)
		p r
		if (r[1].length)%2 == 1
			ans += 1
		end
	end
end
p ans
