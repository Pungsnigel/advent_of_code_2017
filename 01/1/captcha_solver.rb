module CaptchaSolver
  def self.calculate_sum(input)
    digits = input.split('').map(&:to_i)
    sum = 0
    digits.each_with_index do |digit, index|
      sum += digit if digit == digits[(index + 1) % digits.size]
    end
    sum
  end
end
