module RowCruncher
  def self.calculate_row_sum(row, mode = :difference)
    case mode
    when :difference then difference_between_extremes(row)
    when :first_difference then val_of_first_divisible(row.first, row.drop(1))
    else raise "Mode '#{mode}' not supported"
    end
  end

  def self.difference_between_extremes(row)
    row.max - row.min
  end

  def self.val_of_first_divisible(value1, row)
    row.each do |value2|
      return value1 / value2 if (value1 % value2).zero?
      return value2 / value1 if (value2 % value1).zero?
    end
    val_of_first_divisible(row.first, row.drop(1))
  end

  private_class_method :val_of_first_divisible
  private_class_method :difference_between_extremes
end

solution1 = File.readlines(File.join(__dir__, 'input.txt')).sum do |sequence|
  row = sequence.chomp.split(' ').map(&:to_i)
  RowCruncher.calculate_row_sum(row, :difference)
end

solution2 = File.readlines(File.join(__dir__, 'input.txt')).sum do |sequence|
  row = sequence.chomp.split(' ').map(&:to_i)
  RowCruncher.calculate_row_sum(row, :first_difference)
end

puts "Problem 1: #{solution1}, Problem 2: #{solution2}"
