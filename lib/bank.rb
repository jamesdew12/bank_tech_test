require './lib/transaction'
require './lib/statement'
class Bank
  attr_reader :transaction, :statement

  def initialize(statement = Statement.new, transaction = Transaction.new)
    @statement = statement
    @transaction = transaction
  end

  def print_statement
    @statement.print
  end
  def credit(amount)
    fail "not a number" if amount.is_a? String
    @transaction.credit(amount)
    @statement.add_credit_statement(amount, balance)
  end
  def debit(amount)
    raise 'cant withdraw negative number ' if amount < 0
    @transaction.debit(amount)
    @statement.add_debit_statement(amount, balance)
  end
  private

  def balance
    format('%.2f', @transaction.balance)
  end
end

# class Card
#   attr_reader :balance
#
#   def initialize
#     @balance = 0
#     @header = "date || credit || debit || balance"
#     @statement = ""
#   end
#   def deposit(amount_deposited)
#     if amount_deposited > 0
#     @amount_withdrawn = nil
#
#     end
#     @balance += amount_deposited
#     @amount_deposited = format('%.2f', amount_deposited)
#     add_statement()
#
#   end
#
#   def withdraw(amount_withdrawn)
#     if amount_withdrawn > 0
#     @amount_deposited = nil
#     end
#     fail "insufficient funds" if amount_withdrawn > @balance
#     @balance -= amount_withdrawn
#     @amount_withdrawn = format('%.2f', amount_withdrawn)
#     add_statement()
#
#   end
#   def time
#     Time.now.strftime("%d/%m/%Y ")
#   end
#
#   def add_statement
#     @statement.prepend("#{time} || #{@amount_deposited} || #{@amount_withdrawn} || #{@balance},")
#   end
#
# end
