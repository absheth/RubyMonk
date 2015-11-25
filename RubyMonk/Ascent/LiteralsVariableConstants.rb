puts	"START-------------------------------START"
puts
puts 	"This is literal section."
puts	[:this, :is, :a, :literal, :array].inspect
puts 	"~~~~~~~~~~"
puts
puts	'#{2+3}'


puts 	"~~~~~~~~~~"
puts

def repetitive_array_of_strings
  ["Wow,", "this", "is", "a", "pretty", "long", "list", "of", "words", "and", "it", "took", "me", "a", "long", "time", "to", "type", "because", "of", "all", "those", "darn", "quote", "characters.", "Geez."]
end

def array_of_words_literal
  %w[With this double-u shorthand it wasn't very hard at all to type out this list of words. Heck, I was even able to use double-quotes like "these"!]
end

puts	"repetitive_array_of_strings ==> #{repetitive_array_of_strings.inspect}"
puts
puts 	"array_of_words_literal ==> #{array_of_words_literal}"
puts 	"~~~~~~~~~~"
puts

ranger_ab	=	23..56
puts	"ranger_ab ==> #{ranger_ab}"

start 	=	100
stop	=	200
ranger_as	=	start..stop
puts	"ranger_as ==> #{ranger_as}"

absheth	=	ranger_ab.map { |e| e.to_s }
puts "absheth ==> #{absheth.join(", ")}"
puts 	"~~~~~~~~~~"
puts


def scope_the_scope
	on_the_inside	=	"Akash Sheth is goof boy."
	puts	"From the inside: #{defined?(on_the_inside)}"
end

scope_the_scope
puts	"From the outside: #{defined?(on_the_inside).inspect}"
puts 	"~~~~~~~~~~"
puts

class	Shoe
	@@abs = 12
	def initialize(toes = 1)
		@toes = toes
	end
	
	puts 	"Inside the class ==> #{defined?(@toes).inspect}"
	
	def i_can_has_toes
		puts 	"Inside the instance method ==> #{defined?(@toes).inspect}"	
	end
end
class	Foot
		def initialize(toes = 5)
		@@toes = toes
	end
	
	puts 	"Inside the class ==> #{defined?(@@toes).inspect}"
	
	def i_can_has_toes
		puts 	"Inside the instance method ==> #{defined?(@@toes).inspect}"	
	end
end

sheth_boot	=	Shoe.new(2)
sheth_boot.i_can_has_toes

left	=	Foot.new
left.i_can_has_toes

puts "In the `main` class ==> #{defined?(@toes).inspect}"
puts 	"~~~~~~~~~~"
puts

module Somewhere
	class Hidden
		$everywhere		=	"Global Love."
	end
end

module Somewhere
	class	CloseTo
		def the_heart
			$everywhere
		end
	end
end
puts "Somewhere::CloseTo.new.the_heart ==> #{Somewhere::CloseTo.new.the_heart}"
puts 	"~~~~~~~~~~"
puts
puts "$@ ==> #{$@}"
puts "$* ==> #{$*}"
puts "$~ ==> #{$~}"
puts "$0 ==> #{$0}"
puts "$$ ==> #{$$}"
puts 	"~~~~~~~~~~"
puts
fence = Module.new do 
	def speak
		"I'm trapped."
	end
end

class	Sheep
	def speak
		"Baaaaahhhhh."
	end
end

puts "isha = Sheep.new"
isha = Sheep.new
puts "isha.speak ==> #{isha.speak}"
puts 
puts "isha.extend(fence)"

isha.extend(fence)
puts "isha.speak ==> #{isha.speak}"
puts 	"~~~~~~~~~~"
puts

puts 	"~~~~~~~~~~"
puts

puts 	"~~~~~~~~~~"
puts

puts 	"~~~~~~~~~~"
puts
puts  	"END-------------------------------END"