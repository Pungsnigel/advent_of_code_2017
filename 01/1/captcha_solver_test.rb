require 'minitest/autorun'
require_relative 'captcha_solver'

class TestGame < Minitest::Test
  def test_case_1
    assert_equal(3, CaptchaSolver.calculate_sum('1122'))
  end

  def test_case_2
    assert_equal(4, CaptchaSolver.calculate_sum('1111'))
  end

  def test_case_3
    assert_equal(0, CaptchaSolver.calculate_sum('1234'))
  end

  def test_case_4
    assert_equal(9, CaptchaSolver.calculate_sum('91212129'))
  end
end
