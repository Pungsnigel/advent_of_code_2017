sum = File.readlines(File.join(__dir__, 'input.txt')).sum do |sequence|
  values = sequence.chomp.split(' ').map(&:to_i)
  values.max - values.min
end
puts sum
