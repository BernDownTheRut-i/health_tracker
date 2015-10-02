class DashboardController < ApplicationController

  def index
    @today = Dashboard.new(Date.today)
    @yesterday = Dashboard.new(Date.today - 1.day)
  end

end
