#
# Тут я буду эксперементировать со строками
#

first = 'Mary had'
second = " a little lamb"
poem = first + second
puts "The result string is #{poem}"

puts "The lenght of 'first' is #{first.length}"
puts poem.upcase
puts poem.downcase

poem[0] = 'G'
puts "and with gary #{poem}"

second_char = poem[1]
poem[0] = second_char
puts poem

n = 42
puts "The value of n is #{n}"

city = "Washington"
temp_f = 84
puts "The city is #{city} and the temp is #{5.0/9.0 * (temp_f - 32)} C"

# Неплохая идея приведения форенгейта в цельии 5/9 * (F - 32) супер :D

a_multiline_string = %Q{
  The City is #{city}.
  The temp is #{(5.0 / 9.0 * (temp_f - 32)).round} C
}

puts a_multiline_string

# А вот это интересно Strings не неизменые (not immutable)

string = "hello world"
result_string = string
string[0..3] = 'braz'; # отличная замена strslice str_pos и остального, язык как
# магия

puts ":: #{result_string} ::"


string = "hello world"
result_string = string
string[/[helo]+/] = 'didney'; # Отличная ебанная замена preg_replace in PHP

puts ":: #{result_string} ::"
