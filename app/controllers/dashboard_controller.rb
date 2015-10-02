class DashboardController < ApplicationController

  def index
    @dashboard = Dashboard.new(Date.today)
  end

end


# <p>The total number of calories consumed and burned today is:<%=@dashboard.net_calories(Date.today) %> calories</p>
