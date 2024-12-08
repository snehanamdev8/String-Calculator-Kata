# class define
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
  
    numbers = numbers.gsub("\n", ",").gsub(";", ",")
    numbers = numbers.split(",").map(&:to_i)

    negatives = numbers.select { |n| n < 0 }
    raise ArgumentError, "Negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    numbers.sum
  end
end
