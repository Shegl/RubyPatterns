# Observer Patterns
class Employee
  attr_reader :name, :title, :salary
  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @eventObservers = []
  end

  def addObserver(*observers)
    observers.each do |obs|
      @eventObservers << obs
    end
  end

  def callObservers
    @eventObservers.each do |obs|
      obs.update self
    end
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

payroll = Payroll.new
accMan = AccountManagment.new

fred = Employee.new("Fred Flinstone", "Crane Operator", 30000.0)
fred.addObserver(payroll, accMan)
#give Fred a raise
fred.salary = 35000.0
