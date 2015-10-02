require 'test_helper'

class DashboardTest < ActiveSupport::TestCase

  test "test total calories consumed or burned today" do
    assert_equal (250 - 75 - 900), Dashboard.net_calories_today
  end

end
