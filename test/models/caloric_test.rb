require 'test_helper'

class CaloricTest < ActiveSupport::TestCase

  test "all calories consumed today" do
    assert_equal 250, Caloric.consumed(Date.today)
  end

end
