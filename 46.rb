def sosu?(n)
	max = Math.sqrt(n)
	for i in 2..max
		if n % i == 0
			return false
		end
	end
	return true
end
def gold?(n,sosu)
	max = (((n-1)/2)**0.5).to_i
	for i in 1..max
		if sosu.include?(n-2*i**2)
#			puts "#{n}=#{n-2*i**2}+2*#{i}^2"
			return true
		end
	end
	return false
end


sosu = [2]
gosei = []
n = 3
loop { 
	if sosu?(n)
		sosu << n
	else
		unless gold?(n,sosu)
			p n
			break
		end
	end
	n += 2
}