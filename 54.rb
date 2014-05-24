JUN = ["2","3","4","5","6","7","8","9","T","J","Q","K","A"]
class Array
	def sort_p
		self.sort{|a,b| JUN.index(a[0]) <=> JUN.index(b[0])}
	end
end

def hikaku(a1,a2)
	i = 0
	while a1[i][0] == a2[i][0]
		i += 1
	end
	if JUN.index(a1[i][0]) < JUN.index(a2[i][0]) 
		return 2
	else
		return 1
	end
end

def delete_a(ar,s)
	ans = []
	for i in 0...5
		unless /#{s}/ =~ ar[i] 
			ans << ar[i]
		end
	end
	ans
end

def value(ar)
	cards = Hash.new(0)
	for i in 0...5
		cards[ar[i][0]] += 1
	end
	a = []
	b = {}
	cards.each do |key,val|
		if val >= 2
			a << val
			b[val] = key
		end
	end
	a.sort!
	if a == [4]
		ar = delete_a(ar,b[4])
		return ["four card",[b[4],ar[0]]]
	elsif a == [2,3]
		return ["full house",[b[3],b[2]]]
	elsif a == [3]
		ar = delete_a(ar,b[3])
		return ["three card",[b[3]]+ar.sort_p.reverse]
	elsif a == [2,2]
		c = []
		amari = 0
		cards.each do |key,val|
			if val == 2
				c << key
			else
				amari = val
			end
		end
		return ["two pair",c.sort_p.reverse<<amari]
	elsif a == [2]
		ar = delete_a(ar,b[2])
		return ["one pair",[b[2]]+ar.sort_p.reverse]
	else #ペアがひとつもないときはストレートなどの可能性
		return suit(ar)
	end
end

def straight(ar)
	ar = ar.sort_p
	start = JUN.index(ar[0][0])
	for i in 1..4
		if ar[i][0] != JUN[start+1]
			return false 
		end
		start += 1
	end
	return true
end

def flush(ar)
	su = ar[0][1]
	for i in 1..4
		if ar[i][1] != su
			return false
		end
	end
	return true
end

def suit(ar)
	ar = ar.sort_p
	if straight(ar)
		if flush(ar)
			if ar[0][0]=="T"
				return ["royal flush"]
			else
				return ["straight flush",ar[0]]
			end
		else
			return ["straight",ar[0]]
		end
	elsif flush(ar)
		return ["flush",ar.reverse]
	else
		return ["high card",ar.reverse]
	end
end

YAKU = ["royal flush","straight flush","four card","full house","flush","straight","three card","two pair","one pair","high card"]

def vs(ar1,ar2)
	kekka1 = value(ar1)
	kekka2 = value(ar2)
	p [kekka1,kekka2]
	if YAKU.index(kekka1[0]) < YAKU.index(kekka2[0])
		return 1
	elsif YAKU.index(kekka1[0]) > YAKU.index(kekka2[0])
		return 2
	else
		return hikaku(kekka1[1],kekka2[1])
	end
end

battles = []
File.open("./poker.txt") {|file|
	file.each do |line|
		a = line.split
		battles << [a[0..4],a[5..9]]
	end
}
won1 = 0
battles.each do |b|
	i = vs(b[0],b[1])
	p [b,i]
	if i == 1
		won1 += 1
	end
end
p won1