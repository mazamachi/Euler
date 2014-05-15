NUM = 999
a = {}
a[0]=0
a[1]=3 #one 3
a[2]=3 #two 3
a[3]=5 #three 5
a[4]=4 #four 4
a[5]=4 #five 4
a[6]=3 # six 3
a[7]=5 # seven 5
a[8]=5 # eight 5
a[9]=4 # nine 4
a[10]=3 # ten 3
a[11]=6 # eleven 6
a[12]=6 # twelve 6
a[13]=8 # thirteen 8
a[14]=8 # fourteen 9
a[15]=7 # fifteen 7
a[16]=7 # sixteen 7
a[17]=9 # seventeen 9
a[18]=8 # eighteen 8
a[19]=8 # nineteen 8
a[20]=6 # twenty 6
a[30]=6 # thirty 6
a[40]=5 # forty 5
a[50]=5 # fifty 5
a[60]=5 # sixty 5
a[70]=7 # seventy 7
a[80]=6 # eighty 6
a[90]=6 # ninety 6
#100 hundred 7
#1000 one thousand 11
sum = 0
for i in 1..NUM
	n = sum
	if i >= 100
		sum += (a[i/100]+7)
		if i%100 != 0
			sum += 3 #and
		end
	end
	if i%100 < 20
		sum += a[i%100]
	else
		sum += a[(i%100)/10*10]+a[i%10]
	end
	print i," ",sum-n,"\n"
end
sum = sum + 11
p sum