puts	"START-------------------------------START"
puts

puts "enumerator = [3, 7, 14].each
enumerator.each { |e| p e + 1 }"
enumerator = [3, 7, 14].each

puts "enumerator.each { |e| p e + 1 } ==> #{enumerator.each { |e| p e + 1 }}"

puts 	"~~~~~~~~~~"
puts
enum = [0,-1, 3, 2, 1, 3].each_with_index
puts enum.inspect #"enum.inspect==> #{enum.inspect}"
puts
puts "enum.select { |element, index| element < index } ==> #{enum.select { |element, index| "" }}"

puts 	"~~~~~~~~~~"
puts
arr = [1,2,4,7,3,2,1,4,6,8,8,9,5,4,6,7,4,2,4,6,7,8,9]
puts "element ---> index"
arr.each_with_index	{|element, index| puts "   #{element}    --->   #{index}"}

puts 	"~~~~~~~~~~"
puts

hash = {:Akash=>"Sheth",:Isha=>"Chakna"}
puts "hash ==> #{hash}"
puts "Key Value Pair      ---> Position"
hash.each_with_index {|kvpair, kvposition| puts "#{kvpair}   --->  #{kvposition}"}
puts 	"~~~~~~~~~~"
puts
ary = [1,2,4,7,3,2,1,4,6,8,8,9,5,4,6,7,4,2,4,6,7,8,9]

def abc(ary)
	ary.inject(0) do |mem, var|
		mem += var
		mem 
	end	
end

puts "`inject` method :: abc(ary) ==> #{abc(ary)}"

puts 	"~~~~~~~~~~"
puts
arys = [1,2,4,7,3,2,1,4,6,8,8,9,5,4,6,7,4,2,4,6,7,8,9,0]
puts arys.inject({}) { |mem, var| mem.update(var => var) }
puts 	"~~~~~~~~~~"
puts

def occurrences(str)
  
  str.downcase.scan(/\w+/).uniq.inject({}) {|a,i| a.update(i => str.downcase.scan(/\w+/).count(i))}
  
end

puts occurrences("")

def occurrences1(str)
	str.scan(/\w+/).inject(Hash.new(0)) do |build, word| 
  	build[word.downcase] +=1
  	build
	end
end
puts occurrences1("")
puts 	"~~~~~~~~~~"
puts
abs = [2,3,4,6,8,6,4,3,6,7,9]
aks = [1,2,3,4,5,6,4,3,2,3,5]
puts "abs | aks ==> #{abs | aks}"
puts "abs & aks ==> #{abs & aks}"
puts "abs - aks ==> #{aks - abs}"
puts 	"~~~~~~~~~~"
puts


puts 	"~~~~~~~~~~"
puts

puts 	"~~~~~~~~~~"
puts

puts 	"~~~~~~~~~~"
puts
puts  	"END-------------------------------END"