puts	"START-------------------------------START"
puts

def a
	puts "This is method `a`."
	puts caller
end

def b
	a
end

def c
	b
end

def d
	c
end

d
puts 	"~~~~~~~~~~"
puts

require 'logger'

#file = File.open("absheth.txt","w+")
logger = Logger.new(STDOUT)
logger.formatter = lambda do |severity, datetime, progname, msg|
	"#{datetime}: #{msg} ==> #{severity} --#{progname}\n"	
end
logger.warn("ABSHETH :: This is the warning.")
logger.info("AKSHETH :: This is the information.")
puts 	"~~~~~~~~~~"
puts

puts 	"~~~~~~~~~~"
puts
puts  	"END-------------------------------END"