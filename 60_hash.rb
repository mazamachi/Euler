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
		if self == nil
			return false
		end
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
			ans << (s+second.to_s).to_i
		end
	end
	ans.sort
end

hash = {}
n = 3
while true
	hash.each do |key,value|
		
