require_relative "../prime_table"

describe PrimeTable do
  let(:table) {PrimeTable.new(5)}
  let(:primes) {[2,3,5,7,11]}

  describe "#is_prime?" do
    it "returns true if a number is prime" do
      expect(table.is_prime?(17)).to be(true)
    end
    it "returns false if a number is not prime" do
      expect(table.is_prime?(15)).to be(false)
    end
  end

  describe "#make_primes" do
    it "returns an array of primes" do
      expect(table.make_primes).to eq(primes)
    end
    it "returns an array the same size as input size" do
      expect(table.make_primes.size).to eq(table.size)
    end
  end
end
