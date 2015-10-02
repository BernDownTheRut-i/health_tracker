require 'test_helper'

class StepTest < ActiveSupport::TestCase
  test "sum of all steps" do
    assert 4050, Step.sum_steps
  end

  test "number of step entries" do
    assert 4, Step.step_count
  end

  test "number of steps on a given day" do
    assert 2050, Step.steps_on_day("2015-10-01")
  end

  test "number of calories burned by steps on a given day" do
    assert 102.5, Step.steps_calories_today
  end

end
