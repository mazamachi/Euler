NUM = 1000
def mat_mul(a,b)
	c = []
	for i in 0...a.length
		c[i] = []
	end
	for i in 0...a.length
		for j in 0...b[0].length
			sum = 0
			for k in 0...a[0].length
				sum += a[i][k]*b[k][j]
			end
			c[i][j] = sum
		end
	end
	c
end

fib = [[0,1],[1,1]]
a = [[1],[1]]
n = 2

while a[1][0] < 10**(NUM-1)
	a = mat_mul(fib,a)
	n += 1
end
p n