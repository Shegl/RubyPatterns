#
# Тут попробуем использовать паттерн стратегии сортировки хеша по, например ID внутри хеша
#
array = [{id: 5, name: 'lol'}, {id: 8, name: 'shegl'}, {id: 10, name: 'omfg'}, {id: 9, name: 'experience'}]

HASH_SORT_ID = lambda do |a, b|
  a[:id] <=> b[:id]
end

HASH_SORT_NAME = lambda do |a, b|
  a[:name] <=> b[:name]
end

HASH_SORT_NAME_LENGTH = lambda do |a, b|
  a[:name].length <=> b[:name].length
end

puts array
puts "*** --- ***"
puts array.sort &HASH_SORT_ID
puts "*** --- ***"
puts array.sort &HASH_SORT_NAME
puts "*** --- ***"
puts array.sort &HASH_SORT_NAME_LENGTH
