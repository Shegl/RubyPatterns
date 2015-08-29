class BankAccount
  attr_accessor :balance
  def initialize( owner )
    @owner = owner
    @balance = 0
  end

  def deposite( amount )
    @balance += amount
  end

  def withdraw( amount )
    @balance -= amount
  end

  def who_am_i
    puts "hello im #{self} and my name is #{@owner}"
  end
  #def balance #Depricated since attr_accessor
  #  @balance
  #end

  #def balance= ( amount ) #Depricated since attr_accessor
  #  @balance = amount
  #end
end

class InterestBearingAccount < BankAccount

  def initialize (owner, rate)
    super owner
    @rate = rate
  end

  def deposite_interest
    @balance += @rate * @balance
  end

  def deposite(amount, add = 0)
    super amount
    super add if add > 0
  end

  def add_big_sum(*amounts)
    summ = 0
    prev_n = 0
    amounts.each do |n|
      summ += n * prev_n if prev_n != 0
      prev_n = n
    end
    @balance += summ
  end
end

russHolder = BankAccount.new "Scheglakov"
russHolder.deposite 200
russHolder.withdraw 300
russHolder.deposite 500
russHolder.balance = 1337

newRuss = InterestBearingAccount.new "Alexander", 2
newRuss.deposite 100
newRuss.deposite_interest
newRuss.deposite 100
newRuss.deposite 100, 100
newRuss.add_big_sum 2,3,4,5,100,200

puts russHolder.balance
puts "Eazy Life with Ruby"
puts russHolder.who_am_i

puts "And newRuss-#{newRuss.who_am_i} balance is: #{newRuss.balance}"
