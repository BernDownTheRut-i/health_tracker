require 'test_helper'

class CaloricTest < ActiveSupport::TestCase

  test "all calories consumed today" do
    assert_equal 250, Calorie.consumed_today
  end

end
