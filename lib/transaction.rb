class Transaction

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    fail "insufficient funds" if amount > @balance
    @balance -= amount
  end

  end
