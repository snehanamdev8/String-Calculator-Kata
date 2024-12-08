# class define
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
  
    numbers = numbers.gsub("\n", ",").gsub(";", ",")
    numbers.split(",").map(&:to_i).sum
  end
end
