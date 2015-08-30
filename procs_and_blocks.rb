hello = lambda do |x,y|
  puts 'Hello'
  puts 'I am inside a proc'
  puts "The result is: #{x+y}"
end

hello.call 10,-10

# it's like:
# => object = new Object();
# => object.method = function(x,b) { return x+b; }
# =>
# => object.method(2,2) => 4
#
