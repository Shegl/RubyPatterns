x = []
y = Array.new
a = ['neo', 'trinity', 'tank', 'zion']

puts a[0]
puts a[2]

puts a.size
puts a.length
a[4] = 'morpheus'
a[6] = 'keymaker'
a << 'mouse' #like array_push in $php or like .push() in ECMA
a << 'agent Smith'

mixed = [6, 44, 12,3,18, 7]
mixed.sort!
mixed.reverse!

a.each do |human|
  puts human unless human.nil?
  puts "NIL" if human.nil?
end

mixed.each do |value|
  puts value unless value.nil?
  puts "NIL" if value.nil?
end
