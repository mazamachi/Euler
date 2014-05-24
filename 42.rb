File.open("./words.txt") { |file|  
	@words = file.read.split(",")
}
@words.each{|word| word.delete!("\"")}

def sankaku?(n)
	if (Math.sqrt(1+8*n))%2 == 1
		return true
	else 
		return false
	end
end

def atai(str)
	a = "A".ord
	sam = 0
	str.each_byte do |w|
		sam += (w-a+1)
	end
	sam
end

kazu = 0
@words.each do |word|
	if sankaku?(atai(word))
		kazu += 1
	end
end
p kazu