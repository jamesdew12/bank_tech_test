class Card
  attr_reader :balance

  def initialize
    @balance = 0
    @header = "date || credit || debit || balance"
    @statement = ""
  end
  def deposit(amount_deposited)
    if amount_deposited > 0
    @amount_withdrawn = nil

    end
    @balance += amount_deposited
    @amount_deposited = format('%.2f', amount_deposited)
    add_statement()

  end

  def withdraw(amount_withdrawn)
    if amount_withdrawn > 0
    @amount_deposited = nil
    end
    fail "insufficient funds" if amount_withdrawn > @balance
    @balance -= amount_withdrawn
    @amount_withdrawn = format('%.2f', amount_withdrawn)
    add_statement()

  end
  def time
    Time.now.strftime("%d/%m/%Y ")
  end
  def add_statement
    @statement.prepend("#{time} || #{@amount_deposited} || #{@amount_withdrawn} || #{@balance},")
  end

  def prints_statement
    puts "#{@header}"
    puts "#{@statement}".split(",").reverse

  end

end
