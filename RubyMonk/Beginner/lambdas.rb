puts ""
puts "LAMBDA"
puts "------------------------------------"
l = lambda {"Akash Sheth is a good boy."}

puts "Class ==> #{l.class}"
puts l.call

puts "------------------------------------"

la = lambda do | age,*names, gender|
  return "Name ==> #{names.join(' ')}. Age ==> #{age}. Gender ==> #{gender}"
end

puts la.call( 23,"Akash","Vivek","Male")

puts "------------------------------------"

def demo(number)
  yield(number)
end
puts demo(10) {|number| number + 1}

puts ""
