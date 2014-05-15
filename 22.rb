File.open("./names.txt") { |io|
	Names = io.read.split(",")
}
Names.each do |name|
	name.delete!("\"")
end
Names.sort!
a = "A".ord-1
total = 0
Names.each_with_index do |name,index|
	sam = 0
	name.each_byte do |s|
		sam += s.ord-a
	end
	total += sam*(index+1)
end
p total