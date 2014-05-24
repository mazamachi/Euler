def dele(ar,k)
	if ar.length == 1
		return ar[0]
	else
		ar.delete(k)
		return ar[0]
	end
end
ans = 1
for bunbo in 11..99
	for bunsi in 10...bunbo
		r = Rational(bunsi,bunbo)
		ar_bo = [bunbo.to_s[0].to_i,bunbo.to_s[1].to_i].uniq
		ar_si = [bunsi.to_s[0].to_i,bunsi.to_s[1].to_i].uniq
#		p [ar_bo,ar_si]
		seki = ar_bo & ar_si
#		p seki
		seki.each do |del|
			if dele(ar_bo,del) != 0
#				p [bunbo,bunsi,del]
#				p dele(ar_si,del)
#				p dele(ar_bo,del)
				s = Rational(dele(ar_si,del),dele(ar_bo,del))
				if r == s
					if del != 0
						p [bunsi,bunbo]
						ans *= r
					end
				end
			end
		end
	end
end
p ans
p ans.denominator