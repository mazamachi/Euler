def cube_yoso(n)
	cube = (n**3).to_s
	a = cube.split("")
	a.sort
end

ans = Hash.new
n = 1
judge = true
while judge
	cu_ar = cube_yoso(n)
	if ans[cu_ar]==nil
		ans[cu_ar] = [1,n]
	else
		ans[cu_ar][0] += 1
		ans[cu_ar] << n
		if ans[cu_ar][0] == 5
			p ans[cu_ar]
			judge = false
		end
	end
	n += 1
end
