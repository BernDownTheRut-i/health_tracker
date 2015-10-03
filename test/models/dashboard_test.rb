require 'test_helper'

class DashboardTest < ActiveSupport::TestCase

  test "total calories consumed or burned on given day" do
    dashboard = Dashboard.new(Date.today)
    assert_equal -727, dashboard.net_calories.to_i
  end

end
