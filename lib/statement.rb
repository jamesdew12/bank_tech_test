require_relative "card.rb"

class Statement
  def initialize
    @header = "date || credit || debit || balance"
    @statement = ""

  end

  def print
      puts "#{@header}"
      puts "#{@statement}".split(",").reverse

  end

end
