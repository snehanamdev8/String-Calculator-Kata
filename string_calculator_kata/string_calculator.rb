# class define
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
  
    # Clean up the numbers string (replace all delimiters with commas)
    numbers = clean_up_numbers(numbers)

    # Split numbers, convert to integers, and validate
    numbers = process_numbers(numbers)

    # Check for negative numbers and raise an error if any found
    check_for_negatives(numbers)

    # Return the sum of valid numbers
    numbers.sum
  end

  # Replace all delimiters with commas and split by comma
  def self.clean_up_numbers(numbers)
    numbers.gsub(/[\n;]|\A\/\//, ',')
  end

  # Convert the cleaned numbers to integers and handle errors
  def self.process_numbers(numbers)
    numbers.split(/[\s,]+/)
           .reject(&:empty?) # Remove empty strings
           .map { |n| to_integer(n) }
  end

  # Attempt to convert a string to an integer, or raise an error
  def self.to_integer(str)
    Integer(str) rescue (raise ArgumentError, "Invalid character found: #{str}")
  end
  
  # Raise error if any negative numbers are found
  def self.check_for_negatives(numbers)
    negatives = numbers.select { |n| n < 0 }
    raise ArgumentError, "Negative numbers not allowed #{negatives.join(',')}" if negatives.any?
  end
end
