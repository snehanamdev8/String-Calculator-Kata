require 'rspec'
require_relative '../string_calculator'

describe StringCalculator do
  describe '.add' do
    context 'when input is empty' do
      it 'returns 0 for an empty string' do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context 'when input is a single number' do
      it 'returns the number itself' do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context 'when input contains multiple numbers' do
      it 'returns sum of comma-separated numbers' do
        expect(StringCalculator.add("1,5")).to eq(6)
      end

      it 'returns sum of space-separated numbers' do
        expect(StringCalculator.add("1 5")).to eq(6)
      end

      it 'handles new lines between numbers' do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end

      it 'supports different delimiters' do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end

    context 'when input contains negative numbers' do
      it 'throws an exception for negative numbers' do
        expect { StringCalculator.add("-1,2,-3") }.
          to raise_error(ArgumentError, "Negative numbers not allowed -1,-3")
      end
    end

    context 'when input contains invalid characters' do
      it 'throws an error when string contains invalid characters' do
        expect { StringCalculator.add("1, 2, a, 3!") }.to raise_error(ArgumentError, "Invalid character found: a")
      end
    end
  end
end
