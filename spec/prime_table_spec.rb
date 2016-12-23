require_relative "../prime_table"

describe PrimeTable do
  let(:table) {PrimeTable.new(5)}

  describe "#is_prime?" do
    it "returns true if a number is prime" do
      expect(table.is_prime?(17)).to be(true)
    end
    it "returns false if a number is not prime" do
      expect(table.is_prime?(15)).to be(false)
    end
  end
end
