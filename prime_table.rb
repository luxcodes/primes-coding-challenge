class PrimeTable
  attr_reader :size

  def initialize(size)
    @size = size
  end

  def is_prime?(n)
    if n == 2
      return true
    elsif n % 2 == 0
      return false
    else
      root = Math.sqrt(n)
      current = 3
      while current <= root
        if n % current == 0
          return false
          current += 2
        else
          return true
        end
      end
      return true
    end
  end
end
