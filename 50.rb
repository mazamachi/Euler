N = 1000000
class Integer
	def sosu?
		if self == 1
			return false
		end
		max = Math.sqrt(self)
		for i in 2..max
			if self % i == 0
				return false
			end
		end
		true
	end

	def primes
		a = []
		for i in 1..self
			if i.sosu?
				a << i
			end
		end
		a
	end
end

def less_primes(n,ar) #素数の配列が与えられた時、n以下で最大の素数の番号(0..)を返す
	if n == ar[-1]
		return ar.length-1
	end
	if n <= 1
		return 0
	end
	i = 0
	while ar[i] <= n
		i += 1
	end
	return i-1
end

def wa_prime(n,ar,saicho)
	#a = less_primes(n/saicho,ar)
	m = n
	for start in 0..less_primes(n/saicho,ar)
		i = start
		while n > 0
			n -= ar[i]
			i += 1
		end
		if n == 0
			#p [m,ar[start...i]]
			return i - start
		end
		n = m
	end
	return 0
end

saicho = 1
ans = 1
a = N.primes
for i in 0...a.length
	wa = wa_prime(a[i],a,saicho)
	if wa > saicho
		saicho = wa
		ans = a[i]
		p ans
	end
end
p ans


