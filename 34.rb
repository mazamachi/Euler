=begin
a = (1..9).to_a.inject(1){|r,n| r*n}
for i in 0..10
	if 	10**(i+1) <= (i+1)*a
		p i
	end
end
=>0..5
=end
def func_kaijo(n)
	(1..n).to_a.inject(1){|r,n| r*n}
end
kaijo = []
(0..9).to_a.each {|i| kaijo<<func_kaijo(i)}

ans = 0
for i in 3...kaijo[9]*7
	n = i
	sum = 0
	i.to_s.split(//).each do |j|
		sum += kaijo[j.to_i]
	end
	if sum == n
		puts n
		ans += n
	end
end
p ans