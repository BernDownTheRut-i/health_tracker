require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase

  test "exercise calories burned" do
    exercise1 = exercises(:one)
    assert_equal 465, exercise1.calories_burned
    exercise2 = exercises(:two)
    assert_equal 450, exercise2.calories_burned
  end

  test "exercise calories burned today" do
    assert_equal 900, Exercise.calories_burned(Date.today)
  end

end
