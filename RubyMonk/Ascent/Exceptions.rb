puts  "START-------------------------------START"
puts "~~~~~~~~~~"
puts
def extract_first_name(name)
  first = name.split(" ").first
  puts first
  first
  raise Exception.new("Ended after first splitting.")
end

def casual_name(names)
  casual = names.map {|name| extract_first_name(name)}
  puts "Extracted names ==> #{casual}"

  casual

end
begin
  puts casual_name(["Akash Sheth","Darshan Sheth", "Bhupendra Sheth", "Mita Sheth"])
rescue Exception => e
  puts "The Exception ==> #{e.inspect}"
  puts "This sentence is printed after extracting all the names."
end
puts "~~~~~~~~~~"
puts
#puts "raise \"Akash Sheth\" ==> #{raise "Akash Sheth"}"
#raise StandardError, "Akash Sheth"

puts "~~~~~~~~~~"
puts
def zen
  begin
    p eval "(40 + 2) / 2 "
    p eval "(40 + 2) \ 2 "
  rescue  SyntaxError => error
    puts error.backtrace
  end
end

zen
puts "~~~~~~~~~~"
puts
def zen
  10.times do
    answer = 42 / 0
  end
end

begin
  puts "Calling zen."
  zen
rescue ZeroDivisionError => error
  puts error
  puts "Rescued from the zen method."
  puts error.backtrace
end

puts "End of main."

puts "~~~~~~~~~~"
puts

p StandardError.ancestors
p ArgumentError.ancestors
p IOError.ancestors

puts "~~~~~~~~~~"
puts

class CustomError < StandardError
end

ce = CustomError.new("This is CustomError.")

begin
  if 1.0 / 0.0
    raise ce
  end
rescue  CustomError => error
  p error.message
end


puts "~~~~~~~~~~"
puts

floor = [["blank", "blank", "blank"],
         ["gummy", "blank", "blank"],
         ["blank", "blank", "blank"]]

attempts = 0
candy = nil
candy = catch(:found) do
	floor.each do |row|
  	row.each do |tile|
      attempts += 1
    	throw(:found, tile) if tile == "jawbreaker" || tile == "gummy"
    end
	end
end
puts candy
puts attempts


puts "~~~~~~~~~~"
puts


puts "~~~~~~~~~~"
puts
puts  "END-------------------------------END"
