#

begin
  quotient = 1 / 0 #boooom! Chaka-chaka boom!
rescue
  puts "something bad happened"
end


begin
  quotient = 1 / 0 #boooom! Chaka-chaka boom!
rescue ZeroDivisionError
  puts "I know exactly what heppened: Devided by Zero!"
end

numerator = 1
denominator = 1
raise ZeroDivisionError if denominator == 0
puts numerator / denominator

raise 'You did it wrong' # Что то вроде: throw new Exception("sdasdas"), throw new Error("Class not found");
