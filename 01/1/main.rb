require_relative 'captcha_solver'

input = IO.read(File.join(__dir__, 'input.txt'))
puts CaptchaSolver.calculate_sum(input)
