require 'test_helper'

class StepTest < ActiveSupport::TestCase

  test "number of steps on a given day" do
    assert 2050, Step.steps_on_day("2015-10-01")
  end

  test "number of calories burned by steps on a given day" do
    assert 102.5, Step.calories_burned(Date.today)
  end

end
