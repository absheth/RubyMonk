puts "---------------------------------------"
puts ""
=begin
def kaprekar?(k)
  no_of_digits = k.to_s.size
  puts no_of_digits
  square = (k ** 2).to_s
  puts square
  second_half = square[-no_of_digits..-1]
  puts second_half
  first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2]

  k == first_half.to_i + second_half.to_i
end

kaprekar?(457)
=end

io_streams = Array.new

ObjectSpace.each_object(IO) {|x| io_streams << x }

p io_streams
puts ""
puts "---------------------------------------"
puts""

p STDIN.class
p STDIN.fileno

p STDOUT.class
p STDOUT.fileno

p STDERR.class
p STDERR.fileno
puts ""
puts "---------------------------------------"
puts""

p $stdin.object_id
p STDIN.object_id
puts
p $stdout.object_id
p STDOUT.object_id
puts
p $stderr.object_id
p STDERR.object_id
puts ""
puts "---------------------------------------"
puts""


mode = "r+"
file = File.open("modules.rb", mode)
puts file.inspect
puts file.readlines
file.close

puts ""
puts "---------------------------------------"
puts""

=begin #File Creation
ABSHETH = File.open("information.txt","w") do |file|
  file.puts "The name is Sheth.. Akash Sheth."
end
p ABSHETH
=end
count = 1
newfile = File.open("information.txt","r")
  while(line = newfile.gets)
    puts "#{count} : #{line}"
    count +=1
end

newfile.close

puts ""
puts "---------------------------------------"
puts""


ab = File.open("information.txt","r+")
p ab.read (6)
#ab.rewind

buffer  = ""
p buffer
p ab.read(23, buffer)
p buffer
ab.close
puts ""
puts "---------------------------------------"
puts""

p File.read("information.txt")
puts
puts
File.open("information.txt") do |f|
  f.seek(20) # IO::SEEK_SET
  p f.read(11)
end
puts
puts "---------------------------------------"
puts




lines = File.readlines("information.txt")
p lines
p lines[0]

puts ""
puts "---------------------------------------"
