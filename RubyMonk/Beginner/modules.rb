module FirstModule
  def push_ups
    "Phew, I need a break."
  end

  def do_more
    "I'm gonna work out more."
  end
end


class Gym
  include FirstModule

  def preacher_curls
    "I'm building biceps."
  end
end


class Dojo
  include FirstModule

  def do_legs
    "Today is my Legs day."
  end
end
puts ""

puts Gym.new.preacher_curls
puts Gym.new.push_ups
puts Gym.new.do_more
puts ""
puts Dojo.new.do_legs
puts Dojo.new.push_ups
puts Dojo.new.do_more
puts ""
puts FirstModule.class
puts FirstModule.class.superclass
puts FirstModule.class.superclass.superclass

puts "---------------------------------"
puts ""
module Perimeter
  # Your code here
  def perimeter
    sides.inject(0) {|sum, n| sum + n}
    #sum = sum *2
  end
end

class Rectangle
  # Your code here
  include Perimeter
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  include Perimeter
  # Your code here
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
end
  end
puts ""

puts "Perimeter of the Rectangle (3,4) is #{Rectangle.new(3,4).perimeter} "
puts ""
puts "---------------------------------"
puts ""

module Measurement
  class Array
    def initialize
      @size = 400
    end
  end
end

ourArray = Measurement::Array.new
rubyArray = Array.new

puts ourArray.inspect
p ourArray.class
p rubyArray.class

puts ""
puts "---------------------------------"

class T
   def initialize(i)
      @i = i
   end
   def to_s
      @i.to_s
   end
end

t = T.new 42
puts t   #=> 42
p t      #=> #<T:0xb7ecc8b0 @i=42>

puts ""
puts "---------------------------------"
puts ""

module  X
  module Y
    module Z
      class A
        def methodA
          "This is A."
        end
      end
    end
    class B
      def methodB
        "This is B."
      end
    end
    C = 16
  end
  D = 21
  #def methodE
  #  "This is E."
  #end
end
C=17
D=90

puts "X::Y::Z::A.new.methodA - #{X::Y::Z::A.new.methodA}"
puts "X::Y::B.new.methodB - #{X::Y::B.new.methodB}"
puts "C = #{C}"
puts "X::Y::C - #{X::Y::C}"
puts "D = #{D}"
puts "X::D - #{X::D}"
#puts "X::methodE - #{X::methodE}"


puts ""
puts "---------------------------------"
module Foo
  def self.included(absheth)
    puts "This is module level method and this module has been included in the class #{absheth}"
  end
end

class AB
  include Foo
end

#puts "AB.new.module_level_method ==> #{AB.new.module_level_method}"
#puts "AB.module_level_method ==> #{AB.module_level_method}"
puts ""
puts "---------------------------------"

module Abs
  def Akash
    "Akash Sheth is a good boy."
  end
end

class AKS
end

as = AKS.new
as.extend Abs

puts "as.Akash ==> #{as.Akash}"

puts ""
puts "---------------------------------"
module ABSHETH

  def asheth
    "THis is method asheth and the class is #{self}"
  end
end

class AABS
end

AABS.extend ABSHETH
puts AABS.asheth


puts ""
puts "---------------------------------"

module Phone
  def self.included(base)
    base.extend OnePlus
  end

  module OnePlus
    def function
      "This is a function from the module OnePlus."
    end
  end
end

class AkashSheth
  include Phone
end

puts "AkashSheth.function ==> #{AkashSheth.function}"
puts ""
puts "---------------------------------"

module Animal
  def self.extended(base)
    puts "class #{base} has been extended with module #{self}"
  end

  def roar
    "This is Tiger and I'm roaring."
  end

end

class Tiger
  extend  Animal
end

puts  "Tiger.roar ==> #{Tiger.roar}"

puts ""
puts "---------------------------------"



puts ""
puts "---------------------------------"
