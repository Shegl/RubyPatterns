# Observer Patterns
module Subject
  def initialize
    @eventObservers = []
  end

  def addObserver(*observers)
    observers.each do |obs|
      @eventObservers << obs
    end
  end

  def add_block_observer(&obs)
    @eventObservers << obs
  end

  def callObservers
    @eventObservers.each do |obs|
      if obs.class == Proc
        obs.call self
      else
        obs.update self
      end
    end
  end
end

class Employee

  include Subject
  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary

  end

  def salary=(new_salary)
    @salary = new_salary
    callObservers
  end
end

class Payroll
  def update(changed_employee)
    puts "cut a new check for #{changed_employee.name}!"
    puts "his salary is now #{changed_employee.salary}"
  end
end

class AccountManagment
  def update(changed_employee)
    puts "***AccountManagment***"
    puts "May be we need fire: #{changed_employee.name}?"
  end
end

taxes_managment = lambda do |object|
  puts "***TaxesManagment***"
  puts "Not yet billed the taxes: #{object.name}?"
end


payroll = Payroll.new
accMan = AccountManagment.new

fred = Employee.new("Fred Flinstone", "Crane Operator", 30000.0)
fred.addObserver(payroll, accMan)
fred.add_block_observer(&taxes_managment)

#give Fred a raise
fred.salary = 35000.0
