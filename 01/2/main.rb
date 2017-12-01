require_relative 'captcha_solver'

input = IO.read('input.txt')
puts CaptchaSolver.calculate_sum(input)
