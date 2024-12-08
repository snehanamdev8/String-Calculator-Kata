# class define
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
  
    numbers = numbers.gsub("\n", ",").gsub(";", ",").gsub("//", ",")
    numbers = numbers.split(/[\s,]+/).reject { |item| item.empty? }.map do |n|
      Integer(n) rescue (raise ArgumentError, "Invalid character found: #{n}")
    end

    negatives = numbers.select { |n| n < 0 }
    raise ArgumentError, "Negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    numbers.sum
  end
end
