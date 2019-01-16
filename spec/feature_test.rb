require 'bank'
require 'transaction'
require 'statement'

describe Bank do

  subject(:bank) { Bank.new() }
  let(:header) { "date || credit || debit || balance\n" }

  it 'gives just the header if nothing happened' do
    expect {bank.print_statement}.to output(header).to_stdout
  end

end
