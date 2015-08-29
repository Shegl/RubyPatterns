# Regular Expressions

patt_old = /old/
patt_russ = /Russ|Russel/
patt_anything = /.*/

puts patt_old =~ 'this old house' # 5
puts patt_russ =~ 'Fred' # nil
puts patt_anything =~ 'any old string'

patt_only_ab = /\w{5}/
puts patt_only_ab =~ "!hellooz" # true
puts patt_only_ab =~ "world!!" # false
