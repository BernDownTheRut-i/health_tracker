require 'test_helper'

class StepTest < ActiveSupport::TestCase
  test "sum of all steps" do
    assert 4050, Step.sum_steps
  end

  test "number of step entries" do
    assert 4, Step.step_count
  end


end
