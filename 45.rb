class Integer
	def rokkaku_n
		self*(2*self-1)
	end

	def gokaku?
		if Math.sqrt(1+24*self)%6 == 5
			return true
		else
			return false
		end
	end

	def sankaku?
		if Math.sqrt(1+8*self)%2 == 1
			return true
		else
			return false
		end
	end
end

n = 144
a = []
while a.length<1
	num = n.rokkaku_n
	if num.gokaku?
		if num.sankaku?
			a << num
			p num
		end
	end
	n += 1
end
p a
