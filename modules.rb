# Let's learn some Modules :D

module HelloModule
  def say_hello
    puts('Hello out there.')
  end
  def say_hi
    puts('ha ha it will be never workd')
  end
end

class TryIt
  include HelloModule
end

tryit = TryIt.new
tryit.say_hello

module Chatty
  def say_hi
    puts "Hello, my name is #{name}"
    puts "My job title is #{title}"
    puts "I work in the #{department} department"
  end
end

class Employee

  include Chatty
  include HelloModule

  def name
    'Fred'
  end

  def title
    'Janitor'
  end

  def department
    'Maintenance'
  end
end

empl = Employee.new
empl.say_hi
