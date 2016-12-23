require_relative "../prime_table"

describe PrimeTable do
  before do
    srand(5)
  end
  let(:table) {PrimeTable.new(rand(5))}

  describe "#is_prime?" do
    it "returns true if a number is prime" do
      expect(table.is_prime?(17)).to be(true)
    end
    it "returns false if a number is not prime" do
      expect(table.is_prime?(15)).to be(false)
    end
  end

  describe "#make_primes" do
    before do
      srand(5)
    end
    it "returns an array of primes" do
      table.make_primes.each do |n|
        expect(table.is_prime?(n)).to be(true)
      end
    end
    it "returns an array the same size as input size" do
      expect(table.make_primes.size).to eq(table.size)
    end
  end

  describe "#print_table" do
    before do
      srand(5)
    end
    it "prints correct values to console" do
      prime_array = table.make_primes
      expect(table.print_table.first).to eq(prime_array.first*prime_array.first)
      expect(table.print_table.last).to eq(prime_array.last*prime_array.last)
    end
  end
end
