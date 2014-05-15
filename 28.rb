NUM = 1001
sum = 0
for i in 1..NUM
	if i%2 == 0
		sum += i**2 + 1 #左下
		sum += (i**2+1+(i-1)**2)/2 #右下
	else
		sum += i**2 #右上
		sum += ((i-1)**2+1+i**2)/2 if i!=1  #左上
	end	
end
p sum 