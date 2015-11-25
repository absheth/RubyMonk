puts  "START-------------------------------START"
puts

puts "lambda {} ==> #{lambda {}}"
puts "Proc.new {} ==> #{Proc.new {}}"
puts "~~~~~~~~~~"
puts

def lambdaReturn
  lambda { return "Akash is returning from inside 'lambda' block."}.call
  return "Akash is returning from outside 'lambda' block."
end

puts "lambdaReturn ==> #{lambdaReturn}"
puts "~~~~~~~~~~"
puts
def procReturn
  Proc.new { return "Akash is returning from inside 'proc' block."}.call
  return "Akash is returning from outside 'proc' block."
end

puts "procReturn ==> #{procReturn}"

puts "~~~~~~~~~~"
puts

puts "Short lambda (->)"
shortLambda = -> (a, b) {a + b}
puts "shortLambda -> (a, b) {a + b}"
puts "shortLambda.call(6, 6) ==> #{shortLambda.call(6, 6)}"
puts

puts "Long Lambda"
longLamda = lambda {|a, b|  a + b}
puts "longLamda = lambda {|a, b|  a + b}"
puts "longLamda.call(7, 7) ==> #{longLamda.call(7, 7)}"
puts "~~~~~~~~~~"
puts

puts "proc method"
shortProc = proc  {|a, b| a + b}
puts "shortProc = proc  {|a, b| a + b}"
puts "shortProc.call(8, 8) ==> #{shortProc.call(8, 8)}"
puts

puts "Proc.new"
longProc = Proc.new {|a, b|  a + b}
puts "longProc = Proc.new {|a, b|  a + b}"
puts "longProc.call(9, 9) ==> #{longProc.call(9, 9)}"


puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts
puts  "END-------------------------------END"
