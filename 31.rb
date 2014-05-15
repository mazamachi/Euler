def coinsam(hash)
	sam = 0
	hash.each do |a|
		sam += a[0]*a[1]
	end
	sam
end
coins = {200=>0,100=>0,50=>0,20=>0,10=>0,5=>0,2=>0,1=>0}

money = 200

def ans(money,max)
	a = [200,100,50,20,10,5,2,1]
	if money < 0
		return 0
	elsif money==0
		return 1
	elsif max == 2
		return 1
	end
	kazu = 0
	a.each do |coin|
		if coin<max
			i = 1
			while coin*i <= money
				kazu += ans(money-coin*i,coin)
#				p [coin,i,kazu]
				i += 1
			end
		end
	end
	kazu
end
p ans(200,201)