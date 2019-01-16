require 'bank'

describe Bank do

  let(:transaction) { double :transaction, credit: true, debit: true }
  let(:statement) { double :statement }
  subject(:bank) { Bank.new(transaction, statement) }

  it "exists" do
    expect(subject)
  end
  it 'calls credit with the amount described' do
  amount = 10
  expect(transaction).to receive(:credit).with(amount)
  expect(statement).to receive(:add_credit_line).with(amount, '0.00')
  bank.credit(amount)
  end



end
