require 'prime'
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
	return [first]+a
end
class Integer
	def nijo?
		if self==((self**0.5).to_i)**2
			return true
		else
			return false
		end
	end
end

def renbuntenkai(a)
	bunsu = Rational(1,a[-1])
	len = a.length
	for i in 1...a.length-1
		bunbo = a[-i-1]+bunsu
		bunsu = Rational(1,bunbo)
	end
	a[0] + bunsu
end


def solve_dio_r(d)
	if d.nijo?
		return nil
	end
	ar_ren = renbun(d)
	tenkai = renbuntenkai(ar_ren[0..-2])
	x = tenkai.numerator
	y = tenkai.denominator
	if x**2-d*y**2 == 1
		return [x,y]
	else
		return [x**2+y**2*d,2*x*y]
	end
end
max = 0
d = 0
Prime.each(1000) do |i|		
	p i
	xy = solve_dio_r(i)
	p xy
	if xy!=nil
		if xy[0]>max
			max = xy[0]
			d = i
		end
	end
end
p [max,d]