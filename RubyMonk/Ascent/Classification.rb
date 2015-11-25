puts  "START-------------------------------START"
puts

puts "\"A String\".is_a?(String) ==> #{"A String".is_a?(String)}" # true
puts "1.is_a?(String) ==> #{1.is_a?(String)}"
puts "~~~~~~~~~~"
puts

puts "Float.superclass ==> #{Float.superclass}"
puts "Numeric.superclass ==> #{Numeric.superclass}"
puts "Object.superclass ==> #{Object.superclass}"
puts "BasicObject.superclass ==> #{BasicObject.superclass}"
puts "~~~~~~~~~~"
puts

class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
end
puts "Rectangle.new.perimeter(3, 3) ==> #{Rectangle.new(3, 3).perimeter}"
puts "Rectangle.new.perimeter(4, 6) ==> #{Rectangle.new(4, 6).perimeter}"
puts "~~~~~~~~~~"
puts
puts "'Square' class inherits perimeter method from 'Rectangle' class using `<`."
class Square < Rectangle
  def initialize(side)
    @length = @breadth = side
  end
end

puts "Square.new(6).perimeter ==> #{Square.new(6).perimeter}"
puts "~~~~~~~~~~"
puts

puts "Overriding 'map' method in `MyArray` class which is subclass of `Array`. "
class MyArray < Array
  def map
    'Akash Sheth is a good boy.'
  end
end
puts "Array.new([1, 3]).map { |n| n + 1 }  ==> #{Array.new([1, 3]).map { |n| n + 1 } }"
puts "MyArray.new([1, 3]).map { |n| n + 1 } ==> #{MyArray.new([1, 3]).map { |n| n + 1 }}"
puts "~~~~~~~~~~"
puts

class A
  def display
    "This is A::display"
  end
end

class B < A
  def display
    super + ". This is B::display"
  end
end

puts A.new.display
puts B.new.display
puts "~~~~~~~~~~"
puts


puts "~~~~~~~~~~"
puts


puts "~~~~~~~~~~"
puts


puts "~~~~~~~~~~"
puts


puts "~~~~~~~~~~"
puts


puts "~~~~~~~~~~"
puts

puts  "END-------------------------------END"
