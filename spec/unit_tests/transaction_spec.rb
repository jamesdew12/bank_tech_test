require 'transaction'

describe Transaction do
    it "transaction class exists" do
      expect(subject)
    end
    it "balance is intially 0" do
      expect(subject.balance).to eq 0
    end
    it "credit function" do
      subject.credit(1000)
      expect(subject.balance).to eq 1000
    end
    it "debit function" do
      subject.credit(1000)
      subject.debit(550)
      expect(subject.balance).to eq 450
    end
    it "raises error for insufficient funds" do
      expect{subject.debit(200)}.to raise_error "insufficient funds"
    end
end
