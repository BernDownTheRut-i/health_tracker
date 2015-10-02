class DashboardController < ApplicationController
  def index
    @dashboard = Dashboard.new(Date.today)
  end

end
