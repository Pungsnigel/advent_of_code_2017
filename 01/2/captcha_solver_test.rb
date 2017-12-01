require 'minitest/autorun'
require_relative 'captcha_solver'

class TestGame < Minitest::Test
  def test_case_1
    assert_equal(6, CaptchaSolver.calculate_sum('1212'))
  end

  def test_case_2
    assert_equal(0, CaptchaSolver.calculate_sum('1221'))
  end

  def test_case_3
    assert_equal(4, CaptchaSolver.calculate_sum('123425'))
  end

  def test_case_4
    assert_equal(12, CaptchaSolver.calculate_sum('123123'))
  end

  def test_case_5
    assert_equal(4, CaptchaSolver.calculate_sum('12131415'))
  end
end
