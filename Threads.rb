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

until result == 2
  thread1.join 0.0005
  thread2.join 0.0005
end

#
# С Паралелизмом вообщем то понятно
# Можно впринципе приминять для практически ничего в рельсах, но для вебсокетов
# Найти применение можно !
