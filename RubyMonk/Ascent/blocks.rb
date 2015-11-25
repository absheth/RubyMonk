puts  "Starting blocks"
puts  "START-------------------------------START"
puts
puts 5 + 6
a = 7
b = 5
puts "~~~~~~~~~~"
puts

puts "a = #{a}"
puts "b = #{b}"
puts "a + b = #{a+b}"
puts "~~~~~~~~~~"
puts

puts "Lambda Block"
addition = lambda {|a,b| return a+b}
puts "Lambda : addition = lambda {|a,b| return a+b}"
puts "addition.call(1,2) ==> #{addition.call(1,2)}"
puts "~~~~~~~~~~"
puts

empty_block = lambda {}
puts "This is Empty Block :: empty_block ==> #{empty_block}"
puts empty_block.object_id
puts empty_block.class
puts empty_block.class.superclass
puts "~~~~~~~~~~"
puts

puts "Creating a class to show blocks as methods of the class."
class Calculator
  def add(a, b)
    return a + b
  end
end
puts "Calculator.new.add(2,3) ==> #{Calculator.new.add(2,3)}"
puts "~~~~~~~~~~"
puts

puts "Converting 'add' method to a 'proc'."
addition_method = Calculator.new.method("add")
puts "addition_method = Calculator.new.method('add')"
puts "addition_method.class ==> #{addition_method.class}"

puts
addition_proc = addition_method.to_proc
puts "addition_proc = addition_method.to_proc"
puts "addition_proc.class ==> #{addition_proc.class}"
puts
puts "addition.call(5,8) ==> #{addition.call(5,8)}"
puts "~~~~~~~~~~"
puts

puts "Passing a block of code to a method as a parameter and performing the operation."
def calculation(a, b, operation)
  operation.call(a, b)
end
puts "Addition :: calculation(3, 9 , lambda {|a, b| return a + b }) == > #{calculation(3, 9 , lambda {|a, b| return a + b })}"
puts "Subtraction :: calculation(3, 9 , lambda {|a, b| return a - b }) == > #{calculation(3, 9 , lambda {|a, b| return a - b })}"
puts "~~~~~~~~~~"
puts

puts"Using 'yield' to pass the block to a method and performing the operation."
def calculation(a, b)
  yield(a, b)
end
puts "Addition :: calculation(17, 13) {|a, b| return a + b} ==> #{calculation(17, 13) {|a, b| a + b}}"
puts "Subtraction :: calculation(17, 13) {|a, b| return a - b} ==> #{calculation(17, 13) {|a, b| a - b}}"
puts "Multiplication :: calculation(17, 13) {|a, b| return a * b} ==> #{calculation(17, 13) {|a, b| a * b}}"
puts "~~~~~~~~~~"
puts

puts "This is an example where neither the method nor 'yield' takes any paramter."
def noParametersMethods
  yield
end
puts
noParametersMethods { puts "Akash Sheth is a good boy. \nThis is printed WITHOUT passing it as a parameter."}
puts "~~~~~~~~~~"
puts

puts "Example showing that 'yield' is not a method. \n"
puts
def foo
  puts "puts yield :: Calling 'yield' without any paramters ==> #{yield}"
  puts
  puts "puts method(:foo) :: the 'method' method gives out the object representing the 'foo' ==> #{method(:foo)}"
  puts
  puts "puts method(:yield) :: 'yield' is not a method. It's a 'keyword'. \nHence, you cannot invoke it."
  puts
  puts "It will display following error ==> 'undefined method `yield' for class `Object' (NameError)'. "
end
foo {"Akash Sheth is a good boy."}
puts "~~~~~~~~~~"
puts

puts "Code given as below: "
puts "\ndef noBlock
  yield
end

noBlock"

puts
puts "Above technique of invoking 'noBlock' without any block will give following error ==> 'in `noBlock`: no block given (yield) (LocalJumpError)'."
puts "~~~~~~~~~~"
puts
puts "Using 'yield' keyword speeds up your code."
puts "Breaking all those object oriented programming rules buys us a bunch of speed."
puts
require "benchmark"

def calculation_with_explicit_block_passing(a, b, operation)
 operation.call(a, b)
end

def calculation_with_implicit_block_passing(a, b)
 yield(a, b)
end

Benchmark.bmbm(10) do |report|
 report.report("explicit") do
   addition = lambda { |a, b| a + b }
   1000.times { calculation_with_explicit_block_passing(5, 5, addition) }
 end

 report.report("implicit") do
   1000.times { calculation_with_implicit_block_passing(5, 5) { |a, b| a + b } }
 end
end
puts "~~~~~~~~~~"
puts

puts "Converting Implicit block to Explicit block."

def calculation(a, b, &implicit_block)
    implicit_block.call(a, b)
end

puts "Implicit to Explicit :: calculation(6,1) {|a, b| a + b} ==> #{calculation(6,1) {|a, b| a + b}}"
puts "~~~~~~~~~~"
puts

puts "Converting Explicit block to Implicit block."


def calculation(a, b)
    yield(a, b)
end
explicit_block = lambda {|a, b| a + b}
puts "Explicit to Implicit :: calculation(a, b, &explicit_block) ==> #{calculation(3, 8, &explicit_block)}"
puts "~~~~~~~~~~"
puts

addition = lambda {|a, b| a + b }
puts "addition = lambda {|a, b| a + b }"
puts "addition.call(1, 1) ==> #{addition.call(1, 1)}"
puts
addition = lambda {|a, b|
 a + b
}
puts "addition = lambda {|a, b|
 a + b
}"
puts "addition.call(2, 2) ==> #{addition.call(2, 2)}"
puts
addition = lambda do |a, b|
 a + b
end
puts "addition = lambda do |a, b|
 a + b
end"
puts "addition.call(3, 3) ==> #{addition.call(3, 3)}"
puts
puts"Below given syntax, though possible, is hardly used."
puts
addition = lambda do |a, b|; a + b; end
puts "addition = lambda do |a, b|; a + b; end"
puts "addition.call(4, 4) ==> #{addition.call(4, 4)}"
puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts

puts  "END-------------------------------END"
puts
