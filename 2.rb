sum = 0
an = 1
ann = 2

while an < 4000000
	annn = an + ann
	an = ann
	ann = annn
	if an%2 == 0
		sum += an
	end
end
p sum