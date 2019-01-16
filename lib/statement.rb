class Statement

  def initialize
    @header = "date || credit || debit || balance"
    @statements = []
  end

  def print
    puts "#{@header}"
    @statements.each { |statement| puts statement}
  end

  def add_credit_statement(amount, balance)
    add_to_statement(credit_statement(amount), balance)
  end

  def add_debit_statement(amount, balance)
    add_to_statement(debit_statement(amount), balance)
  end

  private

  def add_to_statement(statement, balance)
    @statements.push("#{time} || #{statement} || #{balance}\n")
  end

  def debit_statement(amount)
    "|| #{format('%.2f', amount)}"
  end

  def credit_statement(amount)
    "#{format('%.2f', amount)} ||"
  end
  def time
    Time.now.strftime('%d/%m/%Y')
  end

end
