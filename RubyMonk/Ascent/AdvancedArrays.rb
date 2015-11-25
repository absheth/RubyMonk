puts  "START-------------------------------START"
puts "~~~~~~~~~~"
puts

akash, sheth = [13, 14]

puts "akash ==> #{akash}"
puts "sheth ==> #{sheth}"
puts "~~~~~~~~~~"
puts

ab = [11, 12]

puts "ab[0] ==> #{ab[0]}"
puts "ab.at(1) ==> #{ab.at(1)}"

puts "~~~~~~~~~~"
puts

as, abs = [[4, 8], [3, 16], [23, 42, 15]]
puts "as, abs = [[4, 8], [3, 16], [23, 42, 15]]"
puts "as --> #{as}"
puts
puts "abs --> #{abs}"

puts "~~~~~~~~~~"
puts

def compute(ary)
  return nil unless ary
  ary.map { |(a, b)| !b.nil? ? a + b : a }
end
puts "compute([[1,72],[3,12],[4]])  ==> #{compute([[1,72],[3,12],[4]])}"
puts "~~~~~~~~~~"
puts
puts "Array.instance_methods.count ==> #{Array.instance_methods.count}"
puts "Object.methods.count ==> #{Object.methods.count}"
puts "(Array.instance_methods - Object.methods).count ==> #{(Array.instance_methods - Object.methods).count}"

puts "~~~~~~~~~~"
puts
ab = [1,1,6,2,5,7,9,8,3,0,2,4,5,3,4,5,1,7,9,7,5,4,3,4,5,6,8,9,0,0,7,5,4,3]
as = [1,nil,6,nil,5,7,nil,8,3,nil,2,4,nil,3,nil,5,1,7,9,nil,5,4,3,nil,5,6,nil,9,0,nil,7,nil,4,3]
abs = [1,1,6,2,5,7,9,8,3,0,2,[[[4,[5,3],4],5,1,7],[9,7]],5,4,[3,4,[5,6],[8,9]],0,0,7,5,4,3]
puts "ab = [1,1,6,2,5,7,9,8,3,0,2,4,5,3,4,5,1,7,9,7,5,4,3,4,5,6,8,9,0,0,7,5,4,3]"
puts "as = [1,nil,6,nil,5,7,nil,8,3,nil,2,4,nil,3,nil,5,1,7,9,nil,5,4,3,nil,5,6,nil,9,0,nil,7,nil,4,3]"
puts "abs = [1,1,6,2,5,7,9,8,3,0,2,[[[4,[5,3],4],5,1,7],[9,7]],5,4,[3,4,[5,6],[8,9]],0,0,7,5,4,3]"
puts "ab.count ==> #{ab.count}"
puts "ab.size ==> #{ab.size}"
puts "ab.length ==> #{ab.length}"
puts "ab.count(6) ==> #{ab.count(6)}"
puts "ab.count {|a| a.odd?} ==> #{ab.count {|a| a.odd?}}"
puts "ab.count {|a| a.even?} ==> #{ab.count {|a| a.even?}}"
puts "ab.index(6) ==> #{ab.index(6)}"
puts "ab.index { |a| a.even?} ==> #{ab.index { |a| a.even?}}"
puts "ab.index { |a| a.odd?} ==> #{ab.index { |a| a.odd?}}"
puts "ab.flatten ==> #{ab.flatten}"
puts "[4, [8], [15], [16, [23, 42]]].flatten ==> #{[4, [8], [15], [16, [23, 42]]].flatten}"
puts "abs.flatten ==> #{abs.flatten}"
puts "abs.flatten(1) ==> #{abs.flatten(1)}"
puts "abs.flatten(2) ==> #{abs.flatten(2)}"
puts "as.compact ==> #{as.compact}"
puts "ab.zip(as.compact) ==> #{ab.zip(as.compact)}"
puts "ab.slice(2) ==> #{ab.slice(2)}"
puts "ab.slice(1..7) ==> #{ab.slice(1..7)}"
puts "`join` method returns String :: as.compact.join(, ) ==> #{as.compact.join(", ")}"
puts "ab.shift ==> #{ab.shift} "
puts "ab.shift ==> #{ab.shift} "
puts "ab ==> #{ab}"
puts "ab.shift(6) ==> #{ab.shift(6)} "
puts "ab ==> #{ab}"
puts "ab.unshift(1) ==> #{ab.unshift(1)}"
puts "ab.unshift(2,3,4) ==> #{ab.unshift(2,3,4)}"
puts "~~~~~~~~~~"
puts
puts "Stack And Queues"
class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end

  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end

  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end

  def size
    @size
  end

  def look
    @store[@top]
  end

  private

  def full?
    @top == @size - 1
  end

  def empty?
    @top == -1
  end
end

stack = Stack.new(5)
puts "stack = Stack.new(5)"
stack.push(3)
stack.push(4)
stack.push(6)
stack.push(1)
stack.push(2)
=begin
stack.push(8)
stack.push(7)
stack.push(9)
=end
puts "stack.push(3)
stack.push(4)
stack.push(6)
stack.push(1)
stack.push(2)
"
puts "stack ==> #{stack.inspect }"
puts "stack.look ==> #{stack.look}"
puts "stack.pop ==> #{stack.pop}"
puts "stack.pop ==> #{stack.pop}"
puts "stack.pop ==> #{stack.pop}"
puts "stack.pop ==> #{stack.pop}"
puts "stack.pop ==> #{stack.pop}"
puts "stack.pop ==> #{stack.pop}"
puts "stack.pop ==> #{stack.pop}"
puts "stack.pop ==> #{stack.pop}"
stack.push(11)
stack.push(12)
stack.push(13)
stack.push(14)
stack.push(24)
puts "stack.push(11)
stack.push(12)
stack.push(13)
stack.push(14)
stack.push(24)"
puts "stack ==> #{stack.inspect }"
puts "stack.look ==> #{stack.look}"
puts "stack.pop ==> #{stack.pop}"
puts "stack.look ==> #{stack.look}"
puts "~~~~~~~~~~"
puts


puts "~~~~~~~~~~"
puts

puts  "END-------------------------------END"
