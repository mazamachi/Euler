class Integer
	def amari(hen)
		if self%hen==0
			return hen
		else
			return self%hen
		end
	end
end
class Array
	def to_s
		str = ""
		self.each do |num|
			str << num.to_s
		end
		str
	end
end

hen = 5
patterns = (1..2*hen).to_a.permutation(hen+1).to_a
answers = []
patterns.each do |nums|
	judge = true
	left = (1..2*hen).to_a-nums
	a = nums[0..2].to_s
	sum = nums[0]+nums[1]+nums[2]
	first = nums[0]
	for i in 2..hen
		soto = sum-(nums[i]+nums[(i+1).amari(hen)])
#		p [nums,soto]
		if soto>first && left.include?(soto)
			a << [soto,nums[i],nums[(i+1).amari(hen)]].to_s
			left.delete(soto)
		else
			judge = false
			break
		end
	end
	if judge
		if a.length == 16
			answers << a.to_i
		end
	end
end
p answers
p answers.sort[-1]
