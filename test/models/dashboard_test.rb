require 'test_helper'

class DashboardTest < ActiveSupport::TestCase

  test "total calories consumed or burned today" do
    assert_equal (250 - 75 - 900), Dashboard.net_calories_today
  end

  test "total calories consumed or burned on given day" do
    assert_equal (250 - 75 - 900), Dashboard.net_calories(Date.today)
  end

end
