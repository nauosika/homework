class ATM

  attr_reader :balance

  def initialize(money)
    @balance = money
  end

  def withdraw(money)
    @balance = @balance - money
  end

  def deposit(money)
    @balance = @balance + money
  end

  # def balance
  #   @blance
  # end

end

atm = ATM.new(10)

atm.withdraw(5)
puts atm.balance  # 印出 5

atm.deposit(10)
puts atm.balance  # 印出 15