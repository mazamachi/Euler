ar = []
File.open("cipher1.txt") { |file|  
	file.each do |line|
		ar += line.split(",").map(&:to_i)
	end
}
#p ar
a = "a".ord
z = "z".ord
kagi = []
catch(:exit){
for kagi[0] in a..z
	for kagi[1] in a..z
		for kagi[2] in a..z
			ans = ""
			sum = 0
			for i in 0...ar.length
				ans << (ar[i]^kagi[i%3]).chr
				sum += ar[i]^kagi[i%3]
			end
			if /the/ =~ ans && /that/ =~ ans
				p ans
				p sum
			end
		end
	end
end
}



