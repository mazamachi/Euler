year = 1900
mon = 1
day = 1
num = 0
days = [31,28,31,30,31,30,31,31,30,31,30,31]
while year<2001
	if day == 0
		num += 1 if year != 1900
	end
	if mon == 2	&& year%4 == 0 
		unless year%100 == 0 && year%400 != 0
			day += 1
		end
	end
	day = (day+days[mon-1])%7
	if mon == 12
		mon = 1
		year += 1
	else
		mon += 1
	end
end
p num