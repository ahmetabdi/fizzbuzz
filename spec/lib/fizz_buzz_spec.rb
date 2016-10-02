RSpec.describe FizzBuzz do
  describe '.calculate' do
    context 'when the value is a multiple of 3' do
      it 'returns Fizz' do
        expect(FizzBuzz.calculate(3)).to eq('Fizz')
      end
    end

    context 'when the value is a multiple of 5' do
      it 'returns Buzz' do
        expect(FizzBuzz.calculate(5)).to eq('Buzz')
      end
    end

    context 'when the value is a multiple of 3 and 5' do
      it 'returns FizzBuzz' do
        expect(FizzBuzz.calculate(15)).to eq('FizzBuzz')
      end
    end
  end
end
