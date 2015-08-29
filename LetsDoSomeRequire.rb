#
require './BankAccount'

class Portfolio
  def initialize
    nbank = BankAccount.new "Hello Motherfucker"
    nbank.who_am_i
  end
end

port = Portfolio.new
