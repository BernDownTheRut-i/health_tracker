require 'test_helper'

class WeightTest < ActiveSupport::TestCase

  test "weight today" do
    assert_equal 175, Weight.weight_today
  end

end
