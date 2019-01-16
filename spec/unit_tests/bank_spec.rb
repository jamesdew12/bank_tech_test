require 'bank'

describe Bank do

  let(:transaction) { double :transaction, credit: true, debit: true }
  let(:statement) { double :statement }
  subject(:bank) { Bank.new(transaction, statement) }

  before(:each) do
    allow(transaction).to receive(:balance).and_return(0)
    allow(statement).to receive(:add_credit_statement)
    allow(statement).to receive(:add_debit_statement)
  end


  it "exists" do
    expect(subject)
  end
  it 'calls credit with the amount described' do
  end

  it 'fails when is not a number' do
   expect { bank.credit('James de winton') }.to raise_error "not a number"
  end
  it 'cant withdraw negative number error' do
    expect { bank.debit(-1) }.to raise_error('cant withdraw negative number ')
  end


end
