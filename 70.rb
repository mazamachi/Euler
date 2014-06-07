#構成する素因数の数が少ないほどn/phi(n)は小さい
#構成する素数が大きいほどn/phi(n)は小さい
N=10**7
require 'prime'
$p_array = Prime.each(N-1).to_a
class Integer
	def soinsubunkai
		a = []
		Prime.prime_division(self).each do |kumi|
			a << kumi[0]
		end
		a
	end
	def totient
		soinsus=self.soinsubunkai
		ans = self
		soinsus.each do |p|
			ans *= (1-1.0/p)
		end
		ans.to_i
	end
	def chikan?(taisho)
		a1 = self.to_s.split("").sort
		a2 = taisho.to_s.split("").sort
		if a1 == a2
			return true
		else
			return false
		end
	end
end
class Prime
	def hanni(min,max)
		if min>=max
			return []
		end
		a = $p_array
		for i in 0...a.length
			if a[i]>=min
				left = i
				break
			end
		end
		for i in 1..a.length
			if a[-i]<=max
				right = -i
				break
			end
		end
		return a[left..right]
	end
end

def get_prime_kumis(n,min,max)
	if min>=max
		return []
	end
	if n == 1
		a = []
		Prime.hanni(min,max).each do |p|
			a << [p]
		end
		return a
	else
		a = []
		Prime.hanni(min,((max**(1.0/n)).to_i)).each do |p|
			get_prime_kumis(n-1,p+1,max/p).each do |ar|
				ar.unshift(p)
				a << ar
			end
		end
		return a
	end
end

def totient_array(soinsus)
	ans = soinsus.inject(1) { |mem, var| mem *= var }
	soinsus.each do |p|
		ans *= (1-1.0/p)
	end
	ans.to_i
end

kosu = 2
judge = true

min = [100,0]
while judge
	get_prime_kumis(kosu,1,N-1).each do |kumi|
		seki = kumi.inject(1) { |mem, var|  mem *= var}
		p seki
		to = totient_array(kumi)
		if seki.chikan?(to)
			judge = false
			if min[0] > seki/to.to_f
				min = [seki/to.to_f,seki]
				p "#{seki}is chikan"
			end
		end
	end
	kosu += 1
end
p min