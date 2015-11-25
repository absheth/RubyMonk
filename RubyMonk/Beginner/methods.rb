def add_two(number1,numbe2)
  number1+numbe2
end

puts "How is it printing? #{add_two(1,2)} "

def add_three(number1,numbe2,number3=6)
  number1+numbe2+number3
end

puts "How is it printing? Default = 6 #{add_three(1,2)} "
#Output = 9

puts "------------------------------------------------"
puts "Splat operator.(*) List of parameters ==> Array."
def add1(*numbers)
  numbers.inject(0){
  |sum, number| sum + number
  }


end
puts add1(1)
puts add1(1,2)
puts add1(1,2,3)
puts add1(1,2,3,4)


puts "------------------------------------------------"
puts "Splat operator.(*) Array ==> list of parameters. "
def addAtoP(number_one, number_two, number_three)
  number_one + number_two +number_three
end

ab = [6,7,8]
puts "class of ab is '#{ab.class}'"
puts "Addition is #{addAtoP(*ab)}"

puts "------------------------------------------------"
puts "Splat operator.(*) Mixed Parameters. "

def add_MixedParams(message, *new_numbers)
  "#{message} : #{add1(*new_numbers)}"
end

puts add_MixedParams("After Addition",2,3,10)

puts "------------------------------------------------"
puts "Example of Mixed Parameters. "

def introduction_method(age,gender,*names)
  "Hey.. These are #{names.join(', ')}. Their age is #{age} and they are #{gender}"
end

puts introduction_method(23,"Male","Akash","Vivek","Akshay")


def calculator(n1,n2,function = {})
puts "Addition is #{n1 + n2}" if function[:add]
puts "Subtraction is #{n1 - n2}" if function[:diff]
puts "Multiplication is #{n1 * n2}" if function[:mult]
puts "Division is #{n1 / n2}" if function[:div]
end

calculator(1,2, add: true)
calculator(3,4, add: true, diff: true)
calculator(1,2, add: true, diff: true, mult: true)
calculator(27,3, add: true, diff: true, mult: true, div: true)

puts "-------------------------------------------"
puts "Example: inject, shift, is_a?, pop "
def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number }
end

def calculate(*arguments)
  # if the last argument is a Hash, extract it
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end
puts calculate(1,2,3,4,5,6,7,8,9, subtract: true)

puts "-------------------------------------------"

def introduction(age,gender,*names)
  "#{names.join (' ')}, age is #{age} and the gender is #{gender}"
end


puts introduction(23,"Male",'Akash','Vivek')
