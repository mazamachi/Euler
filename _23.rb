
class Integer
  def divisor
    n=self
    ans=[]
    an=[]
    rtn=(n**0.5).to_i
    (1..rtn).each do |i|
      ans.push i if n%i == 0
    end
    an=ans.map{|x| n/x}.reverse
    ans=(ans.concat an).uniq
    return ans
  end
  def kajosu?
    n=self
    return false if n<1
    k=n.divisor.inject(:+)-n
    return k>n
  end
end


ans=(0..28123).to_a
a=ans.select{|x| x.kajosu?}
p ans.select{|x| x.kajosu?}.length
b=Array.new a
a.each do |i|
  b.each do |j|
    break if i+j>28123 
    ans[i+j]=0
  end
  b.shift
end
#p ans
p ans.inject(:+)