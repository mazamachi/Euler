str=<<-EOS
3
7 4
2 4 6
8 5 9 3
EOS
a = str.split("\n") #15
b = []
a.each do |ar|
	b << ar.split.map(&:to_i)
end
p b
go = [0,1]
seni = go.product(go,go)
p seni
max = 0
pat = 0
seni.each do |n|
	sum = b[0][0]
	x = 0
	for i in 1...4
		x += n[i-1]
		sum += b[i][x]
	end
	p sum,n
	max = sum if sum > max
	pat += 1
end
p pat,max

