require 'rspec'
require_relative '../string_calculator'

describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns single number for single string number' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns sum of two comma seperated number' do
      expect(StringCalculator.add("1, 5")).to eq(6)
    end

    it 'handle new lines between numbers' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'supports different delimiters' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it 'throw an exception for negative numbers' do
      expect { StringCalculator.add("-1,2,-3") }.
        to raise_error(ArgumentError, "Negative numbers not allowed -1,-3")
    end

    it 'returns sum of two space seperated number' do
      expect(StringCalculator.add("1 5")).to eq(6)
    end
  end
end
