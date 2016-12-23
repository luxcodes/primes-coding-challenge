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

  def make_primes
    primes = []
    starting_val = 2
    counter = 0
    while counter < @size
      current_val = 2
      while current_val <= starting_val
        break if starting_val % current_val == 0
        current_val += 1
      end
      if current_val == starting_val
        primes << starting_val
        counter += 1
      end
      starting_val += 1
    end
    primes
  end
end
