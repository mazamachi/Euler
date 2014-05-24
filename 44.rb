#1,5,...,d-c,...,b-a,...,a,...,c,...,b,...,d,...とはなりえない
#ゆえ、最初に出てきた差が最小
def gokaku?(n)
	if Math.sqrt(1+24*n)%6 == 5
		return true
	else
		return false
	end
end

sa = -1
gokakuretu = [1]
while sa < 0
	b = false
	big = gokakuretu[-1]
	for i in 0...gokakuretu.length
		small = gokakuretu[i]		
		if gokaku?(big+small) && gokaku?(big-small)
			p [big,small]
			sa = big-small
			#memo = gokakuretu.length-1#調べ終わった配列番号
			b = true
		end
	end
	if b == true
		break
	end
	n = gokakuretu.length + 1
	gokakuretu << n*(3*n-1)/2
end
p sa
=begin
changed = true
while changed
	changed = false
	n = (sa+1)/3
	for i in (memo+1)..n
		gokakuretu << i*(3*i-1)/2
		for i in 0...gokakuretu.length
			big = gokakuretu[-1]

			small = gokakuretu[i]
			if gokaku?(big+small) && gokaku?(big-small)
				sa = big-small
				p [big,small]
				changed = true
			end
		end
	end
end
=end