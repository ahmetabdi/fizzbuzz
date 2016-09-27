class FizzBuzz
  def self.calculate(value)
    ''.tap do |output|
      output << 'Fizz' if value % 3 == 0
      output << 'Buzz' if value % 5 == 0
    end
  end
end
