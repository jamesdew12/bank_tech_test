require "rspec"
require "card"
require "statement"

describe Card do
  it "card exists" do
    expect(subject)
  end
  it "raises error if card trys to withdraw money on it" do
    subject.balance

  end
  it "card initially has no money on it" do
    expect{ subject.withdraw(500) }.to raise_error "insufficient funds"
  end
  it "card can deposit" do
    subject.deposit(1000)
    expect(subject.balance).to eq 1000
  end
  it "card can withdraw" do
    subject.deposit(1000)
    subject.withdraw(500)
    expect(subject.balance).to eq 500
  end
  it "time exists" do
    expect(subject.time)
  end
  # it "card can prints_statement nothing if no transactions" do
  #   expect(subject.prints_statement).to eq nil
  #
  # end

end
