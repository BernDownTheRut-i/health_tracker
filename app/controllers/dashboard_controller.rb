class DashboardController < ApplicationController

  def index
    @dashboard = Dashboard.new(Date.today)

    @dashboard_today = Dashboard.net_calories_today
    @calories_today = Caloric.consumed_today
    @steps_today = Step.steps_calories_today
    @exercise_today = Exercise.calories_burned_today
  end

end
