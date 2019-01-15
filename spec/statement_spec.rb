require "rspec"
require "card"
require "statement"

describe Statement do
  it "prints statement" do
  end
  it "card can prints_statement nothing if no transactions" do
    expect(subject.print).to eq nil

  end


end
