require 'bank'

describe Bank do

  let(:transaction) { double :transaction, credit: true, debit: true }
  let(:statement) { double :statement }
  subject(:bank) { Bank.new(transaction, statement) }

  it "exists" do
    expect(subject)
  end



end
