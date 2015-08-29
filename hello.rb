#
# this is bout new hello world
#

def getClass
   named = "not"
   names = ['Tony', 'John', 'Luca', 'Philipe']
   names.each do |name|
     next if not name == 'Luca'
     named = "The traitor is #{name}"
   end
   named
end

puts getClass
