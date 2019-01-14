require "rspec"
require "card"

describe Card do
  it "card exists" do
    expect(subject)
  end
  it "card initially has no money on it" do
    expect(subject.balance).to eq 0
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

end
