# Псевдо синхроное выполнение! Вуаля!


result = 0

thread1 = Thread.new do
  sum = 0
  1.upto(100) { |x|
    sum = sum + x
    sleep 0.00005
  }
  result += 1
  puts "The sum of the first 10 integers is #{sum}"
end

thread2 = Thread.new do
  product = 1
  1.upto(100) {|x| product = product * x
  sleep 0.00005
  }
  result += 1
  puts "The product of the first 10 integers is #{product}"
end

puts "My threads is #{Thread.list}"
puts "And current threads is #{Thread.current} and the main is #{Thread.main}"


#Выполнение основанное на времени, как насчет выполнения основанного на пассе

until result == 2
  thread1.join 0.0005
  thread2.join 0.0005
end

result = 0

thread3 = Thread.fork do
  sum = 0
  1.upto(500) { |x|
    sum += x #just summ this up
    Thread.pass if x == 250
  }
  result += 1
  puts "#{Thread.current}:Th3 is done."
end

thread4 = Thread.fork do
  sum = 0
  1.upto(500) { |x|
    sum += x
    Thread.pass if x == 250
  }
  puts "#{Thread.current}:Th4 is done."
  result += 1
end

until result == 2
  thread3.join
  thread4.join
end
#
# С Паралелизмом вообщем то понятно
# Можно впринципе приминять для практически ничего в рельсах, но для вебсокетов
# Найти применение можно !
