class Rectangle
def initialize(length, breadth)
  @length = length
  @breadth = breadth
end
def perimeter
  2 * (@length * @breadth)
end
end

def reverse_sign(number)
	puts 0 - number

end

puts 1.next
abcd =  1.method("next").call
puts abcd

reverse_sign(0)

def do_nothing
end

puts do_nothing

def do_something
  return
  puts "Akash Sheth is a good boy."
end


puts do_something.class
