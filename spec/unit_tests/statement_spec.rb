require "statement"

describe Statement do
  subject(:statement) { Statement.new }
  let(:header) { "date || credit || debit || balance\n" }

  it "exists" do
    expect(subject)
  end

  it "prints out the statement so user can see in terminal" do
    expect{subject.print}.to output(header).to_stdout
  end

  it "adds statement credit statement" do
    @time = Time.now.strftime('%d/%m/%Y')
    credit_statement = ["#{@time} || 10.00 || || 2\n"]
    expect(statement.add_credit_statement(10, 2)).to eq credit_statement
  end
  it "adds statement debit statement" do
    @time = Time.now.strftime('%d/%m/%Y')
    credit_statement = ["#{@time} || || 10.00 || 2\n"]
    expect(statement.add_debit_statement(10, 2)).to eq credit_statement
  end


end
