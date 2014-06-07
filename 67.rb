a = []
File.open("triangle.txt", "r") { |file|  
	file.each do |line|
		a << line.split(" ").map(&:to_i)
	end
}
def larger_add(a_ue,a_shita) #|a_ue|+1 = |a_shita|
	sams = []
	for i in 0..a_ue.length-1
		a_shita[i] >= a_shita[i+1] ? larger=a_shita[i] : larger=a_shita[i+1]
		sams[i] = a_ue[i]+larger
	end
	sams
end

sams = a[-1]
for i in 2..a.length
#	p sams
	sams = larger_add(a[-i],sams)
end
p sams[0]