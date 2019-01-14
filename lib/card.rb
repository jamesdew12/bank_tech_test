class Card
  attr_reader :balance

  def initialize
    @balance = 0
    @header = "date || credit || debit || balance"
    @statement = ""
  end
  def deposit(amount_deposited)
    if amount_deposited > 0
      @amount_withdrawn = 0
    end
    @balance += amount_deposited
    @amount_deposited = amount_deposited
    add_statement()
  end

  def withdraw(amount_withdrawn)
    if amount_withdrawn > 0
      @amount_deposited = 0
    end
    @balance -= amount_withdrawn
    @amount_withdrawn = amount_withdrawn
    add_statement()
  end
  def time
    Time.now.strftime("%d/%m/%Y %H:%M")

  end
  def add_statement
    @statement.prepend("#{time} || #{@amount_deposited} || #{@amount_withdrawn} || #{@balance}\n")

  end

  def prints_statement
    if @amount_withdrawn == nil
      @amount_withdrawn = 0
    elsif @amount_deposited == nil
        @amount_deposited = 0
    end
    puts "#{@header}"
    puts "#{@statement}"

  end

end
